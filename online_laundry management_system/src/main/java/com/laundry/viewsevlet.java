package com.laundry;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/viewsevlet")
public class viewsevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			List<makeoder> oderdetail = laundryDbutill.getoderDetails();
			request.setAttribute("oderdetail", oderdetail);
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("view oder servlet is not connected!");
	}
		RequestDispatcher dis = request.getRequestDispatcher("viewoderdetail.jsp");
		dis.forward(request, response);
		
		
		
		
	}

}
