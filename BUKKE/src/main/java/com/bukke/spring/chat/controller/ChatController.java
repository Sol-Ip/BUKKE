package com.bukke.spring.chat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChatController {
	
	
	@RequestMapping(value = "chatView.com", method = RequestMethod.GET)
	public ModelAndView chatView() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chat/chatting");
		return mv;

	}

}
