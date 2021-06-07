package com.bukke.spring.chat.handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
// *** 전체 설명 ***
// 1. 세션을 관리하던 map 객체에서 list, HashMap형태로 변경, 
// HashMap의 value자료형도 WebSocketSession에서 Object형으로 변경
// 2. 세션 저장할 때, 현재 접근한 방의 정보가 있는지 체크하고 존재하지 않으면 방의 번호를 입력 후 세션들을 담아 줌
// 3. 종료 시에도 list컬렉션을 순회하면서 해당 키 값의 세션들 삭제
// 4. 메시지를 발송하는 handleTextMessage메소드에서는 현재의 방번호를 가져오고 
// 방정보+세션정보를 관리하는 rls리스트 컬랙션에서 데이터를 조회한 후에 
// 해당 HashMap을 임시 맵에 파싱하여 roomNumber의 키값을 제외한 모든 세션키값들을 웹소켓을 통해 메시지를 보냄
@Component
public class MySocketHandler extends TextWebSocketHandler {
	
	// 웹 소켓 세션을 담아 둘 맵
	//HashMap<String, WebSocketSession> sessionMap = new HashMap<>();
	
	// 웹소켓 세션을 담아둘 리스트 -- roomListSessions
	List<HashMap<String, Object>> rls = new ArrayList<>();
	
	// 방구분을 하고 해당 방에 존재하는 session값들에게만 메시지를 발송하여 구분
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) {
		// handleTextMessage 메소드는 메세지 수신 시 실행
		// 메세지 발송
		// 메세지 전송 시 JSON 파싱을 위해 message.getPayload()를 통해 받은 문자열을
		System.out.println("메세지 왔도!");
		String msg = message.getPayload();
		// jsonToObjectParser에 넣어서 JSONObject값으로 받아서 강제 문자열 형태로 보냄
		JSONObject obj = JsonToObjectParser(msg);

		// jsp에서 보내준 방번호
		String rN = (String) obj.get("roomNumber");
		HashMap<String, Object> temp = new HashMap<String, Object>();
		String number = rN;
		rN = number + ".com";
		System.out.println("rls왔다" + rls.toString());
		if (rls.size() > 0) {
			for (int i = 0; i < rls.size(); i++) {
				String roomNumber = (String) rls.get(i).get("roomNumber"); // 세션리스트에 저장된 방 번호를 가져와서
				System.out.println("rls 값 : " + rls.toString());
				if (roomNumber.equals(rN)) { // 같은 값의 방이 존재한다면
					temp = rls.get(i); // 해당 방번호의 세션리스트에 존재하는 모든 object 값을 가져 옴
					break;
				}
			}
			for (String k : temp.keySet()) {
				if (k.equals("roomNumber")) { //
					continue;
				}

				WebSocketSession wss = (WebSocketSession) temp.get(k);
				if (wss != null) {
					try {
						wss.sendMessage(new TextMessage(obj.toJSONString()));
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
		
		// 해당 방의 세션들만 찾아서 메세지 발송
	
	@SuppressWarnings("unchecked")
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// afterConnectionEstablished 메소드는 웹소켓 연결이 되면 동작
		// 소켓 연결
		super.afterConnectionEstablished(session);
		boolean flag = false;
		String url = session.getUri().toString();
		System.out.println(url);
		String roomNumber = url.split("/chatting/")[1];
		int idx = rls.size(); // 방의 사이즈 조사
		if(rls.size() > 0) {
			for(int i = 0; i < rls.size(); i++) {
				String rN = (String) rls.get(i).get("roomNumber");
				if(rN.equals(roomNumber)) {
					flag = true;
					idx = i;
					break;
				}
			}
		}
		
		if(flag) { // 존재하는 방이라면 세션만 추가
			HashMap<String, Object> map = rls.get(idx);
			map.put(session.getId(), session); // 생성된 세션 Id 값을 클라이언트로 넘김
		} else { //최초 생성하는 방이라면 방번호와 세션을 추가한다.
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("roomNumber", roomNumber);
			map.put(session.getId(), session);
			rls.add(map);
		}
		//세션등록이 끝나면 발급받은 세션ID값의 메시지를 발송한다.
			JSONObject obj = new JSONObject();
			obj.put("type", "getId");
			obj.put("sessionId", session.getId());
			session.sendMessage(new TextMessage(obj.toJSONString()));
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// afterConnectionClosed 메소드는 웹소켓 종료 시 동작
		//소켓 종료
		if(rls.size() > 0) { // 소켓 종료되면 해당 세션 값들을 찾아서 지움
			for(int i = 0; i < rls.size(); i++) {
				rls.get(i).remove(session.getId());
			}
		}
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
