package com.bukke.spring.notice.store.logic;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.notice.domain.Notice;
import com.bukke.spring.notice.domain.NoticePageInfo;
import com.bukke.spring.notice.store.NoticeStore;
@Repository
public class NoticeStoreLogic implements NoticeStore{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Notice> selectAllNoticeList() {
		return (ArrayList)sqlSession.selectList("noticeMapper.selectNoticeList");
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



