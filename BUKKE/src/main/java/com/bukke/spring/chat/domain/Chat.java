package com.bukke.spring.chat.domain;

import java.sql.Date;

public class Chat {
	private int chatContentsNo;
	private int roomNumber;
	private String memberId;
	private String shopId;
	private String roomName;
	private String msg;
	private String chatTime;
	
	public Chat() {}

	public int getChatContentsNo() {
		return chatContentsNo;
	}

	public void setChatContentsNo(int chatContentsNo) {
		this.chatContentsNo = chatContentsNo;
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

	public String getChatTime() {
		return chatTime;
	}

	public void setChatTime(String chatTime) {
		this.chatTime = chatTime;
	}

	@Override
	public String toString() {
		return "Chat [chatContentsNo=" + chatContentsNo + ", roomNumber=" + roomNumber + ", memberId=" + memberId
				+ ", shopId=" + shopId + ", roomName=" + roomName + ", msg=" + msg + ", chatTime=" + chatTime + "]";
	}

}
