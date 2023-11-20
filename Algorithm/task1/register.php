<?php
// Check if the request method is POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Retrieve JSON data from the request body and decode it into an associative array
    $data = json_decode(file_get_contents('php://input'), true);

    // Extract username, email, and password from the received data
    $username = $data['username'];
    $email = $data['email'];
    $password = $data['password'];

    // You should add server-side validation here, such as checking for duplicate usernames or sanitizing input.

    // Establish a database connection (replace with your database credentials)
    $db = new mysqli('localhost', 'root', '', 'belajar');

    if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error); // Terminate if the connection fails
    }

    // Hash the password using bcrypt
    $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

    // Prepare SQL statement to insert user data into the 'users' table
    $sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
    $stmt = $db->prepare($sql);
    // Bind parameters to the statement
    $stmt->bind_param("sss", $username, $email, $hashedPassword); 

    // Execute the prepared statement to insert user data
    if ($stmt->execute()) {
        // Output success message if insertion is successful
        echo "Registration successful!"; 
    } else {
        // Output error message if insertion fails
        echo "Error: " . $db->error;
    }

    // Close the statement and the database connection
    $stmt->close();
    $db->close();
}
?>
