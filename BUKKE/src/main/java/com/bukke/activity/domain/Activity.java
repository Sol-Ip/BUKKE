package com.bukke.activity.domain;

import java.sql.Date;

public class Activity {
	
	private int activityNo; // 클래스번호
	private String shopId; // 업체아이디
	private String activityName; 	// 클래스명
	private String activityAddr; // 주소
	private String activityType; // 분류
	private String activityTypedetails; // 상세분류
	private String activityInfo; // 상세내용
	private String activityCapacity; // 인원수
	private int aFileNo; // 사진 번호
	private String aFileName; // 사진 이름
	private int aFileSize; // 사진 크기
	private String aFileType; // 파일 형식
	private Date aFileDate; // 업로드 날짜
	private String aFilePath; // 사진 경로
	private String aOriginalFilename; // 기존 파일 이름
	private String aRenameFilename; // 변경된 파일 이름
	private Date activityEnrolldate; // 등록일
	private Date activityStartdate; // 개강일
	private Date activityEnddate; // 종강일
	
	// 생성자
	public Activity() {
		// TODO Auto-generated constructor stub
	}

	
	// getter / setter
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

	public String getActivityTypedetails() {
		return activityTypedetails;
	}

	public void setActivityTypedetails(String activityTypedetails) {
		this.activityTypedetails = activityTypedetails;
	}

	public String getActivityInfo() {
		return activityInfo;
	}

	public void setActivityInfo(String activityInfo) {
		this.activityInfo = activityInfo;
	}

	public String getActivityCapacity() {
		return activityCapacity;
	}

	public void setActivityCapacity(String activityCapacity) {
		this.activityCapacity = activityCapacity;
	}

	public int getaFileNo() {
		return aFileNo;
	}

	public void setaFileNo(int aFileNo) {
		this.aFileNo = aFileNo;
	}

	public String getaFileName() {
		return aFileName;
	}

	public void setaFileName(String aFileName) {
		this.aFileName = aFileName;
	}

	public int getaFileSize() {
		return aFileSize;
	}

	public void setaFileSize(int aFileSize) {
		this.aFileSize = aFileSize;
	}

	public String getaFileType() {
		return aFileType;
	}

	public void setaFileType(String aFileType) {
		this.aFileType = aFileType;
	}

	public Date getaFileDate() {
		return aFileDate;
	}

	public void setaFileDate(Date aFileDate) {
		this.aFileDate = aFileDate;
	}

	public String getaFilePath() {
		return aFilePath;
	}

	public void setaFilePath(String aFilePath) {
		this.aFilePath = aFilePath;
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

	@Override
	public String toString() {
		return "Activity [activityNo=" + activityNo + ", shopId=" + shopId + ", activityName=" + activityName
				+ ", activityAddr=" + activityAddr + ", activityType=" + activityType + ", activityTypedetails="
				+ activityTypedetails + ", activityInfo=" + activityInfo + ", activityCapacity=" + activityCapacity
				+ ", aFileNo=" + aFileNo + ", aFileName=" + aFileName + ", aFileSize=" + aFileSize + ", aFileType="
				+ aFileType + ", aFileDate=" + aFileDate + ", aFilePath=" + aFilePath + ", aOriginalFilename="
				+ aOriginalFilename + ", aRenameFilename=" + aRenameFilename + ", activityEnrolldate="
				+ activityEnrolldate + ", activityStartdate=" + activityStartdate + ", activityEnddate="
				+ activityEnddate + "]";
	}
	
	
	
	
}
