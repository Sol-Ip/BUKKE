package com.bukke.chat.domain;

import java.sql.Date;

public class Chat {
	private int chatNo;// 채팅방 번호
	private int chatContentsNo;// 채팅내용 번호
	private String chatTitle;// 채팅방 제목
	private Date chatTime;// 채팅 시간
	private int unidentifiedChatCount; // 미확인채팅수
	private String chatStatus;// 개설여부
}
