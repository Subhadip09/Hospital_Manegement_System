package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			User u = new User(fullName, email, password);
			
			UserDao udao = new UserDao(DBConnect.getConn());
			
			HttpSession session = req.getSession();
			
			boolean f = udao.register(u);
			
			if(f)
			{
				session.setAttribute("sucMsg", "Registration have done successfully");
				resp.sendRedirect("signup.jsp");
//				System.out.println("registration have done successfully");
			}
			else {
				session.setAttribute("errMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
//				System.out.println("something wrong on server");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
