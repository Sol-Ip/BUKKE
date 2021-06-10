package com.bukke.spring.chat.store;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.chat.domain.Chat;
import com.bukke.spring.chat.domain.Room;
@Repository
public class ChatStore {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 채팅방 등록
	public int insertChatRoom(Room room) {
		return sqlSession.insert("chatMapper.insertChatRoom", room);
	}

	// 채팅방 리스트
	public ArrayList<Room> selectChatRoom() {
		return (ArrayList)sqlSession.selectList("chatMapper.selectChatRoom");
	}
	
	public int selectMaxRoomNumber() {
		return sqlSession.selectOne("chatMapper.selectMaxRoomNumber");
	}

	public int insertChatRoom(Chat chat) {
		return sqlSession.insert("chatMapper.insertChat", chat);
	}

	public ArrayList<Chat> selectChat(int roomNumber) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectChat", roomNumber);
	}

}
