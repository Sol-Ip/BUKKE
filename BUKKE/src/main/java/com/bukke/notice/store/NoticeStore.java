package com.bukke.notice.store;

import java.util.ArrayList;

import com.bukke.notice.domain.Notice;

public interface NoticeStore {

	public ArrayList<Notice> selectList();
	public Notice selectOne(int nId);
	public int insertNotice(Notice notice);
	public int updateNotice(Notice notice);
	public int deleteNotice(Notice notice);
}
