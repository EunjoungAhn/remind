package com.remind.ej.memory;

public class MemoryVO {
	private String Question;
	private String Answer;
	private String RegistDate;
	private byte IsEnabled;
	
	public MemoryVO() {
		super();
	}
	
	public MemoryVO(String question, String answer, String registDate, byte isEnabled) {
		super();
		Question = question;
		Answer = answer;
		RegistDate = registDate;
		IsEnabled = isEnabled;
	}

	public String getQuestion() {
		return Question;
	}
	public void setQuestion(String question) {
		Question = question;
	}
	public String getAnswer() {
		return Answer;
	}
	public void setAnswer(String answer) {
		Answer = answer;
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
	
}