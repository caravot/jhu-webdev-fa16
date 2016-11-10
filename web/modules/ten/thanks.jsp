<%@ include file="/header.jsp" %>

<%@page import="java.util.*"%>

<jsp:useBean id="user" type="classes.user.User" scope="session" />

<%-- Gloval variables for ease of use--%>
<%
    String name = user.getName();
    String email = user.getEmail();
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
            <p><%= name %>, your e-mail confirmation will be sent to <%= email %>.</p>
        </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>