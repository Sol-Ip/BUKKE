package com.bukke.notice.service;

import java.util.ArrayList;

import com.bukke.notice.domain.Notice;

public interface NoticeService {

	public ArrayList<Notice> printAll();
	public Notice PrintOne(int nId);
	public int registerNotice();
	public int modifyNotice();
	public int removeNotice();
	}

