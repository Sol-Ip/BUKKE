package com.bukke.spring.notice.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bukke.spring.common.NoticePagination;
import com.bukke.spring.common.Pagination;
import com.bukke.spring.notice.domain.Notice;
import com.bukke.spring.notice.domain.NoticePageInfo;
import com.bukke.spring.notice.service.NoticeService;
import com.google.gson.JsonObject;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService nService;

	//전체목록 조회(리스트)
	@RequestMapping(value="noticeList.com" , method = RequestMethod.GET)
	public ModelAndView noticeListView(ModelAndView mv,@RequestParam(value="page", required=false) Integer page) {
		int currentPage = (page !=null) ? page : 1;
		int listCount = nService.getListCount();
		NoticePageInfo pi = NoticePagination.getPageInfo(currentPage, listCount);
		ArrayList<Notice> nList = nService.printAllNotice(pi);
		if(!nList.isEmpty()) {
			mv.addObject("nList",nList);
			mv.addObject("pi",pi);
			mv.setViewName("notice/noticeListView");
		}else {
			mv.addObject("msg","공지사항 조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	//자주 묻는 게시판 작성 뷰
	@RequestMapping(value="noticeWriteView.com",method = RequestMethod.GET)
	public String nocieWriteView() {
		return "notice/noticeWriteForm";
	}
	
	
	//상세정보 조회(detail)
	public String noticeDetailView() {
		return null;
	}
	  
	//공지사항 등록
	@RequestMapping(value="noticeInsert.com")
	public String noticeEnrollView(@ModelAttribute Notice notice,@RequestParam(value="uploadFile",required =false) HttpServletRequest request,Model model) {
		int result = 0;
		result = nService.registerNotice(notice);
		if(result>0) {
			return "redirect:noticeList.com";
		}else {
			model.addAttribute("msg", "공지사항 실패");
			return "common/errorPage.jsp";
		}
	}
	//파일 저장
//	public String saveFile(MultipartFile file, HttpServletRequest request) {
//		//파일 저장 경로 설정
//		String root = request.getSession().getServletContext().getRealPath("resources");
//		String savePath = root+"\\noticeuploadFiles";
//		//저장 폴더 선택
//		File folder = new File(savePath);
//		//폴더가 없을 경우 자동 생성
//		if(!folder.exists()) {
//			folder.mkdir();
//		}
//		String filePath = folder + "\\" + file.getOriginalFilename();
//		//파일 저장
//		try {
//			file.transferTo(new File(filePath));
//		} catch (IllegalStateException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		//파일 경로 리턴
//		return filePath;
//	}
	
	//공지사항 수정 view
	@RequestMapping(value="noticeModifyView.com")
	public String noticeModifyView() {
		//model.addAttribute("notice",nService.printOneNotice(noticeNo));
		return "notice/noticeUpdateView";
	}
	
	//공지사항 수정 
	public String noticeUpdate() {
		return null;
	}
	
	//공지사항 삭제
	public String noticeRemove() {
		return null;
	}
	
}
