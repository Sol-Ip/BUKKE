package com.bukke.spring.member.domain;

public class Member {
	
	private String memberId; // 회원아이디
	private String memberPw; // 회원비밀번호
	private String memberName; // 회원이름
	private String memberNick; // 부캐명
	private String memberAddr; // 회원주소
	private String memberPhone; // 회원전화번호
	private String memberEmail; // 회원이메일
	
	
	public Member() {}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberNick() {
		return memberNick;
	}

	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public String getMemberAddr() {
		return memberAddr;
	}

	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
				+ ", memberNick=" + memberNick + ", memberAddr=" + memberAddr + ", memberPhone=" + memberPhone
				+ ", memberEmail=" + memberEmail + "]";
	}
	

}
