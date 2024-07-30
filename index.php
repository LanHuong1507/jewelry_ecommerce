<?php include '../jewelry-ecommerce/assets/includes/header.php'; ?>
<?php include '../jewelry-ecommerce/assets/includes/navigation.php'; ?>
<link rel="stylesheet" href="assets/css/styles.css">
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
            include 'db_connect.php';
            $sql = "SELECT * FROM products LIMIT 3";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='product-card'>";
                    echo "<img src='assets/images/" . $row["image"] . "' alt='" . $row["name"] . "'>";
                    echo "<h3>" . $row["name"] . "</h3>";
                    echo "<p>$" . $row["price"] . "</p>";
                    echo "<a href='pages/products.php' class='btn btn-secondary'>View Details</a>";
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

<!-- About Us Section -->
<section class="about-us">
    <div class="container">
        <h2>About Us</h2>
        <p>We are passionate about providing high-quality jewelry that enhances your style and expresses your unique personality.</p>
        <a href="pages/about.php" class="btn btn-primary">Learn More</a>
    </div>
</section>

<!-- Contact Section -->
<section class="contact">
    <div class="container">
        <h2>Get in Touch</h2>
        <p>Have questions or need assistance? Feel free to reach out to us.</p>
        <a href="pages/contact.php" class="btn btn-primary">Contact Us</a>
    </div>
</section>

<?php include '../jewelry-ecommerce/assets/includes/footer.php'; ?>
