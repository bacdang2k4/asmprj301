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
        
        <jsp:include page="header.jsp" />
        
        <link rel="stylesheet" href="css/styleindex.css">
        <!-- Hero Section -->
        <section class="hero">
            <div class="container">
                <div class="hero-content">
                    <h1>Find and Book Soccer Fields</h1>
                    <p>The easiest way to find available soccer fields near you</p>
                    <div class="search-container">
                        <form action="./home" method="get">
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
                                <a href="home?id=${field.fieldID}&action=details" class="btn btn-secondary">View Details</a>
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
        <jsp:include page="footer.jsp" />



        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>