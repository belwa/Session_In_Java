<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h5 {
            color: #333;
            font-size: 18px;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            color: #0056b3;
        }

        .container {
            padding: 20px;
        }
    </style>
</head>
<body>
<%
    HttpSession httpSession = request.getSession();
    String email = (String) httpSession.getAttribute("userEmail");

    if (email != null) {
%>

<div class="container">
    <h5>Welcome to home Page</h5>
    <h5><a href="about.jsp">About Page</a></h5>
    <h5><a href="contact.jsp">Contact Page</a></h5>
</div>

<% } else { %>

<%
    request.setAttribute("msg", "Your session is expired");
    request.getRequestDispatcher("login.jsp").forward(request, response);
%>

<% } %>

</body>
</html>
