<?php
if ($_SERVER["REQUEST_METHOD"] === "GET") {
     // Get the email from the GET parameters or set it to an empty string
    $email = isset($_GET['email']) ? $_GET['email'] : '';

    // Perform database query to check if the email exists
    $db = new mysqli('localhost', 'root', '', 'belajar');

    if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
    }

    // Prepare a SQL statement to count rows with the provided email
    $stmt = $db->prepare("SELECT COUNT(*) FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $stmt->close();

    $isAvailable = $count === 0;

    // Respond with JSON indicating whether the email is available
    header('Content-Type: application/json');
    echo json_encode(['isAvailable' => $isAvailable]);
}
?>