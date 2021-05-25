package com.bukke.spring.notice.service.logic;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.notice.domain.Notice;
import com.bukke.spring.notice.domain.NoticePageInfo;
import com.bukke.spring.notice.domain.NoticeSearch;
import com.bukke.spring.notice.service.NoticeService;
import com.bukke.spring.notice.store.NoticeStore;
@Service
public class NoticeServiceImpl  implements NoticeService{
	
	@Autowired
	private NoticeStore nStore;


	@Override
	public int getListCount() {
		return nStore.selectListCount();
	}
	
	@Override
	public ArrayList<Notice> printAllNotice(NoticePageInfo pi) {
		 return nStore.selectAllNoticeList(pi); 
	}

	/*
	 * @Override public ArrayList<Notice> printrintAllNotice(NoticePageInfo pi) { //
	 * TODO Auto-generated method stub return null; }
	 */

	@Override
	public Notice printOneNotice(int noticeNo) {
		return nStore.selectOneNotice(noticeNo);
	}

	@Override
	public int registerNotice(Notice notice) {
		return nStore.insertNotice(notice);
	}

	@Override
	public int modifyNotice(Notice notice) {
		return nStore.updateNotice(notice);
	}

	@Override
	public int removeNotice(int noticeNo) {
		return nStore.deleteNotice(noticeNo);
	}

	@Override
	public ArrayList<Notice> printSearchAll(NoticeSearch search) {
		return nStore.selectSearchList(search);
	}

	

	

}
