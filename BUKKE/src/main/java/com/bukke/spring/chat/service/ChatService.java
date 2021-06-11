package com.bukke.spring.chat.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.chat.domain.Chat;
import com.bukke.spring.chat.domain.Room;
import com.bukke.spring.chat.store.ChatStore;
import com.bukke.spring.member.domain.Member;
@Service
public class ChatService {

	@Autowired
	private ChatStore chatStore;
	
	// 채팅방 리스트
	public ArrayList<Room> printAllList(String memberId) {
		return chatStore.selectAllList(memberId);
	}
	
	// 최신 방번호
	public int printMaxRoomNumber() {
		return chatStore.selectMaxRoomNumber();
	}
	
	// 선택한 방 정보 가져오기
	public Room printOneRoom(Room roominfo) {
		return chatStore.selectOneRoom(roominfo);
	}
		
		
	// 채팅방 등록
	public int registerChatRoom(HashMap<Object, Object> chatMap) {
		return chatStore.insertChatRoom(chatMap);
	}


	// 채팅 내역 저장
	public int registerChat(Chat chat) {
		return chatStore.insertChat(chat);
	}

	// 채팅 내역 가져오기
	public ArrayList<Chat> printAllChat(int roomNumber) {
		return chatStore.selectAllChat(roomNumber);
	}

	public List<Room> printAllListForShop(String shopId) {
		// TODO Auto-generated method stub
		return chatStore.selectAllListForShop(shopId);
	}


}
