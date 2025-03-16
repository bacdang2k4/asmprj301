<%-- 
    Document   : header
    Created on : Mar 13, 2025, 10:26:36 PM
    Author     : bacda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/styleindex.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    </head>
    <body>
        <header>
            <div class="container">
                <div class="logo">
                    <a href="index.jsp">
                        <img style="width: 150px; height: 95px"src="images/logo-removebg-preview.png" alt="PlaySoccerNow Logo">
                        <span>PlaySoccerNow</span>
                    </a>
                </div>
                <nav>
                    <ul>
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="about.jsp">About Us</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </nav>
                <div class="user-actions">

                    <c:choose>
                        <c:when test="${empty sessionScope.usersession}">
                            <a href="login.jsp" class="btn btn-outline">Login</a>

                        </c:when>
                        <c:otherwise>
                            <div class="user-menu">
                                <span>${sessionScope.usersession.userName} <i class="fas fa-chevron-down"></i></span>
                                <div class="dropdown">
                                    <a href="profile.jsp"><i class="fas fa-user"></i> My Profile</a>
                                    <a href="bookings.jsp"><i class="fas fa-calendar-check"></i> My Bookings</a>
                                    <c:if test="${sessionScope.usersession.role eq 'Admin'}">
                                        <a href="revenue.jsp"><i class="fas fa-chart-line"></i> Revenue</a>
                                        <a href="admin/dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Admin Dashboard</a>
                                    </c:if>
                                    <a href="home?action=logout" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>

                </div>
            </div>
        </header>
    </body>
</html>
