package com.bukke.spring.common;

import com.bukke.spring.shop.controller.ShopPageInfo;

public class ShopPagination {
	
	// PageInfo 객체를 리턴해주는 메소드
		// 한번만 생성하여 정보를 저장해서 가지고 있을 수 있도록 하기 위해 static 메소드를 만듬
		public static ShopPageInfo getPageInfo(int currentPage, int listCount) {
			ShopPageInfo pi = null;
			int pageLimit = 10; // 한 페이지에서 보여 줄 네비게이션 수
			int shopLimit = 5; // 한 페이지에서 보여 줄 게시글의 개수
			int maxPage;   // 전체 페이지 중 가장 마지막 페이지
			int startPage; // 현재 페이지에서 시작하는 첫번째 페이지
			int endPage;  // 현재 페이지에서 끝나는 마지막 페이지
			
			maxPage = (int)((double)listCount/shopLimit + 0.9);
			startPage = (((int)((double)currentPage/pageLimit + 0.9)) - 1) * pageLimit + 1;
			endPage = startPage + pageLimit - 1;
			
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			pi = new ShopPageInfo(currentPage, shopLimit, pageLimit, startPage, endPage, listCount, maxPage);
			return pi;
		}

}
