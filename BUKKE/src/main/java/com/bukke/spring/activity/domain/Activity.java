package com.bukke.spring.activity.domain;

import java.sql.Date;

public class Activity {
	
	private int activityNo; // 클래스번호
	private String shopId; // 업체아이디
	private String activityName; // 클래스명
	private String activityAddr; // 주소
	private String activityType; // 분류
	private String activityTypeDetails; // 상세분류
	private String activityInfo; // 상세내용
	private String activityPrice;// 액티비티 가격
	private String activityCapacity; // 인원수
	private String aOriginalFilename; // 기존 파일 이름
	private String aRenameFilename; // 변경된 파일 이름
	private Date activityEnrolldate; // 등록일
	private Date activityStartdate; // 개강일
	private Date activityEnddate; // 종강일
	private String activityStatus; //액티비티(삭제)여부
	
	// 생성자
	public Activity() {
		// TODO Auto-generated constructor stub
	}

	public int getActivityNo() {
		return activityNo;
	}

	public void setActivityNo(int activityNo) {
		this.activityNo = activityNo;
	}

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public String getActivityAddr() {
		return activityAddr;
	}

	public void setActivityAddr(String activityAddr) {
		this.activityAddr = activityAddr;
	}

	public String getActivityType() {
		return activityType;
	}

	public void setActivityType(String activityType) {
		this.activityType = activityType;
	}

	public String getActivityTypeDetails() {
		return activityTypeDetails;
	}

	public void setActivityTypeDetails(String activityTypeDetails) {
		this.activityTypeDetails = activityTypeDetails;
	}

	public String getActivityInfo() {
		return activityInfo;
	}

	public void setActivityInfo(String activityInfo) {
		this.activityInfo = activityInfo;
	}

	public String getActivityPrice() {
		return activityPrice;
	}

	public void setActivityPrice(String activityPrice) {
		this.activityPrice = activityPrice;
	}

	public String getActivityCapacity() {
		return activityCapacity;
	}

	public void setActivityCapacity(String activityCapacity) {
		this.activityCapacity = activityCapacity;
	}

	public String getaOriginalFilename() {
		return aOriginalFilename;
	}

	public void setaOriginalFilename(String aOriginalFilename) {
		this.aOriginalFilename = aOriginalFilename;
	}

	public String getaRenameFilename() {
		return aRenameFilename;
	}

	public void setaRenameFilename(String aRenameFilename) {
		this.aRenameFilename = aRenameFilename;
	}

	public Date getActivityEnrolldate() {
		return activityEnrolldate;
	}

	public void setActivityEnrolldate(Date activityEnrolldate) {
		this.activityEnrolldate = activityEnrolldate;
	}

	public Date getActivityStartdate() {
		return activityStartdate;
	}

	public void setActivityStartdate(Date activityStartdate) {
		this.activityStartdate = activityStartdate;
	}

	public Date getActivityEnddate() {
		return activityEnddate;
	}

	public void setActivityEnddate(Date activityEnddate) {
		this.activityEnddate = activityEnddate;
	}

	public String getActivityStatus() {
		return activityStatus;
	}

	public void setActivityStatus(String activityStatus) {
		this.activityStatus = activityStatus;
	}

	@Override
	public String toString() {
		return "Activity [activityNo=" + activityNo + ", shopId=" + shopId + ", activityName=" + activityName
				+ ", activityAddr=" + activityAddr + ", activityType=" + activityType + ", activityTypeDetails="
				+ activityTypeDetails + ", activityInfo=" + activityInfo + ", activityPrice=" + activityPrice
				+ ", activityCapacity=" + activityCapacity + ", aOriginalFilename=" + aOriginalFilename
				+ ", aRenameFilename=" + aRenameFilename + ", activityEnrolldate=" + activityEnrolldate
				+ ", activityStartdate=" + activityStartdate + ", activityEnddate=" + activityEnddate
				+ ", activityStatus=" + activityStatus + "]";
	}

	
}
