package com.remind.ej;

public class UserVO {
	private String uID;
	private String password;
	
	public UserVO() {
		super();
	}
	
	public UserVO(String uID, String password) {
		super();
		this.uID = uID;
		this.password = password;
	}

	public String getuID() {
		return uID;
	}
	public void setuID(String uID) {
		this.uID = uID;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}