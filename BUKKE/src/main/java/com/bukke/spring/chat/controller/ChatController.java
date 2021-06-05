package com.bukke.spring.chat.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.chat.domain.Room;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class ChatController {
	
	List<Room> roomList = new ArrayList<Room>();
	static int roomNumber = 0;
	
	@RequestMapping(value = "chatView.com", method = RequestMethod.GET)
	public ModelAndView chatView() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chat/testChat");
		return mv;
	}
	
	/**
	 * 방 페이지
	 * @return
	 */
	@RequestMapping(value="chatRoom.com")
	public ModelAndView room() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chat/chatRoom");
		return mv;
	}
	
	/**
	 * 방 생성하기
	 * @param params
	 * @return
	 */
	
	@RequestMapping(value="/createRoom.com", method=RequestMethod.POST)
	public @ResponseBody String createRoom(@RequestParam HashMap<Object, Object> params) {
		String roomName = (String) params.get("roomName");
		if(roomName != null && !roomName.trim().equals("")) {
			System.out.println("작동 됨....");
			Room room = new Room();
			room.setRoomNumber(++roomNumber);
			room.setRoomName(roomName);
			System.out.println(room.getRoomNumber());
			roomList.add(room);
			System.out.println("roomList : "+ roomList.toString());
		}
		Gson gson = new GsonBuilder().create();
		String result = gson.toJson(roomList);
		return result;
	}
	
	/**
	 * 방 정보가져오기
	 * @param params
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "getRoom.com")
	public List<Room> getRoom(@RequestParam HashMap<Object, Object> params) {
		return roomList;
	}
	
	/**
	 * 채팅방 안에 들어가는거
	 * @return
	 */
	@RequestMapping(value="moveChatting.com")
	public ModelAndView chatting(@RequestParam HashMap<Object, Object> params) {
		ModelAndView mv = new ModelAndView();
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));
		
		List<Room> new_list = roomList.parallelStream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		if(new_list != null && new_list.size() > 0) {
			mv.addObject("roomName", params.get("roomName"));
			mv.addObject("roomNumber", params.get("roomNumber"));
			mv.setViewName("chat/testChat");
		}else {
			mv.setViewName("chat/chatRoom");
		}
		return mv;
	}
	

}
