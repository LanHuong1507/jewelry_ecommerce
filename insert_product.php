<?php
include 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $price = $_POST['price'];
    $description = $_POST['description'];
    $image = $_POST['image'];

    $sql = "INSERT INTO products (name, price, description, image)
            VALUES ('$name', '$price', '$description', '$image')";

    if ($conn->query($sql) === TRUE) {
        echo "New product added successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>

<form method="post" action="insert_product.php">
    <label for="name">Product Name:</label>
    <input type="text" id="name" name="name" required>
    <br>
    <label for="price">Price:</label>
    <input type="text" id="price" name="price" required>
    <br>
    <label for="description">Description:</label>
    <textarea id="description" name="description" required></textarea>
    <br>
    <label for="image">Image URL:</label>
    <input type="text" id="image" name="image" required>
    <br>
    <input type="submit" value="Add Product">
</form>
