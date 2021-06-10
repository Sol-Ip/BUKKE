package com.bukke.spring.chat.domain;

import java.sql.Date;
import java.sql.Timestamp;

public class Chat {
	private int chatNo;
	private int roomNumber;
	private String memberId;
	private String shopId;
	private String memberNick;
	private String roomName;
	private String msg;
	private Timestamp chatTime;
	
	public Chat() {}

	public int getChatNo() {
		return chatNo;
	}

	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}

	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	public String getMemberNick() {
		return memberNick;
	}

	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Timestamp getChatTime() {
		return chatTime;
	}

	public void setChatTime(Timestamp chatTime) {
		this.chatTime = chatTime;
	}

	@Override
	public String toString() {
		return "Chat [chatNo=" + chatNo + ", roomNumber=" + roomNumber + ", memberId=" + memberId + ", shopId=" + shopId
				+ ", memberNick=" + memberNick + ", roomName=" + roomName + ", msg=" + msg + ", chatTime=" + chatTime
				+ "]";
	}


	
}
