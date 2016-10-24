<%@ include file="/header.jsp" %>

<%
    // get attributes from the request
    String message = (String) request.getAttribute("message");

    // handle null values
    if (message == null) {
        message = "";
    }
%>

<%-- Display error message to user --%>
<% if (message != "") { %>
    <div class="alert alert-danger alert-dismissable">
        <ul class="msg"><li><%= message %></li></ul>
    </div>
<% } %>

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
    <form action="addSeminarRegister" method="post" class="form-horizontal top15" name="mod3">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
                <input type="name" class="form-control" name="name" id="name" value="">
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" name="email" id="email" value="">
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Courses</label>
            <div class="col-sm-10">
                <select multiple class="form-control" name="courses">
                    <option value="A1 - J2EE Design Patterns">A1 - J2EE Design Patterns</option>
                    <option value="A3 - Service Oriented Architectures">A3 - Service Oriented Architectures</option>
                    <option value="A4 - Web Services">A4 - Web Services</option>
                    <option value="A4 - Enterprise Service Bus">A4 - Enterprise Service Bus</option>
                    <option value="A5 - Web Services Security">A5 - Web Services Security</option>
                    <option value="A6 - Secure Messaging">A6 - Secure Messaging</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Employment Status</label>
            <div class="col-sm-10">
                <div class="radio">
                    <label class="radio-inline">
                        <input type="radio" name="empStatus" id="empStatus1" value="jhu-employee">
                        JHU Employee
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="empStatus" id="empStatus2" value="jhu-student">
                        JHU Student
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="empStatus" id="empStatus3" value="speaker">
                        Speaker
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="empStatus" id="empStatus4" value="other">
                        Other
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Additional Fees/Charges</label>
            <div class="col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="fees" value="hotel">
                        Hotel Accommodation (Conference Guest Special Fee - Parking Included)
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="fees" value="parking">
                        Hotel Parking
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
                <button type="reset" class="btn btn-default">Reset</button>
            </div>
        </div>
    </form>
</div>

<%@ include file="/footer.jsp" %>