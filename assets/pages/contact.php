<?php include '../includes/header.php'; ?>
<?php include '../includes/navigation.php'; ?>

<div class="container">
    <h1>Contact Us</h1>
    <form method="post" action="contact_form.php">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br>
        <label for="message">Message:</label>
        <textarea id="message" name="message" required></textarea>
        <br>
        <input type="submit" value="Send Message">
    </form>
</div>

<?php include '../includes/footer.php'; ?>
