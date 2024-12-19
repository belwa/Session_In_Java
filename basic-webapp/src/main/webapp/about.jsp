<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Page</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333;">

<%
HttpSession httpSession = request.getSession(false);  // Passing 'false' to not create a new session if it doesn't exist.

String email = (String) httpSession.getAttribute("userEmail");

if (email != null) {
%>

<h5 style="text-align: center; color: #4CAF50;">Welcome to the About Page</h5>
<a href="logoutUser" style="text-decoration: none; color: #ff5722; font-size: 18px;">LogOut</a>

<% 
} else { 
    // If session is expired or email is not found, redirect to login page.
    request.setAttribute("msg", "Your session has expired. Please log in again.");
    request.getRequestDispatcher("login.jsp").forward(request, response);
}
%>

</body>
</html>

