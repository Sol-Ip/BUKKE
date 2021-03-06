package com.bukke.spring.notice.store.logic;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.notice.domain.Notice;
import com.bukke.spring.notice.domain.NoticePageInfo;
import com.bukke.spring.notice.domain.NoticeSearch;
import com.bukke.spring.notice.store.NoticeStore;
@Repository
public class NoticeStoreLogic implements NoticeStore{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Notice> selectAllNoticeList(NoticePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getNoticeLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getNoticeLimit());
		return (ArrayList)sqlSession.selectList("noticeMapper.selectNoticeList",null,rowBounds);
	}

//	@Override
//	public ArrayList<Notice> selectAllNoticeList(NoticePageInfo pi) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public Notice selectOneNotice(int noticeNo) {
		return sqlSession.selectOne("noticeMapper.selectOneNotice", noticeNo);
	}

	@Override
	public int insertNotice(Notice notice) {
		return sqlSession.insert("noticeMapper.insertNotice", notice);
	}

	@Override
	public int updateNotice(Notice notice) {
		return sqlSession.update("noticeMapper.updateNotice", notice);
	}

	@Override
	public int deleteNotice(int noticeNo) {
		return sqlSession.delete("noticeMapper.deleteNotice", noticeNo);
	}

	@Override
	public int selectListCount() {
		return sqlSession.selectOne("noticeMapper.selectListNoticeCount");
	}

	@Override
	public ArrayList<Notice> selectSearchList(NoticeSearch search) {
		return (ArrayList)sqlSession.selectList("noticeMapper.selectSearchList",search);
	}
	
	
	
}



