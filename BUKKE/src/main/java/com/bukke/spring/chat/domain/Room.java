package com.bukke.spring.chat.domain;

import java.sql.Timestamp;

public class Room {
	
	private int roomNumber;
	private String memberId;
	private String shopId;
	private String roomName;
	private String memberNick;
	private String className;
	private String activityName;
	private Timestamp chatTime;
	private String lastChatMsg;
	private Timestamp lastChatTime;
	
	public Room() {}

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

	public String getMemberNick() {
		return memberNick;
	}

	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public Timestamp getChatTime() {
		return chatTime;
	}

	public void setChatTime(Timestamp chatTime) {
		this.chatTime = chatTime;
	}

	public String getLastChatMsg() {
		return lastChatMsg;
	}

	public void setLastChatMsg(String lastChatMsg) {
		this.lastChatMsg = lastChatMsg;
	}

	public Timestamp getLastChatTime() {
		return lastChatTime;
	}

	public void setLastChatTime(Timestamp lastChatTime) {
		this.lastChatTime = lastChatTime;
	}

	@Override
	public String toString() {
		return "Room [roomNumber=" + roomNumber + ", memberId=" + memberId + ", shopId=" + shopId + ", roomName="
				+ roomName + ", memberNick=" + memberNick + ", className=" + className + ", activityName="
				+ activityName + ", chatTime=" + chatTime + ", lastChatMsg=" + lastChatMsg + ", lastChatTime="
				+ lastChatTime + "]";
	}
	
}
