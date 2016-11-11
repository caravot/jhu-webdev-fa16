<%@ include file="/header.jsp" %>

<%@page import="java.util.*" %>

<jsp:useBean id="user" type="classes.user.User" scope="session"/>

<%-- Gloval variables for ease of use--%>
<%
    String name = user.getName();
    String empStatus = user.getEmpStatus();
    int totalCost = user.getTotalCost();

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

<form action="confirmRegister" method="post" class="form-horizontal top15" name="mod3">
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
                <p><%= name %> you are registered as a <%= empStatus %>.</p>
                <p>Your total cost for the seminar is: $<%= totalCost %>.</p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Credit Card Type</label>
            <div class="col-sm-10">
                <div class="radio">
                    <label class="radio-inline">
                        <input type="radio" name="card-type" id="card-type1" value="visa"> VISA
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="card-type" id="card-type2" value="mastercard"> Master Card
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="card-type" id="card-type3" value="discover"> Discover
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="card-number" class="col-sm-2 control-label">Credit Card Number</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="card-number" id="card-number" value="">
            </div>
        </div>
        <div class="form-group">
            <label for="card-date" class="col-sm-2 control-label">Credit Card Expiration Date</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="card-date" id="card-date" value="">
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-2 col-md-10">
                <a href="index.jsp" title="Edit Information">
                    <button class="btn btn-default">Edit Information/Add More Courses</button>
                </a>
                <button type="submit" class="btn btn-default">Confirm Registration</button>
            </div>
        </div>
    </div>
</form>

<%@ include file="/footer.jsp" %>