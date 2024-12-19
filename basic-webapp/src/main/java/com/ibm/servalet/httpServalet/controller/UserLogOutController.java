package com.ibm.servalet.httpServalet.controller;




import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(value = "/logoutUser")
public class UserLogOutController extends HttpServlet {
    
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	HttpSession  httpSession = req.getSession();
        
        // Get the session from the request
    	String email = (String) httpSession.getAttribute("userEmail");
        
        if (email != null) {
            // Invalidate the session
            req.getSession().invalidate();
            
            req.setAttribute("msg", "logout success");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            req.setAttribute("msg", "first login than logout");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}

