package com.ibm.servalet.httpServalet.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(value = "/loginUser")
public class UserLoginController extends HttpServlet{
	
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	HttpSession httpSession = req.getSession();
	
	String email = req.getParameter("email");
	String password = req.getParameter("password");
	
	if(email.equalsIgnoreCase("sy560769@gmail.com")) {
		httpSession.setMaxInactiveInterval(10);
	 
	if(password.equalsIgnoreCase("123")){
	httpSession.setAttribute("userEmail", email);
	req.getRequestDispatcher("home.jsp").forward(req, resp);

	
} else {
	req.getRequestDispatcher("login.jsp").forward(req, resp);
}
	
}


}
	
}