<?php include '../jewelry-ecommerce/assets/includes/header.php'; ?>
<?php include '../jewelry-ecommerce/assets/includes/navigation.php'; ?>

<div class="container">
    <h1>Our Products</h1>
    <?php
    $sql = "SELECT * FROM products";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<div class='product'>";
            echo "<img src='../assets/images/" . $row["image"] . "' alt='" . $row["name"] . "'>";
            echo "<h2>" . $row["name"] . "</h2>";
            echo "<p>" . $row["description"] . "</p>";
            echo "<p>$" . $row["price"] . "</p>";
            echo "</div>";
        }
    } else {
        echo "No products found.";
    }

    $conn->close();
    ?>
</div>

<?php include '../jewelry-ecommerce/assets/includes/footer.php'; ?>
