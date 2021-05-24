package com.bukke.spring.notice.service;

import java.util.ArrayList;

import com.bukke.spring.notice.domain.Notice;
import com.bukke.spring.notice.domain.NoticePageInfo;

public interface NoticeService {

	public int getListCount(); //페이지 수 
	public ArrayList<Notice> printAllNotice(NoticePageInfo pi); //공지사항 전체목록 조회  
	//public ArrayList<Notice> printrintAllNotice(NoticePageInfo pi);  //페이징
	public Notice printOneNotice(int noticeNo); // 공지사항 상세정보 조회
	public int registerNotice(Notice notice); //공지사항 등록
	public int modifyNotice(Notice notice); //공지사항 수정
	public int removeNotice(int noticeNo); //공지사항 삭제
	}

