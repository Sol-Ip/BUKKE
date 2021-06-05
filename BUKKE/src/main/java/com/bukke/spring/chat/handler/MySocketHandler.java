package com.bukke.spring.chat.handler;

import java.io.IOException;
import java.util.HashMap;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class MySocketHandler extends TextWebSocketHandler {
	
	// 웹 소켓 세션을 담아 둘 맵
	HashMap<String, WebSocketSession> sessionMap = new HashMap<>();
	
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) {
		// handleTextMessage 메소드는 메세지 수신 시 실행
		// 메세지 발송
		// 메세지 전송 시 JSON 파싱을 위해 message.getPayload()를 통해 받은 문자열을
		String msg = message.getPayload();
		// jsonToObjectParser에 넣어서 JSONObject값으로 받아서 강제 문자열 형태로 보냄
		JSONObject obj = JsonToObjectParser(msg);
		
		// jsp에서 보내준 방번호
		String rN = (String) obj.get("roomNumber");
		String number = rN;
		rN = number + ".com";
		
		for(String key : sessionMap.keySet()) {
			WebSocketSession wss = sessionMap.get(key);
			try {
				wss.sendMessage(new TextMessage(obj.toJSONString()));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// afterConnectionEstablished 메소드는 웹소켓 연결이 되면 동작
		// 소켓 연결
		super.afterConnectionEstablished(session);
		// 생성된 세션을 저장하면 발신 메세지늬 타입은 getId라고 명시 후
		// 생성된 세션 Id 값을 클라이언트로 넘김
		sessionMap.put(session.getId(), session);
		JSONObject obj = new JSONObject();
		// 클라이언트에서 type 값을 통해 메세지와 초기 설정 값 구분할 예정
		obj.put("type", "getId");
		obj.put("sessionId", session.getId());
		session.sendMessage(new TextMessage(obj.toJSONString()));
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// afterConnectionClosed 메소드는 웹소켓 종료 시 동작
		//소켓 종료
		sessionMap.remove(session.getId());
		super.afterConnectionClosed(session, status);
	}
	
	// JSON 파일이 들어오면 파싱해주는 함수
	// json 형태의 문자열을 파라미터로 받아서 simpleJson의 파서를 활용하고 JSONObject로 파싱 처리
	private static JSONObject JsonToObjectParser(String jsonStr) {
		JSONParser parser = new JSONParser();
		JSONObject obj = null;
		try {
			obj = (JSONObject) parser.parse(jsonStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return obj;
	}

}
