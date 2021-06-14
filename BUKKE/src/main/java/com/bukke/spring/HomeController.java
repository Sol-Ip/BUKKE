package com.bukke.spring;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.activity.domain.Activity;
import com.bukke.spring.activity.service.ActivityService;
import com.bukke.spring.bukkeclass.domain.BukkeClass;
import com.bukke.spring.bukkeclass.service.BukkeClassService;
import com.bukke.spring.member.service.MemberService;
import com.bukke.spring.review.domain.Review;
import com.bukke.spring.review.service.ReviewService;
import com.bukke.spring.shop.service.ShopService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	private ActivityService aService;
	
	@Autowired
	private BukkeClassService bService;
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private ShopService sService;
	
	@Autowired
	private ReviewService rService;
	
	@RequestMapping(value = "home.com", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		int mCount = mService.getListCount();
		int sCount = sService.getListCount();
		int aCount = aService.getListCount();
		int cCount = bService.getListCount();
		model.addAttribute("mCount", mCount); 
		model.addAttribute("sCount", sCount); 
		model.addAttribute("aCount", aCount); 
		model.addAttribute("cCount", cCount); 
		
		//좋아요 많은순 리스트 탑3개뽑기
		ArrayList<Review> rListTopLikes = rService.printTopLikesReview();
		// 액티비티 최근 글 상위2개 목록
		ArrayList<Activity> fourActList = aService.printHomeFourActivityListDesc(); 
		// 클래스 최근 글 상위4개 목록
		ArrayList<BukkeClass> fourClaList = bService.printHomeFourClassListDesc();
		
		
		model.addAttribute("rListTopLikes",rListTopLikes);
		model.addAttribute("fourActList", fourActList);
		model.addAttribute("fourClaList", fourClaList);
		
		return "home";
	}
	
	@RequestMapping(value="sample.com", method=RequestMethod.GET)
	public String sample() {
		
		return "sample";
	}
	
	@RequestMapping(value="paytest.com", method=RequestMethod.GET)
	public String paytest() {
		
		return "common/payment";
	}
	

}
