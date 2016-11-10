<%@ include file="/header.jsp" %>

<%@page import="java.util.*"%>

<jsp:useBean id="user" type="classes.user.User" scope="session" />

<%-- Gloval variables for ease of use--%>
<%
    String name = user.getName();
    String email = user.getEmail();
    String[] courses = user.getCourses();
    String[] fees = user.getFees();
    String empStatus = user.getEmpStatus();
%>

<%-- Cost per course based on status --%>
<%!
    private int courseCost = 0;
%>

<%-- Total cost owed --%>
<%!
    private int totalCost = 0;
%>

<%-- Determine cost per course based on user's status--%>
<%
    if (empStatus == "jhu-employee") {
        courseCost = 850;
    } else if (empStatus == "jhu-student") {
        courseCost = 1000;
    } else if (empStatus == "other") {
        courseCost = 1350;
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
            <p><%= name %> you are registered as a <%= empStatus %>.</p>

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
                    String fee = "";

                    for (int i = 0; i < fees.length; i++) {
                        fee = fees[i];
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
                <tr>
                    <td colspan="3">
                        <a href="index.jsp" title="Edit Information">
                            <button class="btn btn-default">Edit Information/Add More Courses</button>
                        </a>
                        <a href="confirmRegister" title="Confirm Registration">
                            <button class="btn btn-default">Confirm Registration</button>
                        </a>
                    </td>
                </tr>
                </tfoot>
            </table>
            <p></p>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>