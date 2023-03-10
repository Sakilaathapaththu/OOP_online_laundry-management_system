package com.laundry;

public class makeoder {
	
	private int lid;
	private String lname;
	private String laddress;
	private String lTelephone;
	private String lNIC;
	private String lamount;
	private String duedate;
	private String returndate;
	public makeoder(int lid, String lname, String laddress, String lTelephone, String lNIC, String lamount,
			String duedate, String returndate) {
		
		this.lid = lid;
		this.lname = lname;
		this.laddress = laddress;
		this.lTelephone = lTelephone;
		this.lNIC = lNIC;
		this.lamount = lamount;
		this.duedate = duedate;
		this.returndate = returndate;
	}
	public int getLid() {
		return lid;
	}

	public String getLname() {
		return lname;
	}

	public String getLaddress() {
		return laddress;
	}

	public String getlTelephone() {
		return lTelephone;
	}

	public String getlNIC() {
		return lNIC;
	}
	
	public String getLamount() {
		return lamount;
	}

	public String getDuedate() {
		return duedate;
	}
	
	public String getReturndate() {
		return returndate;
	}
	
	
	
	

}
