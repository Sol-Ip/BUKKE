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
	// 사진 번호
	private int cFileNo;
	// 사진 이름
	private String cFileName;
	// 사진 크기
	private int cFileSize;
	// 파일 형식
	private String cFileType;
	// 업로드 날짜
	private Date cFileDate;
	// 사진 경로
	private String cFilePath;
	// 기존 파일 이름
	private String cOriginalFilename;
	// 변경된 파일 이름
	private String cRenameFilename;
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
	
	public int getcFileNo() {
		return cFileNo;
	}

	public void setcFileNo(int cFileNo) {
		this.cFileNo = cFileNo;
	}

	public String getcFileName() {
		return cFileName;
	}

	public void setcFileName(String cFileName) {
		this.cFileName = cFileName;
	}

	public int getcFileSize() {
		return cFileSize;
	}

	public void setcFileSize(int cFileSize) {
		this.cFileSize = cFileSize;
	}

	public String getcFileType() {
		return cFileType;
	}

	public void setcFileType(String cFileType) {
		this.cFileType = cFileType;
	}

	public Date getcFileDate() {
		return cFileDate;
	}

	public void setcFileDate(Date cFileDate) {
		this.cFileDate = cFileDate;
	}

	public String getcFilePath() {
		return cFilePath;
	}

	public void setcFilePath(String cFilePath) {
		this.cFilePath = cFilePath;
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

	@Override
	public String toString() {
		return "BukkeClass [classNo=" + classNo + ", shopId=" + shopId + ", className=" + className + ", classAddr="
				+ classAddr + ", classType=" + classType + ", classTypedetails=" + classTypedetails + ", classInfo="
				+ classInfo + ", classCapacity=" + classCapacity + ", cFileNo=" + cFileNo + ", cFileName=" + cFileName
				+ ", cFileSize=" + cFileSize + ", cFileType=" + cFileType + ", cFileDate=" + cFileDate + ", cFilePath="
				+ cFilePath + ", cOriginalFilename=" + cOriginalFilename + ", cRenameFilename=" + cRenameFilename
				+ ", classEnrolldate=" + classEnrolldate + ", classStartdate=" + classStartdate + ", classEnddate="
				+ classEnddate + "]";
	}
	
	
}
