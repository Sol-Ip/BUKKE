package com.bukke.spring.chat.domain;

import java.sql.Date;

public class Chat {
	private int chatNo;// 채팅방 번호
	private int classNo; // 클래스 번호
	private int ActivityNo; // 액티비티 번호
	private int chatContentsNo;// 채팅내용 번호
	private String chatTitle;// 채팅방 제목
	private Date chatTime;// 채팅 시간
	private int unidentifiedChatCount; // 미확인채팅수
	private String chatStatus;// 개설여부
	
	public Chat() {
		// TODO Auto-generated constructor stub
	}
	
	public int getChatNo() {
		return chatNo;
	}
	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public int getActivityNo() {
		return ActivityNo;
	}
	public void setActivityNo(int activityNo) {
		ActivityNo = activityNo;
	}
	public int getChatContentsNo() {
		return chatContentsNo;
	}
	public void setChatContentsNo(int chatContentsNo) {
		this.chatContentsNo = chatContentsNo;
	}
	public String getChatTitle() {
		return chatTitle;
	}
	public void setChatTitle(String chatTitle) {
		this.chatTitle = chatTitle;
	}
	public Date getChatTime() {
		return chatTime;
	}
	public void setChatTime(Date chatTime) {
		this.chatTime = chatTime;
	}
	public int getUnidentifiedChatCount() {
		return unidentifiedChatCount;
	}
	public void setUnidentifiedChatCount(int unidentifiedChatCount) {
		this.unidentifiedChatCount = unidentifiedChatCount;
	}
	public String getChatStatus() {
		return chatStatus;
	}
	public void setChatStatus(String chatStatus) {
		this.chatStatus = chatStatus;
	}

	@Override
	public String toString() {
		return "Chat [chatNo=" + chatNo + ", classNo=" + classNo + ", ActivityNo=" + ActivityNo + ", chatContentsNo="
				+ chatContentsNo + ", chatTitle=" + chatTitle + ", chatTime=" + chatTime + ", unidentifiedChatCount="
				+ unidentifiedChatCount + ", chatStatus=" + chatStatus + "]";
	}
	
	
	
}
