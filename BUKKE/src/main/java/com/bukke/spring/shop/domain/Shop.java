package com.bukke.spring.shop.domain;

public class Shop {
	private String shopId; //업체아이디
	private String ceoName; //대표자 이름
	private String shopName;// 업체명
	private String shopPw;// 업체비밀번호
	private String shopAddr;// 업체 주소
	private String shopPhone;// 업체 전화번호
	private String shopEmail;// 업체이메일
	private String shopApproval;// 업체 승인
	private String shopRemoval;// 업체 승인
	private int crnNo; // 사업자번호
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

	public int getCrnNo() {
		return crnNo;
	}

	public void setCrnNo(int crnNo) {
		this.crnNo = crnNo;
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

	public String getShopApproval() {
		return shopApproval;
	}

	public void setShopApproval(String shopApproval) {
		this.shopApproval = shopApproval;
	}

	public String getShopRemoval() {
		return shopRemoval;
	}

	public void setShopRemoval(String shopRemoval) {
		this.shopRemoval = shopRemoval;
	}

	@Override
	public String toString() {
		return "Shop [shopId=" + shopId + ", ceoName=" + ceoName + ", shopName=" + shopName + ", shopPw=" + shopPw
				+ ", shopAddr=" + shopAddr + ", shopPhone=" + shopPhone + ", shopEmail=" + shopEmail + ", shopApproval="
				+ shopApproval + ", shopRemoval=" + shopRemoval + ", crnNo=" + crnNo + ", crnOriginalFilename="
				+ crnOriginalFilename + ", crnRenameFilename=" + crnRenameFilename + "]";
	}
}
