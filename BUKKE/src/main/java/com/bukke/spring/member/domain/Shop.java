package com.bukke.spring.member.domain;

import java.sql.Date;

public class Shop {
	private String shopId; //업체아이디
	private String ceoName; //대표자 이름
	private String shopName;// 업체명
	private String shopPw;// 업체비밀번호
	private String shopAddr;// 업체 주소
	private String shopPhone;// 업체 전화번호
	private String shopEmail;// 업체이메일
	private char shopApproval;// 업체 승인
	private int crnNo; // 사업자번호
	private int crnFileNo; // 사진번호
	private String crnFileName; // 사진 이름
	private int crnFileSize; // 사진 크기
	private String crnFileType; // 파일 형식
	private Date crnFileDate; // 업로드 날짜
	private String crnFilePath; // 사진 경로
	private String crnOriginalFilename; // 기존 파일 이름
	private String crnRenameFilename; // 변경된 파일 이름

	public Shop() {};

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopPw() {
		return shopPw;
	}

	public void setShopPw(String shopPw) {
		this.shopPw = shopPw;
	}

	public String getShopAddr() {
		return shopAddr;
	}

	public void setShopAddr(String shopAddr) {
		this.shopAddr = shopAddr;
	}

	public String getShopPhone() {
		return shopPhone;
	}

	public void setShopPhone(String shopPhone) {
		this.shopPhone = shopPhone;
	}

	public String getShopEmail() {
		return shopEmail;
	}

	public void setShopEmail(String shopEmail) {
		this.shopEmail = shopEmail;
	}

	public char getShopApproval() {
		return shopApproval;
	}

	public void setShopApproval(char shopApproval) {
		this.shopApproval = shopApproval;
	}

	public int getCrnNo() {
		return crnNo;
	}

	public void setCrnNo(int crnNo) {
		this.crnNo = crnNo;
	}

	public int getCrnFileNo() {
		return crnFileNo;
	}

	public void setCrnFileNo(int crnFileNo) {
		this.crnFileNo = crnFileNo;
	}

	public String getCrnFileName() {
		return crnFileName;
	}

	public void setCrnFileName(String crnFileName) {
		this.crnFileName = crnFileName;
	}

	public int getCrnFileSize() {
		return crnFileSize;
	}

	public void setCrnFileSize(int crnFileSize) {
		this.crnFileSize = crnFileSize;
	}

	public String getCrnFileType() {
		return crnFileType;
	}

	public void setCrnFileType(String crnFileType) {
		this.crnFileType = crnFileType;
	}

	public Date getCrnFileDate() {
		return crnFileDate;
	}

	public void setCrnFileDate(Date crnFileDate) {
		this.crnFileDate = crnFileDate;
	}

	public String getCrnFilePath() {
		return crnFilePath;
	}

	public void setCrnFilePath(String crnFilePath) {
		this.crnFilePath = crnFilePath;
	}

	public String getCrnOriginalFilename() {
		return crnOriginalFilename;
	}

	public void setCrnOriginalFilename(String crnOriginalFilename) {
		this.crnOriginalFilename = crnOriginalFilename;
	}

	public String getCrnRenameFilename() {
		return crnRenameFilename;
	}

	public void setCrnRenameFilename(String crnRenameFilename) {
		this.crnRenameFilename = crnRenameFilename;
	}

	@Override
	public String toString() {
		return "Shop [shopId=" + shopId + ", ceoName=" + ceoName + ", shopName=" + shopName + ", shopPw=" + shopPw
				+ ", shopAddr=" + shopAddr + ", shopPhone=" + shopPhone + ", shopEmail=" + shopEmail + ", shopApproval="
				+ shopApproval + ", crnNo=" + crnNo + ", crnFileNo=" + crnFileNo + ", crnFileName=" + crnFileName
				+ ", crnFileSize=" + crnFileSize + ", crnFileType=" + crnFileType + ", crnFileDate=" + crnFileDate
				+ ", crnFilePath=" + crnFilePath + ", crnOriginalFilename=" + crnOriginalFilename
				+ ", crnRenameFilename=" + crnRenameFilename + "]";
	}
	
	
}
