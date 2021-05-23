package com.bukke.spring.notice.domain;

public class NoticePageInfo {
	private int currentPage; //게시글
	private int noticeLimit;  //네비게이션 수
	private int pageLimit;  // 네비게이션 첫번째 값
	private int startPage;  // 네비게이션 마지막 값
	private int endPage;    // 전체 게시글 갯수
	private int listCount;  // 페이지 마지막 번호
	private int maxPage;   //최대 페이지
	
	public NoticePageInfo() {}

	public NoticePageInfo(int currentPage, int boardLimit, int pageLimit, int startPage, int endPage, int listCount,
			int maxPage) {
		super();
		this.currentPage = currentPage;
		this.noticeLimit = boardLimit;
		this.pageLimit = pageLimit;
		this.startPage = startPage;
		this.endPage = endPage;
		this.listCount = listCount;
		this.maxPage = maxPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getBoardLimit() {
		return noticeLimit;
	}

	public void setBoardLimit(int boardLimit) {
		this.noticeLimit = boardLimit;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getListCount() {
		return listCount;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	@Override
	public String toString() {
		return "NoticePageInfo [currentPage=" + currentPage + ", boardLimit=" + noticeLimit + ", pageLimit=" + pageLimit
				+ ", startPage=" + startPage + ", endPage=" + endPage + ", listCount=" + listCount + ", maxPage="
				+ maxPage + "]";
	}
	
	
}
