<?php
if ($_SERVER["REQUEST_METHOD"] === "GET") {
     // Get the username from the GET parameters or set it to an empty string
    $username = isset($_GET['username']) ? $_GET['username'] : '';

    // Perform database query to check if the username exists
    $db = new mysqli('localhost', 'root', '', 'belajar');

    if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
    }

    // Prepare a SQL statement to count rows with the provided username
    $stmt = $db->prepare("SELECT COUNT(*) FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $stmt->close();

    $isAvailable = $count === 0;

    // Respond with JSON indicating whether the username is available
    header('Content-Type: application/json');
    echo json_encode(['isAvailable' => $isAvailable]);
}
?>