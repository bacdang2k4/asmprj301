<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Field Details - PlaySoccerNow</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Arial', sans-serif;
            }

            body {
                background-color: #f5f5f5;
            }

            .navbar {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 15px 50px;
                background-color: white;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            }

            .logo {
                display: flex;
                align-items: center;
                gap: 10px;
                text-decoration: none;
            }

            .logo img {
                height: 50px;
            }

            .logo h1 {
                color: #4CAF50;
                font-size: 24px;
            }

            .nav-links {
                display: flex;
                gap: 30px;
            }

            .nav-links a {
                text-decoration: none;
                color: #333;
                font-weight: 500;
            }

            .auth-buttons {
                display: flex;
                gap: 15px;
            }

            .btn {
                padding: 8px 20px;
                border-radius: 5px;
                font-weight: 500;
                cursor: pointer;
                text-decoration: none;
            }

            .btn-outline {
                border: 1px solid #4CAF50;
                color: #4CAF50;
                background: transparent;
            }

            .btn-primary {
                background-color: #4CAF50;
                color: white;
                border: none;
            }

            .container {
                max-width: 1200px;
                margin: 30px auto;
                padding: 0 20px;
            }

            .field-details {
                background-color: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            }

            .field-images {
                position: relative;
                height: 400px;
                overflow: hidden;
            }

            .main-image {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }

            .favorite-btn {
                position: absolute;
                top: 20px;
                right: 20px;
                background-color: rgba(255,255,255,0.8);
                width: 40px;
                height: 40px;
                border-radius: 50%;
                display: flex;
                justify-content: center;
                align-items: center;
                cursor: pointer;
                font-size: 20px;
                color: #FFD700;
            }

            .field-info {
                padding: 30px;
            }

            .field-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            .field-title h2 {
                font-size: 28px;
                margin-bottom: 10px;
            }

            .field-location {
                display: flex;
                align-items: center;
                color: #666;
            }

            .field-location i {
                margin-right: 5px;
            }

            .field-price {
                font-size: 24px;
                font-weight: bold;
                color: #4CAF50;
            }

            .field-details-container {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 30px;
                margin-bottom: 30px;
            }

            .detail-column h3 {
                margin-bottom: 15px;
                font-size: 20px;
                border-bottom: 2px solid #4CAF50;
                padding-bottom: 5px;
                display: inline-block;
            }

            .detail-item {
                margin-bottom: 15px;
            }

            .detail-item strong {
                display: block;
                margin-bottom: 5px;
                color: #333;
            }

            .detail-item p {
                color: #666;
                line-height: 1.6;
            }

            .amenities-list {
                display: flex;
                flex-wrap: wrap;
                gap: 10px;
                margin-top: 10px;
            }

            .amenity-tag {
                background-color: #e8f5e9;
                color: #4CAF50;
                padding: 5px 12px;
                border-radius: 20px;
                font-size: 14px;
            }

            .booking-container {
                background-color: #f9f9f9;
                padding: 20px;
                border-radius: 10px;
                margin-top: 20px;
            }

            .booking-header {
                margin-bottom: 15px;
            }

            .time-slots {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
                gap: 10px;
                margin-bottom: 20px;
            }

            .time-slot {
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
                text-align: center;
                cursor: pointer;
            }

            .time-slot.available {
                background-color: #e8f5e9;
                color: #4CAF50;
            }

            .time-slot.booked {
                background-color: #eeeeee;
                color: #999;
                cursor: not-allowed;
            }

            .book-now-btn {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 12px 25px;
                border-radius: 5px;
                font-size: 16px;
                font-weight: 500;
                cursor: pointer;
                width: 100%;
            }

            .status-badge {
                display: inline-block;
                padding: 5px 12px;
                border-radius: 20px;
                font-size: 14px;
                font-weight: 500;
                margin-bottom: 10px;
            }

            .status-available {
                background-color: #e8f5e9;
                color: #4CAF50;
            }

            .status-maintenance {
                background-color: #fff3e0;
                color: #ff9800;
            }

            .status-booked {
                background-color: #ffebee;
                color: #f44336;
            }

            footer {
                background-color: #333;
                color: white;
                padding: 30px 0;
                margin-top: 50px;
            }

            .footer-content {
                max-width: 1200px;
                margin: 0 auto;
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 30px;
                padding: 0 20px;
            }

            .footer-section h3 {
                font-size: 18px;
                margin-bottom: 15px;
            }

            .footer-section p {
                margin-bottom: 10px;
                color: #ccc;
            }

            .footer-bottom {
                max-width: 1200px;
                margin: 20px auto 0;
                padding-top: 20px;
                border-top: 1px solid #444;
                text-align: center;
                color: #ccc;
                font-size: 14px;
            }

            @media (max-width: 768px) {
                .navbar {
                    padding: 15px 20px;
                    flex-direction: column;
                    gap: 15px;
                }

                .field-details-container {
                    grid-template-columns: 1fr;
                }

                .footer-content {
                    grid-template-columns: 1fr;
                }
            }
        </style>
    </head>
    <body>
        <!-- Header -->
        
        <jsp:include page="header.jsp" />


        <!-- Main Content -->
        <div class="container">
            <div class="field-details">
                <!-- Field Images -->
                <div class="field-images">
                    <img id="field-image" src="${detail.imageURL}" alt="Soccer Field" class="main-image">
                    <div class="favorite-btn">
                        <i class="fas fa-star"></i>
                    </div>
                </div>

                <!-- Field Information -->
                <div class="field-info">
                    <div class="field-header">
                        <div class="field-title">
                            
                            <h2 id="field-name">${detail.fieldName}</h2>
                            <div class="field-location">
                                <i class="fas fa-map-marker-alt"></i>
                                <span id="field-location">Location</span>
                            </div>
                        </div>
                        <div class="field-price">
                            <span id="field-price">0</span>/hour
                        </div>
                    </div>

                    <div class="field-details-container">
                        <div class="detail-column">
                            <h3>Field Details</h3>
                            <div class="detail-item">
                                <strong>Field Size</strong>
                                <p id="field-size">Standard</p>
                            </div>
                            <div class="detail-item">
                                <strong>Description</strong>
                                <p id="field-description">This is a placeholder description for the soccer field.</p>
                            </div>
                        </div>

                        <div class="detail-column">
                            <h3>Amenities</h3>
                            <div class="detail-item">
                                <div id="amenities-list" class="amenities-list">
                                    <!-- Amenities will be added dynamically -->
                                </div>
                            </div>
                            <div class="detail-item">
                                <strong>Added</strong>
                                <p id="field-created">January 1, 2025</p>
                            </div>
                            <div class="detail-item">
                                <strong>Last Updated</strong>
                                <p id="field-updated">March 13, 2025</p>
                            </div>
                        </div>
                    </div>

                    <!-- Booking Section -->
                    <div class="booking-container">
                        
                        <a href="booking.jsp" class="btn btn-outline">Book Now</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <jsp:include page="footer.jsp" />

        <script>
        // Sample data - This would be replaced with actual data from your database
        const fieldData = {
            FieldID: "F001",
            FieldName: "Sân A",
            Description: "A premium soccer field with natural grass and excellent facilities. Perfect for both casual games and competitive matches. Regularly maintained to ensure the best playing experience.",
            FieldSize: "Standard (105m x 68m)",
            Location: "Hà Nội",
            ImageURL: "/api/placeholder/1200/400",
            Price: 200000.0000,
            Amenities: "Changing rooms, Showers, Floodlights, Parking, Water dispenser, Equipment rental",
            FieldStatus: "Available",
            CreatedAt: "2025-01-15T10:30:00",
            UpdatedAt: "2025-03-10T14:45:00"
        };

        // Function to load field data
        function loadFieldData() {
            // Set field details
            document.getElementById("field-name").textContent = fieldData.FieldName;
            document.getElementById("field-location").textContent = fieldData.Location;
            document.getElementById("field-price").textContent = formatPrice(fieldData.Price);
            document.getElementById("field-size").textContent = fieldData.FieldSize;
            document.getElementById("field-description").textContent = fieldData.Description