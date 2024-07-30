<?php
include '../../db_connect.php'; // Adjust path as needed

// Product data to be inserted
$products = [
    [
        "name" => "Diamond Necklace",
        "price" => 999.99,
        "description" => "A beautiful diamond necklace.",
        "image_url" => "diamond_necklace.webp"
    ],
    [
        "name" => "Gold Ring",
        "price" => 199.99,
        "description" => "A classic gold ring.",
        "image_url" => "gold_ring.jfif"
    ],
    [
        "name" => "Pearl Earrings",
        "price" => 149.99,
        "description" => "Elegant pearl earrings.",
        "image_url" => "pearl_earrings.webp"
    ]
];


$stmt = $conn->prepare("INSERT INTO products (name, price, description, image_url) VALUES (?, ?, ?, ?)");
$stmt->bind_param("sdss", $name, $price, $description, $image);

foreach ($products as $product) {
    $name = $product['name'];
    $price = $product['price'];
    $description = $product['description'];
    $image = $product['image_url'];

    $stmt->execute();
}

$stmt->close();
$conn->close();

echo "Products inserted successfully.";
?>
