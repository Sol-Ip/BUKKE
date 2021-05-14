package com.bukke.bukkeclass.domain;

import java.sql.Date;

public class BukkeClass {
	
	// 클래스번호
	private int classNo;
	// 업체아이디
	private String shopId;
	// 클래스명
	private String className;
	// 주소
	private String classAddr;
	// 분류
	private String classType;
	// 상세분류
	private String classTypedetails;
	// 상세내용
	private String classInfo;
	// 인원수
	private String classCapacity;
	// 등록일
	private Date classEnrolldate;
	// 개강일
	private Date classStartdate;
	// 종강일
	private Date classEnddate;
	
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
	public String getClassCapacity() {
		return classCapacity;
	}
	public void setClassCapacity(String classCapacity) {
		this.classCapacity = classCapacity;
	}
	public Date getClassEnrollDate() {
		return classEnrolldate;
	}
	public void setClassEnrollDate(Date classEnrolldate) {
		this.classEnrolldate = classEnrolldate;
	}
	public Date getClassStartDate() {
		return classStartdate;
	}
	public void setClassStartDate(Date classStartdate) {
		this.classStartdate = classStartdate;
	}
	public Date getClassEndDate() {
		return classEnddate;
	}
	public void setClassEndDate(Date classEnddate) {
		this.classEnddate = classEnddate;
	}
}
