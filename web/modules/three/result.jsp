<%@ include file="/header.jsp" %>

<%-- Gloval variables for ease of use --%>
<%
    String[] courses = request.getParameterValues("courses");
    String[] fees = request.getParameterValues("fees");
    String empStatus = request.getParameter("empStatus");
%>

<%-- Cost per course based on status --%>
<%!
    private int courseCost = 0;
%>

<%-- Total cost owed --%>
<%!
    private int totalCost = 0;
%>

<%-- Determine cost per course based on user's status --%>
<%
    switch (empStatus) {
        case "jhu-employee":
            courseCost = 850;
            break;
        case "jhu-student":
            courseCost = 1000;
            break;
        case "other":
            courseCost = 1350;
            break;
    }
%>

<div class="container">
    <div class="row text-center">
        <img src="${pageContext.request.contextPath}/assets/images/jhu.logo.small.horizontal.blue.png"
             alt="JHU Logo: Small" width="400">
        <h3>1st Annual Software Development Seminar</h3>
    </div>
    <div class="row">
        <div class="col-md-offset-2 col-md-10">
            <div class="col-md-6">
                <p>December 12-13, 2016</p>
            </div>
            <div class="col-md-6">
                <address>
                    JHU APL location<br/>
                    7490 Sanner Rd<br/>
                    Laurel, MD 20723<br/>
                    Phone: (123) 456-7890<br/>
                    <a href="mailto:#">sw-dev-seminar@jhu.edu</a>
                </address>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-offset-2 col-md-10">
            <h3>Thanks!</h3>
            <p><%= request.getParameter("name") %> you are registered as a <%= empStatus %>.</p>
            <p>Your e-mail confirmation will be sent to <%= request.getParameter("email") %>. You should receive
                your tickets, along with your shirt size of <%= request.getParameter("shirt-size")%> in the mail at the
                address
                provided below.</p>
            <p>Please remember that your selected payment option was <%= request.getParameter("payment") %>. You
                will have until December 5, 2016 to pay your bill.</p>
            <address>
                <%= request.getParameter("address") %><br/>
                <%= request.getParameter("city") %>, <%= request.getParameter("state") %> <%=
            request.getParameter("zipcode") %><br/>
                Phone: <%= request.getParameter("phone") %>
            </address>

            <%-- Output an itemized list of costs/fees owed by the user --%>
            <h3>Itemized Costs</h3>
            <table class="table">
                <thead>
                <tr>
                    <th width="100">Type</th>
                    <th>Item</th>
                    <th>Cost</th>
                </tr>
                </thead>
                <tbody>
                <%-- Print courses selected; Add each course to the total bill --%>
                <%
                    for (int i = 0; i < courses.length; i++) {
                        totalCost += courseCost;
                %>
                <tr>
                    <td>Course</td>
                    <td><%= courses[i] %></td>
                    <td>$<%= courseCost %></td>
                </tr>
                <%
                    }
                %>
                <%-- Print extra fees; Add each fee to the total bill --%>
                <%
                    for (int i = 0; i < fees.length; i++) {
                        String fee = fees[i];
                        int feeCost = 0;
                %>
                <tr>
                    <td>Fee</td>
                    <td><%= fee %></td>
                    <td>
                        <%
                            if (fee.equals("hotel")) {
                                feeCost = 185;
                            } else if (fee.equals("parking")) {
                                feeCost = 10;
                            }

                            totalCost += feeCost;
                        %>
                        $<%= feeCost %>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="2" align="right">Total billing amount:</td>
                    <td>$<%= totalCost %></td>
                </tr>
                </tfoot>
            </table>
            <p></p>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>