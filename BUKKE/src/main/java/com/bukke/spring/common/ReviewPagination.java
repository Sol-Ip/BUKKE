package com.bukke.spring.common;

import com.bukke.spring.review.domain.ReviewPageInfo;

public class ReviewPagination {
		// PageInfo 객체를 리턴해주는 메소드
		// static : 한번만 생성하여 정보를 조정해서 가지고 있을 수 있도록 (전역변수로 사용할 수 있도록) 하기위해 사용하여 만든 메소드
		public static ReviewPageInfo getPageInfo(int currentPage, int listCount) { 
			ReviewPageInfo pi = null;
			int pageLimit = 10; // 한 페이지에서 보여줄 네비게이션 수
			int boardLimit = 12; // 한 페이지에서 보여줄 게시글의 갯수 
			int maxPage;		// 전체 페이지 중 가장 마지막 페이지
			int startPage;		// 현재 페이지에서 시작하는 첫번째 페이지
			int endPage;		// 현재 페이지에서 끝나는 마지막 페이지
			
			maxPage = (int)((double)listCount/boardLimit + 0.9); // listCount/boardLimt 값이 0.1로 나왔을 때 int로 변환되면 0이 되므로 0.9 해줌 
			startPage = (((int)((double)currentPage/pageLimit + 0.9)) - 1) * pageLimit + 1;
			endPage = startPage + pageLimit - 1; // 11 + 20 - 1 => 10
			// 오류 방지용
			if(maxPage < endPage) {
				endPage = maxPage;
			}
			pi = new ReviewPageInfo(currentPage, boardLimit, pageLimit, startPage, endPage, listCount, maxPage);
			return pi;
		}
}
