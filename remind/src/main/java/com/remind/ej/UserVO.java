package com.remind.ej;

public class UserVO {
	private String UserID;
	private String Password;
	private String RegistDate;
	
	public UserVO() {
		super();
	}
	
	public UserVO(String UserID, String Password, String RegistDate, byte IsEnabled) {
		super();
		this.UserID = UserID;
		this.Password = Password;
		this.RegistDate = RegistDate;
		this.IsEnabled = IsEnabled;
	}

	public String getUserID() {
		return UserID;
	}
	public void setUserID(String UserID) {
		this.UserID = UserID;
	}
	
	public String getPassword() {
		return Password;
	}

	public void setPassword(String Password) {
		this.Password = Password;
	}
	
	public String getRegistDate() {
		return RegistDate;
	}

	public void setRegistDate(String registDate) {
		RegistDate = registDate;
	}

	public byte getIsEnabled() {
		return IsEnabled;
	}

	public void setIsEnabled(byte isEnabled) {
		IsEnabled = isEnabled;
	}

	private byte IsEnabled;

}