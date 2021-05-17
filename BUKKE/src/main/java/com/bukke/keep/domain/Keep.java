package com.bukke.keep.domain;

public class Keep {

	private int keepNo; // 찜 번호
	private String memberId; // 회원아이디
	private int classNo; // 클래스번호
	private int activityNo; //액티비티번호
	
	public Keep () {}
	
	public int getKeepNo() {
		return keepNo;
	}

	public void setKeepNo(int keepNo) {
		this.keepNo = keepNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public int getActivityNo() {
		return activityNo;
	}

	public void setActivityNo(int activityNo) {
		this.activityNo = activityNo;
	}
}
