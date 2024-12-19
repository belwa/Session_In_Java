<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Page</title>

    <!-- Internal CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h5 {
            color: #333;
            font-size: 24px;
        }

        a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #0056b3;
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            HttpSession httpSession = request.getSession();
            String email = (String) httpSession.getAttribute("userEmail");

            if (email != null) {
        %>

            <h5>Welcome to contact Page</h5>
            <a href="logoutUser">LogOut</a>

        <% 
            } else {
                // Add session expired message and forward to login.jsp
                request.setAttribute("msg", "Your session is expired");
                response.sendRedirect("login.jsp");
            }
        %>
    </div>
</body>
</html>
