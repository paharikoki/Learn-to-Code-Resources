<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $data = json_decode(file_get_contents('php://input'), true);

    $username = $data['username'];
    $email = $data['email'];
    $password = $data['password'];

    // You should add server-side validation here, like checking for duplicate usernames or sanitizing input.

    // Establish a database connection (replace with your database credentials)
    $db = new mysqli('localhost', 'root', '', 'belajar');

    if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
    }

    $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

    $sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("sss", $username, $email, $hashedPassword);

    if ($stmt->execute()) {
        echo "Registration successful!";
    } else {
        echo "Error: " . $db->error;
    }

    $stmt->close();
    $db->close();
}
?>