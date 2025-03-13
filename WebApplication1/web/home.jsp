<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PlaySoccerNow - Soccer Field Booking</title>
        <link rel="stylesheet" href="css/styleindex.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    </head>
    <body>
        <!-- Header -->
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
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About Us</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </nav>
                <div class="user-actions">
                    <c:choose>
                        <c:when test="${empty sessionScope.user}">
                            <a href="login.jsp" class="btn btn-outline">Login</a>
                            <a href="register.jsp" class="btn btn-primary">Register</a>
                        </c:when>
                        <c:otherwise>
                            <div class="user-menu">
                                <span>${sessionScope.user.username} <i class="fas fa-chevron-down"></i></span>
                                <div class="dropdown">
                                    <a href="profile.jsp"><i class="fas fa-user"></i> My Profile</a>
                                    <a href="bookings.jsp"><i class="fas fa-calendar-check"></i> My Bookings</a>
                                    <c:if test="${sessionScope.user.role eq 'FIELD_OWNER'}">
                                        <a href="revenue.jsp"><i class="fas fa-chart-line"></i> Revenue</a>
                                    </c:if>
                                    <c:if test="${sessionScope.user.role eq 'ADMIN'}">
                                        <a href="admin/dashboard.jsp"><i class="fas fa-tachometer-alt"></i> Admin Dashboard</a>
                                    </c:if>
                                    <a href="logout" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </header>

        <!-- Hero Section -->
        <section class="hero">
            <div class="container">
                <div class="hero-content">
                    <h1>Find and Book Soccer Fields</h1>
                    <p>The easiest way to find available soccer fields near you</p>
                    <div class="search-container">
                        <form action="search" method="get">
                            <div class="search-box">
                                <input type="text" name="location" placeholder="Enter your location" value="${keyword}">
                                <input type=hidden name="action" value="search">
                                <!--<input type="date" name="date" value="${java.time.LocalDate.now()}" min="${java.time.LocalDate.now()}"> -->
                                <button type="submit" class="btn btn-primary">Search</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- Featured Fields Section -->
        <section class="featured-fields">
            <div class="container">
                <h2>Featured Fields</h2>

                <c:if test="${empty list}">
                    <p>No fields available at the moment.</p>
                </c:if>

                <div class="field-grid">
                    <c:forEach items="${list}" var="field">
                        <div class="field-card">
                            <div class="field-image">
                                <img src="${not empty field.imageURL ? field.imageURL : 'default-image.jpg'}" 
                                     alt="${field.fieldName}">
                                <div class="field-rating">
                                    <i class="fas fa-star"></i> 
                                    <c:choose>
                                        <c:when test="${not empty field.rating}">${field.rating}</c:when>
                                        <c:otherwise>N/A</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            <div class="field-details">
                                <h3>${field.fieldName}</h3>
                                <p class="location">
                                    <i class="fas fa-map-marker-alt"></i> ${field.location}
                                </p>
                                <p class="field-info">
                                    <span><i class="fas fa-dollar-sign"></i> 
                                        <c:choose>
                                            <c:when test="${not empty field.price}">${field.price}/hour</c:when>
                                            <c:otherwise>Contact for price</c:otherwise>
                                        </c:choose>
                                    </span>
                                </p>
                                <a href="field-details?id=${field.fieldID}" class="btn btn-secondary">View Details</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>



        <!-- How It Works Section -->
        <section class="how-it-works">
            <div class="container">
                <h2>How It Works</h2>
                <div class="steps">
                    <div class="step">
                        <div class="step-icon">
                            <i class="fas fa-search"></i>
                        </div>
                        <h3>Search</h3>
                        <p>Find soccer fields near you based on location, size, and availability</p>
                    </div>
                    <div class="step">
                        <div class="step-icon">
                            <i class="fas fa-calendar-alt"></i>
                        </div>
                        <h3>Book</h3>
                        <p>Choose your preferred time slot and make a booking</p>
                    </div>
                    <div class="step">
                        <div class="step-icon">
                            <i class="fas fa-futbol"></i>
                        </div>
                        <h3>Play</h3>
                        <p>Enjoy your game at the booked field</p>
                    </div>
                    <div class="step">
                        <div class="step-icon">
                            <i class="fas fa-star"></i>
                        </div>
                        <h3>Review</h3>
                        <p>Share your experience by rating and reviewing the field</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials Section -->
        <section class="testimonials">
            <div class="container">
                <h2>What Our Users Say</h2>
                <div class="testimonial-slider">
                    <c:forEach items="${testimonials}" var="testimonial">
                        <div class="testimonial">
                            <div class="testimonial-content">
                                <p>"${testimonial.content}"</p>
                            </div>
                            <div class="testimonial-user">
                                <img src="${testimonial.userImage}" alt="${testimonial.userName}">
                                <div>
                                    <h4>${testimonial.userName}</h4>
                                    <p>${testimonial.userType}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="cta">
            <div class="container">
                <div class="cta-content">
                    <h2>Own a Soccer Field?</h2>
                    <p>Join our platform and start earning by renting out your field</p>
                    <a href="owner-register.jsp" class="btn btn-primary">Register as Field Owner</a>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="footer-content">
                    <div class="footer-logo">
                        <img src="images/logo.png" alt="PlaySoccerNow Logo">
                        <span>PlaySoccerNow</span>
                        <p>The easiest way to find and book soccer fields.</p>
                    </div>
                    <div class="footer-links">
                        <h3>Quick Links</h3>
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="contact.jsp">Contact</a></li>
                        </ul>
                    </div>
                    <div class="footer-links">
                        <h3>For Users</h3>
                        <ul>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="register.jsp">Register</a></li>
                            <li><a href="how-to-book.jsp">How to Book</a></li>
                        </ul>
                    </div>
                    <div class="footer-links">
                        <h3>For Field Owners</h3>
                        <ul>
                            <li><a href="owner-register.jsp">Register as Owner</a></li>
                            <li><a href="owner-guide.jsp">Owner Guide</a></li>
                        </ul>
                    </div>
                    <div class="footer-contact">
                        <h3>Contact Us</h3>
                        <p><i class="fas fa-envelope"></i> info@playsoccernow.com</p>
                        <p><i class="fas fa-phone"></i> +1 (123) 456-7890</p>
                        <div class="social-links">
                            <a href="https://www.facebook.com/su.pin.3950/"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <p>&copy; 2025 PlaySoccerNow. All rights reserved.</p>
                    <div class="footer-bottom-links">
                        <a href="terms.jsp">Terms of Service</a>
                        <a href="privacy.jsp">Privacy Policy</a>
                    </div>
                </div>
            </div>
        </footer>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>