package com.bukke.notice.service;

import java.util.ArrayList;

import com.bukke.notice.domain.Notice;
import com.bukke.notice.domain.NoticePageInfo;

public interface NoticeService {

	public ArrayList<Notice> printAllNotice(); //공지사항 전체목록 조회  
	public ArrayList<Notice> printrintAllNotice(NoticePageInfo pi);  //페이징
	public Notice printOneNotice(int nId); // 공지사항 상세정보 조회
	public int registerNotice(); //공지사항 등록
	public int modifyNotice(); //공지사항 수정
	public int removeNotice(); //공지사항 삭제
	}

