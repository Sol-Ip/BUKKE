package com.bukke.notice.service.logic;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.bukke.notice.domain.Notice;
import com.bukke.notice.domain.NoticePageInfo;
import com.bukke.notice.service.NoticeService;
import com.bukke.notice.store.NoticeStore;
@Service
public class NoticeServiceImpl  implements NoticeService{

	private NoticeStore bStore;

	@Override
	public ArrayList<Notice> printAllNotice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Notice> printrintAllNotice(NoticePageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Notice printOneNotice(int nId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int registerNotice() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyNotice() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeNotice() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

	

}
