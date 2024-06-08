<?php
require 'function.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Penjualan Tiket Konser</title>
    <link rel="stylesheet" href="login.css">
</head>

<body>
    <div class="login">
        <form action="main.php" method="post">
            <label>Email: </label>
            <br>
            <input type="text" id="EmailLogin" name="email" required>
            <br>
            <label>Password: </label>
            <br>
            <input type="password" id="PasswordEmail" name="password" required>
            <br>
            <input type="submit" name="login" value="Login">
        </form>
        <?php
        if (!empty($error)) {
            echo "<p style='color: red;'>$error</p>";
        }
        ?>
    </div>
</body>

</html>
