package com.bukke.spring.bukkeclass.domain;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class BukkeClass {
	
	
	private int classNo; // 클래스번호
	private String shopId; // 업체아이디
	private String className; // 클래스명
	private String classAddr; // 주소
	private String classType; // 분류
	private String classTypedetails; // 상세분류
	private String classInfo; // 상세내용
	private String classPrice;// 클래스 가격
	private String classCapacity; // 인원수
	private String cOriginalFilename; // 기존 파일 이름
	private String cRenameFilename; // 변경된 파일 이름
	private Date classEnrollDate; // 등록일
	private Date classStartDate; // 개강일
	private Date classEndDate; // 종강일
	private String classStatus; // 클래스(삭제)여부
	
	
	// 생성자
	public BukkeClass() {}
	
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public String getShopId() {
		return shopId;
	}
	public void setShopId(String shopId) {
		this.shopId = shopId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassAddr() {
		return classAddr;
	}
	public void setClassAddr(String classAddr) {
		this.classAddr = classAddr;
	}
	public String getClassType() {
		return classType;
	}
	public void setClassType(String classType) {
		this.classType = classType;
	}
	public String getClassTypedetails() {
		return classTypedetails;
	}
	public void setClassTypedetails(String classTypedetails) {
		this.classTypedetails = classTypedetails;
	}
	public String getClassInfo() {
		return classInfo;
	}
	public void setClassInfo(String classInfo) {
		this.classInfo = classInfo;
	}
	public String getClassPrice() {
		return classPrice;
	}
	public void setClassPrice(String classPrice) {
		this.classPrice = classPrice;
	}
	public String getClassCapacity() {
		return classCapacity;
	}
	public void setClassCapacity(String classCapacity) {
		this.classCapacity = classCapacity;
	}
	public String getcOriginalFilename() {
		return cOriginalFilename;
	}
	public void setcOriginalFilename(String cOriginalFilename) {
		this.cOriginalFilename = cOriginalFilename;
	}
	public String getcRenameFilename() {
		return cRenameFilename;
	}
	public void setcRenameFilename(String cRenameFilename) {
		this.cRenameFilename = cRenameFilename;
	}
	public Date getClassEnrollDate() {
		return classEnrollDate;
	}
	public void setClassEnrollDate(Date classEnrollDate) {
		this.classEnrollDate = classEnrollDate;
	}
	public Date getClassStartDate() {
		return classStartDate;
	}
	public void setClassStartDate(Date classStartDate) {
		this.classStartDate = classStartDate;
	}
	public Date getClassEndDate() {
		return classEndDate;
	}
	public void setClassEndDate(Date classEndDate) {
		this.classEndDate = classEndDate;
	}
	public String getClassStatus() {
		return classStatus;
	}
	public void setClassStatus(String classStatus) {
		this.classStatus = classStatus;
	} 

	@Override
	public String toString() {
		return "BukkeClass [classNo=" + classNo + ", shopId=" + shopId + ", className=" + className + ", classAddr="
				+ classAddr + ", classType=" + classType + ", classTypedetails=" + classTypedetails + ", classInfo="
				+ classInfo + ", classPrice=" + classPrice + ", classCapacity=" + classCapacity + ", cOriginalFilename="
				+ cOriginalFilename + ", cRenameFilename=" + cRenameFilename + ", classEnrollDate=" + classEnrollDate
				+ ", classStartDate=" + classStartDate + ", classEndDate=" + classEndDate + ", classStatus="
				+ classStatus + "]";
	}

}
