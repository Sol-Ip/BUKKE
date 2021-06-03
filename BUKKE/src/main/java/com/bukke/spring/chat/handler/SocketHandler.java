package com.bukke.spring.chat.handler;

import java.io.IOException;
import java.util.HashMap;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class SocketHandler extends TextWebSocketHandler {
	
	// 웹 소켓 세션을 담아 둘 맵
	HashMap<String, WebSocketSession> sessionMap = new HashMap<>();
	
	public void handleTextMessage(WebSocketSession session, TextMessage message) {
		// handleTextMessage 메소드는 메세지 수신 시 실행
		// 메세지 발송
		String msg = message.getPayload();
		for(String key : sessionMap.keySet()) {
			WebSocketSession was = sessionMap.get(key);
			try {
				was.sendMessage(new TextMessage(msg));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// afterConnectionEstablished 메소드는 웹소켓 연결이 되면 동작
		// 소켓 연결
		super.afterConnectionEstablished(session);
		sessionMap.put(session.getId(), session);
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// afterConnectionClosed 메소드는 웹소켓 종료 시 동작
		//소켓 종료
		sessionMap.remove(session.getId());
		super.afterConnectionClosed(session, status);
	}

}
