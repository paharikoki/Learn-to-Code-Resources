<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

</head>

<body>
    <div class="container flex row justify-center items-center mx-auto p-4 max-w-lg">
        <form id="registrationForm" class="w-full">
            <h2 class="text-2xl font-bold mb-4">User Registration</h2>
            <div class="mb-4">
                <label for="username" class="block mb-1 text-sm text-gray-600">Username</label>
                <input type="text" name="username"
                    class="w-full px-4 py-2 text-base border border-gray-300 rounded outline-none focus:ring-blue-500 focus:border-blue-500 focus:ring-1"
                    placeholder="Enter Username" required />
                <span class="inline-flex text-sm" id="usernameValidationMessage"></span>
                <span class="inline-flex text-sm" id="realtimeUsernameAvailability"></span>
            </div>

            <div class="mb-4">
                <label for="email" class="block mb-1 text-sm text-gray-600">Email</label>
                <input type="email" name="email"
                    class="w-full px-4 py-2 text-base border border-gray-300 rounded outline-none focus:ring-blue-500 focus:border-blue-500 focus:ring-1"
                    placeholder="Enter Email" required />
                <span class="inline-flex text-sm" id="emailValidationMessage"></span>
                <span class="inline-flex text-sm" id="realtimeEmailAvailability"></span>
            </div>
            <div class="mb-4">
                <label for="password" class="block mb-1 text-sm text-gray-600">Password</label>
                <input type="password" name="password"
                    class="w-full px-4 py-2 text-base border border-gray-300 rounded outline-none focus:ring-blue-500 focus:border-blue-500 focus:ring-1"
                    placeholder="Password" required />
                <span class="inline-flex text-sm" id="passwordValidationMessage"></span>
            </div>
            <div class="mb-4">
                <label for="confirmPassword" class="block mb-1 text-sm text-gray-600">Confirm Password</label>
                <input type="password" name="confirmPassword"
                    class="w-full px-4 py-2 text-base border border-gray-300 rounded outline-none focus:ring-blue-500 focus:border-blue-500 focus:ring-1"
                    placeholder="Confirm Password" required />
                <span class="inline-flex text-sm" id="confirmPasswordValidationMessage"></span>
            </div>
            <button type="submit" class="w-full bg-blue-500 text-white py-2 px-4 rounded">Register</button>
        </form>
    </div>

    <script>
    const registrationForm = document.getElementById('registrationForm');

    const passwordInput = document.querySelector('input[name="password"]');
    const confirmPasswordInput = document.querySelector('input[name="confirmPassword"]');
    const passwordValidationMessage = document.getElementById('passwordValidationMessage');
    const confirmPasswordValidationMessage = document.getElementById('confirmPasswordValidationMessage');

    const usernameInput = document.querySelector('input[name="username"]');
    const usernameValidationMessage = document.getElementById('usernameValidationMessage');
    const realtimeUsernameAvailability = document.getElementById('realtimeUsernameAvailability');

    usernameInput.addEventListener('input', function() {
        const username = usernameInput.value;

        // Check username availability asynchronously
        checkUsernameAvailability(username)
            .then((isUsernameAvailable) => {
                if (isUsernameAvailable) {
                    realtimeUsernameAvailability.textContent = 'Username is available!';
                    realtimeUsernameAvailability.classList.remove('text-red-700');
                    realtimeUsernameAvailability.classList.add('text-green-700');
                } else {
                    realtimeUsernameAvailability.textContent = 'Username is not available.';
                    realtimeUsernameAvailability.classList.remove('text-green-700');
                    realtimeUsernameAvailability.classList.add('text-red-700');
                }
            })
            .catch((error) => {
                console.error('Error checking username availability:', error);
            });
    });

    function checkUsernameAvailability(username) {
        return new Promise((resolve, reject) => {
            // Make an AJAX request to the PHP script to check username availability
            const xhr = new XMLHttpRequest();
            xhr.open('GET', `check_username.php?username=${encodeURIComponent(username)}`, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4) {
                    if (xhr.status === 200) {
                        const response = JSON.parse(xhr.responseText);
                        resolve(response.isAvailable);
                    } else {
                        reject(new Error('Failed to check username availability'));
                    }
                }
            };
            xhr.send();
        });
    }


    const emailInput = document.querySelector('input[name="email"]');
    const emailValidationMessage = document.getElementById('emailValidationMessage');
    const realtimeEmailAvailability = document.getElementById('realtimeEmailAvailability');

    emailInput.addEventListener('input', function() {
        const email = emailInput.value;

        // Check email availability asynchronously
        checkEmailAvailability(email)
            .then((isEmailAvailable) => {
                if (isEmailAvailable) {
                    realtimeEmailAvailability.textContent = 'Email is available!';
                    realtimeEmailAvailability.classList.remove('text-red-700');
                    realtimeEmailAvailability.classList.add('text-green-700');
                } else {
                    realtimeEmailAvailability.textContent = 'Email is not available.';
                    realtimeEmailAvailability.classList.remove('text-green-700');
                    realtimeEmailAvailability.classList.add('text-red-700');
                }
            })
            .catch((error) => {
                console.error('Error checking email availability:', error);
            });
    });

    function checkEmailAvailability(email) {
        return new Promise((resolve, reject) => {
            // Make an AJAX request to the PHP script to check email availability
            const xhr = new XMLHttpRequest();
            xhr.open('GET', `check_email.php?email=${encodeURIComponent(email)}`, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4) {
                    if (xhr.status === 200) {
                        const response = JSON.parse(xhr.responseText);
                        resolve(response.isAvailable);
                    } else {
                        reject(new Error('Failed to check email availability'));
                    }
                }
            };
            xhr.send();
        });
    }

    passwordInput.addEventListener('input', function() {
        const password = passwordInput.value;
        const isValid = verifyPassword(password);

        if (isValid) {
            passwordValidationMessage.textContent = 'Password is valid.';
            passwordValidationMessage.classList.remove('text-red-700');
            passwordValidationMessage.classList.add('text-green-700');
        } else {
            passwordValidationMessage.textContent =
                'Password must be at least 8 characters and contain at least one uppercase letter, one lowercase letter, one digit, and one special character (!, @, or #).';
            passwordValidationMessage.classList.remove('text-green-700');
            passwordValidationMessage.classList.add('text-red-700');
        }
    });

    confirmPasswordInput.addEventListener('input', function() {
        const password = passwordInput.value;
        const confirmPassword = confirmPasswordInput.value;

        if (password === confirmPassword) {
            confirmPasswordValidationMessage.textContent = 'Passwords match.';
            confirmPasswordValidationMessage.classList.remove('text-red-700');
            confirmPasswordValidationMessage.classList.add('text-green-700');
        } else {
            confirmPasswordValidationMessage.textContent = 'Passwords do not match.';
            confirmPasswordValidationMessage.classList.remove('text-green-700');
            confirmPasswordValidationMessage.classList.add('text-red-700');
        }
    });

    function verifyPassword(password) {
        const regex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#]).{8,}$/;
        return regex.test(password);
    }

    function validateEmail(email) {
        // You can use a regular expression or other validation methods to check the email format.
        // This is a basic example; you can replace it with a more robust email validation logic.
        const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return regex.test(email);
    }
    registrationForm.addEventListener('submit', async (e) => {
        e.preventDefault();
        const usernameInput = registrationForm.querySelector('input[name="username"]');
        const emailInput = registrationForm.querySelector('input[name="email"]');
        const passwordInput = registrationForm.querySelector('input[name="password"]');
        const confirmPasswordInput = registrationForm.querySelector('input[name="confirmPassword"]');
        const usernameValidationMessage = document.getElementById('usernameValidationMessage');
        const emailValidationMessage = document.getElementById('emailValidationMessage');
        const passwordValidationMessage = document.getElementById('passwordValidationMessage');
        const confirmPasswordValidationMessage = document.getElementById(
            'confirmPasswordValidationMessage');

        const username = usernameInput.value;
        const email = emailInput.value;
        const password = passwordInput.value;
        const confirmPassword = confirmPasswordInput.value;

        // Client-side validation
        let isValid = true;

        if (!validateUsername(username)) {
            isValid = false;
            usernameValidationMessage.textContent = 'Username is not valid.';
        } else {
            usernameValidationMessage.textContent = '';
        }

        if (!validateEmail(email)) {
            isValid = false;
            emailValidationMessage.textContent = 'Email is not valid.';
        } else {
            emailValidationMessage.textContent = '';
        }

        if (!validatePassword(password)) {
            isValid = false;
            passwordValidationMessage.textContent = 'Password is not valid.';
        } else {
            passwordValidationMessage.textContent = '';
        }

        if (password !== confirmPassword) {
            isValid = false;
            confirmPasswordValidationMessage.textContent = 'Passwords do not match.';
        } else {
            confirmPasswordValidationMessage.textContent = '';
        }

        if (!isValid) {
            return;
        }

        // Data is valid, submit to the server (you'll need a server-side script)
        // Example using fetch:
        const response = await fetch('register.php', {
            method: 'POST',
            body: JSON.stringify({
                username,
                email,
                password
            }),
            headers: {
                'Content-Type': 'application/json',
            },
        });

        if (response.ok) {
            console.log('Successs')
            // Registration was successful
            // toastr.success('Registration successful!');
            alert('Success')

            // Clear the form fields
            usernameInput.value = '';
            emailInput.value = '';
            passwordInput.value = '';
            confirmPasswordInput.value = '';

        } else {
            // toastr.error('Registration failed.');
            alert('Failed')

        }
    });

    function validateUsername(username) {
        // Add your validation logic here
        return username.length >= 3;
    }

    function validateEmail(email) {
        // Add your email validation logic here
        const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return regex.test(email);
    }

    function validatePassword(password) {
        // Add your password validation logic here
        const regex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#]).{8,}$/;
        return regex.test(password);
    }
    </script>
</body>

</html>