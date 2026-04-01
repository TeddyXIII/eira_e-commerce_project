<?php
include '../../database/db_connect.php';
$error = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);

    $check = mysqli_query($conn, "SELECT id FROM userdata WHERE email='$email'");
    if (mysqli_num_rows($check) > 0) {
        $error = "Email already registered!";
    } else {
        $sql = "INSERT INTO userdata (username, email, password) VALUES (?, ?, ?)";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "sss", $username, $email, $password);

        if (mysqli_stmt_execute($stmt)) {
            header("Location: login.php");
            exit();
        } else {
            $error = "Registration failed!";
        }
    }
}
?>

<form method="POST">
    <input type="text" name="username" placeholder="Username" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit">Register</button>
    <p style="color:red;"><?php echo $error; ?></p>
</form>