<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jewelry E-Commerce</title>
    <link rel="stylesheet" href="http://localhost/jewelry-ecommerce/assets/css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>

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

    <?php include '../jewelry-ecommerce/assets/includes/footer.php'; ?>
</body>
</html>
