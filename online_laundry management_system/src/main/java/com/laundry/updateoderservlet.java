package com.laundry;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/updateoderservlet")
public class updateoderservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String lid =request.getParameter("lid");
		String lname = request.getParameter("lname");
		 String laddress = request.getParameter("laddress");
		 String lTelephone = request.getParameter("lTelephone");
		 String lNIC = request.getParameter("lNIC");
		 String lamount = request.getParameter("lamount");
		 String duedate = request.getParameter("duedate");
		 String returndate = request.getParameter("returndate");
		
		 boolean isTrue;
			
			isTrue = laundryDbutill.updateoder(lid,lname,laddress,lTelephone,lNIC,lamount,duedate,returndate);
			
			if(isTrue==true) {
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
		
	}

}
