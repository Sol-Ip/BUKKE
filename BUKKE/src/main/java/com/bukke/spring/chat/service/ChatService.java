package com.bukke.spring.chat.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bukke.spring.chat.domain.Chat;
import com.bukke.spring.chat.domain.Room;
import com.bukke.spring.chat.store.ChatStore;
@Service
public class ChatService {

	@Autowired
	private ChatStore chatStore;
	
	// 채팅방 등록
	public int registerChatRoom(Room room) {
		return chatStore.insertChatRoom(room);
	}

	// 채팅방 리스트
	public ArrayList<Room> printChatRoom() {
		 return chatStore.selectChatRoom();
	}
	
	public int printMaxRoomNumber() {
		return chatStore.selectMaxRoomNumber();
	}

	// 채팅 내역 저장
	public int registerChat(Chat chat) {
		return chatStore.insertChatRoom(chat);
	}

	// 채팅 내역 가져오기
	public ArrayList<Chat> printChat(int roomNumber) {
		return chatStore.selectChat(roomNumber);
	}


}
