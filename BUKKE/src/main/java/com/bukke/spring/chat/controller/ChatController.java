package com.bukke.spring.chat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.chat.domain.Chat;
import com.bukke.spring.chat.domain.Room;
import com.bukke.spring.chat.service.ChatService;
import com.bukke.spring.member.domain.Member;
import com.bukke.spring.shop.domain.Shop;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;

@Controller
public class ChatController {
	
	@Autowired
	private ChatService chatService;
	
	List<Room> roomList = new ArrayList<Room>();
	static int roomNumber = 0;
	
	// 이거는 기능 되는거니까 건들면 죽음 뿐
//	@RequestMapping(value = "chatTest.com", method = RequestMethod.GET)
//	public ModelAndView chatTest() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("chat/testChat");
//		return mv;
//	}
	
	// 채팅 방 테스트
	@RequestMapping(value = "chatRoom.com", method = RequestMethod.GET)
	public ModelAndView chatRoomTest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chat/chatRoom");
		return mv;
	}
	
	// 채팅 테스트
	@RequestMapping(value = "chat.com", method = RequestMethod.GET)
	public ModelAndView chatView() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chat/testChat");
		return mv;
	}
	
	/**
	 * 방 페이지
	 * @return
	 */
//	 
	
	/**
	 * 방 생성하기
	 * @param params
	 * @return
	 * @throws Exception 
	 * @throws JsonIOException 
	 */
	@ResponseBody
	@RequestMapping(value="/createRoom.com", method=RequestMethod.POST)
	public void createRoom(@RequestParam HashMap<Object, Object> params, HttpServletResponse response) throws Exception {
		String roomName = (String) params.get("roomName");
		if(roomName != null && !roomName.trim().equals("")) {
			roomNumber = chatService.printMaxRoomNumber();
			Room room = new Room();
			room.setRoomNumber(++roomNumber);
			room.setRoomName(roomName);
			roomList.add(room);
		}
		new Gson().toJson(roomList,response.getWriter());
		//return result;
	}
	
	/**
	 * 방 정보가져오기
	 * @param params
	 * @return
	 * @throws Exception 
	 * @throws JsonIOException 
	 */
	@ResponseBody
	@RequestMapping(value = "/getRoom.com", method=RequestMethod.POST)
	public void getRoom(@RequestParam HashMap<Object, Object> params,HttpServletResponse response ,HttpSession session) throws Exception {
		Member loginMember = (Member)session.getAttribute("loginMember");
		Shop loginShopper = (Shop)session.getAttribute("loginShopper");
		roomList = chatService.printAllList(loginMember.getMemberId(), loginShopper.getShopId());
		System.out.println(roomList);
		new Gson().toJson(roomList, response.getWriter());
	}
	
	/**
	 * 채팅방 안에 들어가는거
	 * @return
	 */
	@RequestMapping(value="/moveChatting.com")
	public ModelAndView chatting(ModelAndView mv, @RequestParam HashMap<Object, Object> params, HttpSession session) {
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));
		
		List<Room> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		
		if(new_list != null && new_list.size() > 0) {
			Member loginMember = (Member)session.getAttribute("loginMember");
			Shop loginShopper = (Shop)session.getAttribute("loginShopper");
			Room roominfo = new Room();
			roominfo.setMemberId(loginMember.getMemberId());
			roominfo.setMemberId(loginShopper.getShopId());
			Room room = chatService.printOneRoom(roominfo);
			mv.addObject("room", room);
			mv.addObject("roomName", params.get("roomName"));
			mv.addObject("roomNumber", params.get("roomNumber"));
			mv.setViewName("chat/testChat");
		}else {
			mv.setViewName("chat/chatRoom");
		}
		return mv;
	}
	
	// 채팅 등록
	@RequestMapping(value="/chatRegister.com")
	public void registerChat(@ModelAttribute Chat chat) {
		int result = chatService.registerChat(chat);
	}
	
	// 채팅 내역 리스트 가져와서 날짜 출력
	@RequestMapping(value="/chatLogDate.com")
	public void chatDate(@RequestParam("roomNumber") int roomNumber, HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<Chat> chatList = chatService.printAllChat(roomNumber);
		if(!chatList.isEmpty()) {
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson(chatList, response.getWriter());
		}else {
			System.out.println("채팅 내역 리스트 가져오기 실패");
		}
	}
}

