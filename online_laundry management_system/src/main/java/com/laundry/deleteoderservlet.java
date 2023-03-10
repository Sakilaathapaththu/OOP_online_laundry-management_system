package com.laundry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/deleteoderservlet")
public class deleteoderservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String lNIC = request.getParameter("lNIC");
		boolean isTrue;
		
		isTrue = laundryDbutill.deleteoder(lNIC);
		
		if(isTrue==true) {
			List<makeoder> oderdetail = laundryDbutill.getoderDetails();
			request.setAttribute("oderdetail", oderdetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewoderdetail.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis1 = request.getRequestDispatcher("unsuccess.jsp");
			dis1.forward(request,response);
		}
		
	}

}
