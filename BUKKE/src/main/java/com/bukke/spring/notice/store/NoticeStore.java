package com.bukke.spring.notice.store;

import java.util.ArrayList;

import com.bukke.spring.notice.domain.Notice;
import com.bukke.spring.notice.domain.NoticePageInfo;

public interface NoticeStore {

	public int selectListCount(); //공지사항 카운트
	public ArrayList<Notice> selectAllNoticeList(NoticePageInfo pi); //공지사항 전체목록 조회
	//public ArrayList<Notice> selectAllNoticeList(NoticePageInfo pi); //페이징
	public Notice selectOneNotice(int noticeNo); //공지사항 상세페이지
	public int insertNotice(Notice notice); //공지사항 등록
	public int updateNotice(Notice notice); //공지사항 수정
	public int deleteNotice(Notice notice); //공지사항 삭제
}
