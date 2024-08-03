<link rel="stylesheet" href="http://localhost/jewelry-ecommerce/assets/css/styles.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<?php include '../includes/navigation.php'; ?>
    <!-- Login Section -->
    <section class="login">
        <div class="login-container">
            <h2>Login</h2>
            <?php
            // Include database connection
            include 'C:\xampp\htdocs\jewelry-ecommerce\db_connect.php';

            // Initialize variables
            $username = $password = "";
            $loginError = "";

            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                // Collect and sanitize user input
                $username = htmlspecialchars(trim($_POST["username"]));
                $password = htmlspecialchars(trim($_POST["password"]));

                // Query to check user credentials
                $sql = "SELECT * FROM users WHERE username = ? AND password = ?";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("ss", $username, $password); // Assuming password is stored as plain text; use hashing in production
                $stmt->execute();
                $result = $stmt->get_result();

                if ($result->num_rows == 1) {
                    // Successful login
                    session_start();
                    $_SESSION["loggedin"] = true;
                    $_SESSION["username"] = $username;
                    header("Location: dashboard.php"); // Redirect to a secure page
                    exit();
                } else {
                    // Invalid login
                    $loginError = "Invalid username or password.";
                }

                $stmt->close();
                $conn->close();
            }
            ?>

            <?php if ($loginError): ?>
                <div class="form-error">
                    <p><?php echo $loginError; ?></p>
                </div>
            <?php endif; ?>

            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Login</button>
                <div class="login-footer">
                    <p><a href="forgot-password.php">Forgot Password?</a></p>
                    <p>Don't have an account? <a href="register.php">Sign Up</a></p>
                </div>
            </form>
        </div>
    </section>

    <?php include '../includes/footer.php'; ?>