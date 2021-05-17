package com.bukke.notice.store;

import java.util.ArrayList;

import com.bukke.notice.domain.Notice;
import com.bukke.notice.domain.NoticePageInfo;

public interface NoticeStore {

	public ArrayList<Notice> selectAllList(); //공지사항 전체목록 조회
	public ArrayList<Notice> selectAllList(NoticePageInfo pi); //페이징
	public Notice selectOne(int nId); //공지사항 상세페이지
	public int insertNotice(Notice notice); //공지사항 등록
	public int updateNotice(Notice notice); //공지사항 수정
	public int deleteNotice(Notice notice); //공지사항 삭제
}
