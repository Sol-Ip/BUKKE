package com.bukke.spring.chat.store;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.chat.domain.Chat;
import com.bukke.spring.chat.domain.Room;
import com.bukke.spring.member.domain.Member;

@Repository
public class ChatStore {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 채팅방 리스트
	public ArrayList<Room> selectAllList(String memberId) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectAllList", memberId);
	}
	
	// 최신 채팅방 번호
	public int selectMaxRoomNumber() {
		return sqlSession.selectOne("chatMapper.selectMaxRoomNumber");
	}
	
	// 선택한 방 정보 가져오기
	public Room selectOneRoom(Room roominfo) {
		return sqlSession.selectOne("chatMapper.selectOneRoom", roominfo);
	}
		
	// 채팅방 등록
	public int insertChatRoom(HashMap<Object, Object> chatMap) {
		return sqlSession.insert("chatMapper.insertChatRoom", chatMap);
	}

	// 채팅 내용 저장
	public int insertChat(Chat chat) {
		return sqlSession.insert("chatMapper.insertChat", chat);
	}

	// 채팅 내용 가져오기
	public ArrayList<Chat> selectAllChat(int roomNumber) {
		return (ArrayList)sqlSession.selectList("chatMapper.selectAllChat", roomNumber);
	}

	public List<Room> selectAllListForShop(String shopId) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("chatMapper.selectAllListForShop", shopId);
	}

}
