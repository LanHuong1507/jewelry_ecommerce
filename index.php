<?php include '../jewelry-ecommerce/assets/includes/header.php'; ?>
<?php include '../jewelry-ecommerce/assets/includes/navigation.php'; ?>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <h1>Discover Exquisite Jewelry</h1>
        <p>Find the perfect piece for every occasion.</p>
        <a href="pages/products.php" class="btn btn-primary">Shop Now</a>
    </div>
</section>

<!-- Featured Products -->
<section class="featured-products">
    <div class="container">
        <h2>Featured Products</h2>
        <div class="product-grid">
            <?php
            include '../jewelry-ecommerce/db_connect.php'; // Ensure correct path

            $sql = "SELECT * FROM products ORDER BY RAND() LIMIT 10";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='product-card'>";
                    echo "<img src='../jewelry-ecommerce/assets/images/" . htmlspecialchars($row["image"]) . "' alt='" . htmlspecialchars($row["name"]) . "' class='product-image'>";
                    echo "<h3>" . htmlspecialchars($row["name"]) . "</h3>";
                    echo "<p>$" . htmlspecialchars($row["price"]) . "</p>";
                    echo "<a href='pages/products.php?product_id=" . htmlspecialchars($row["id"]) . "' class='btn btn-view'>View Details <i class='fas fa-arrow-right'></i></a>";
                    echo "</div>";
                }
            } else {
                echo "<p>No featured products available.</p>";
            }

            $conn->close();
            ?>
        </div>
    </div>
</section>

<!-- About Us Section (Preview) -->
<section class="about-us">
    <div class="container">
        <h2>About Us</h2>
        <p>We are passionate about providing high-quality jewelry that enhances your style and expresses your unique personality. Our team of experts carefully curates each piece to ensure exceptional craftsmanship and timeless elegance.</p>
        <a href="assets/pages/contact.php" class="btn btn-primary"><i class="fas fa-info-circle"></i> Learn More </a>
    </div>
</section>

<!-- Contact Section (Preview) -->
<section class="contact">
    <div class="container">
        <h2>Get in Touch</h2>
        <p>Have questions or need assistance? Feel free to reach out to us through any of the following methods. We are here to help and ensure your experience with us is exceptional.</p>
        <a href="assets/pages/contact.php" class="btn btn-primary"><i class="fas fa-envelope"></i> Contact Us</a>
    </div>
</section>

<?php include '../jewelry-ecommerce/assets/includes/footer.php'; ?>
