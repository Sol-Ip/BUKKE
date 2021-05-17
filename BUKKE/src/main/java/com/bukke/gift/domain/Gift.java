package com.bukke.gift.domain;

import java.sql.Date;

public class Gift {
	
	private int giftNo;
	private String sender;
	private String receiver;
	private int classNo;
	private Date sendDate;
	private Date receiveDate;
	private String payStatus;
	private String giftStatus;
	public int getGiftNo() {
		return giftNo;
	}
	public void setGiftNo(int giftNo) {
		this.giftNo = giftNo;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public Date getSendDate() {
		return sendDate;
	}
	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}
	public Date getReceiveDate() {
		return receiveDate;
	}
	public void setReceiveDate(Date receiveDate) {
		this.receiveDate = receiveDate;
	}
	public String getPayStatus() {
		return payStatus;
	}
	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}
	public String getGiftStatus() {
		return giftStatus;
	}
	public void setGiftStatus(String giftStatus) {
		this.giftStatus = giftStatus;
	}
	@Override
	public String toString() {
		return "Gift [giftNo=" + giftNo + ", sender=" + sender + ", receiver=" + receiver + ", classNo=" + classNo
				+ ", sendDate=" + sendDate + ", receiveDate=" + receiveDate + ", payStatus=" + payStatus
				+ ", giftStatus=" + giftStatus + "]";
	}
	

}
