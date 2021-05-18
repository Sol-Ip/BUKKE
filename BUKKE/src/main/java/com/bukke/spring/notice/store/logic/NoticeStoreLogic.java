package com.bukke.notice.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bukke.notice.domain.Notice;
import com.bukke.notice.domain.NoticePageInfo;
import com.bukke.notice.store.NoticeStore;
@Repository
public class NoticeStoreLogic implements NoticeStore{
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Notice> selectAllNoticeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Notice> selectAllNoticeList(NoticePageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Notice selectOneNotice(int nId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertNotice(Notice notice) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateNotice(Notice notice) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteNotice(Notice notice) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}



