package com.bukke.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IntroduceController {

	@RequestMapping(value="introduce.com", method = RequestMethod.GET)
	public String introduce() {
		
		return "introduce";
	}

}
