package com.laundry;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;









public class laundryDbutill {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	//insert oder
 public static boolean insertoder(String lname, String laddress, String lTelephone, String lNIC, String lamount, String duedate, String returndate ) {
		 
		 boolean isSuccess = false;
		 
		 try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "insert into oderdetail values(0,'"+lname+"','"+laddress+"','"+lTelephone+"','"+lNIC+"','"+lamount+"','"+duedate+"','"+returndate+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    		System.out.println("dbutill insert connection error!!");
	    	}	
 		
		 
		 
		 
		 return isSuccess;
		 
		 
	 }
  //view oder details
 
 public static List<makeoder> getoderDetails() {
 	
	    
 	
 	ArrayList<makeoder> cus = new ArrayList<makeoder>();
 	
 	try {
 		
 		con = DBConnect.getConnection();
 		stmt = con.createStatement();
 		String sql = "select * from oderdetail  ";
 		rs = stmt.executeQuery(sql);
 		
 		while(rs.next()) {
 			 int lid = rs.getInt(1);
 			 String lname = rs.getString(2);
 			 String laddress = rs.getString(3);
 			 String lTelephone = rs.getString(4);
 			 String lNIC = rs.getString(5);
 			 String lamount = rs.getString(6);
 			 String duedate = rs.getString(7);
 			 String returndate = rs.getString(8);
 			
 			makeoder c = new makeoder (lid,lname,laddress,lTelephone,lNIC,lamount,duedate,returndate);
 			cus.add(c);
 		}
 		
 	}
 	catch(Exception e) {
 		e.printStackTrace();
 		System.out.println("dbutill display oder connection error!!");
 	}	
 	return cus;	
 }
 //update oder details
 public static boolean updateoder(String lid, String lname, String laddress, String lTelephone,String lNIC,String lamount,String duedate,String returndate) {
 	
 	try {
 		
 		con = DBConnect.getConnection();
 		stmt = con.createStatement();
 		String sql = "update oderdetail set lid='"+lid+"',lname='"+lname+"',laddress='"+laddress+"',lTelephone='"+lTelephone+"',lNIC='"+lNIC+"',lamount='"+lamount+"',duedate='"+duedate+"',returndate='"+returndate+"'"
 				+ "where lNIC='"+lNIC+"'";
 		int rs = stmt.executeUpdate(sql);
 		
 		if(rs > 0) {
 			isSuccess = true;
 		}
 		else {
 			isSuccess = false;
 		}
 		
 	}
 	catch(Exception e) {
 		e.printStackTrace();
 		System.out.println("dbutill update connection error!!");
 	}
 	
 	return isSuccess;
 }
 //delete oder
 public static boolean deleteoder(String lNIC) {
	 
	 
	 try {

    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from oderdetail where lNIC='"+lNIC+"'";
    		int r = stmt.executeUpdate(sql);
		 
    		if(r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
	 }
	 catch(Exception e) {
    		e.printStackTrace();
    		System.out.println("dbutill delete connection error!!");
    	}	
	 
	 
	 return isSuccess;
 }
 
	
}
