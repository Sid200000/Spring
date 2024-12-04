<!DOCTYPE html>
<html>
<head>
    <title>Sample JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome Page</h1>
        <form action="/welcome" method="post">
            <label for="name">Enter your name:</label>
            <input type="text" id="name" name="name" placeholder="Your name" required>
            <input type="submit" value="Submit">
        </form>

        <!-- This section displays the submitted name -->
        <% if (request.getAttribute("userName") != null) { %>
            <h2>Hello, <%= request.getAttribute("userName") %>! Welcome to our site!</h2>
        <% } %>
    </div>
</body>
</html>
