package com.bukke.spring.notice.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
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
import com.bukke.spring.notice.domain.NoticeSearch;
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
	@RequestMapping(value ="noticeDetail.com", method =RequestMethod.GET)
	public ModelAndView noticeDetailView(ModelAndView mv, @RequestParam("noticeNo")int noticeNo) {
		Notice notice = nService.printOneNotice(noticeNo);
		if(notice !=null) {
			mv.addObject("notice",notice).setViewName("notice/noticeDetailView");
		}else {
			mv.addObject("msg","실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	  
	//공지사항 등록
	@RequestMapping(value="noticeInsert.com")
	public ModelAndView noticeEnrollView(ModelAndView mv,@ModelAttribute Notice notice,@RequestParam(value="uploadFile",required =false) MultipartFile uploadFile,HttpServletRequest request) {
		if(!uploadFile.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(uploadFile,request);
			if(renameFileName != null) {
				notice.setnOriginalFilename(uploadFile.getOriginalFilename());
				notice.setnRenameFilename(renameFileName);
			}
		}
	//공지사항 이미지 데이터에 저장
		int result = 0;
		String path = "";
		result = nService.registerNotice(notice);
		if(result>0) {
			path = "redirect:noticeList.com";
		}else {
			mv.addObject("msg","등록실패");
			path = "common/errorPage";
		}
		mv.setViewName(path);
		return mv;
}
	//공지사항 파일 저장하기
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 파일 저장 경로 설정
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\noticeFiles";
		// 저장 폴더 선택
		File folder = new File(savePath);
		// 폴더없으면 자동 생성
		if(!folder.exists()) {
			folder.mkdir();
		}
		// 파일명 변경하기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) 
								+ "." + originalFileName.substring(originalFileName.lastIndexOf(".")+1);
								// a.bc.jpg
		String filePath = folder + "\\" + renameFileName;
		// 파일저장
		try {
			file.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 리턴
		return renameFileName;
	}
	
	
	//공지사항 수정 view
	@RequestMapping(value="noticeModifyView.com")
	public String noticeModifyView() {
		//model.addAttribute("notice",nService.printOneNotice(noticeNo));
		return "notice/noticeUpdateView";
	}
	
	//공지사항 수정 
	@RequestMapping(value="noticeUpdate.com", method = RequestMethod.POST)
	public ModelAndView noticeUpdate(ModelAndView mv, @ModelAttribute Notice notice,@RequestParam(value="reloadFile",required=false)MultipartFile reloadFile,HttpServletRequest request) {
		if(reloadFile !=null && !reloadFile.isEmpty()) {
			if(notice.getnOriginalFilename() != "") {
				deleteFile(notice.getnRenameFilename(),request);
			}
			String renameFileName = saveFile(reloadFile,request);
			if(renameFileName != null) {
				notice.setnOriginalFilename(reloadFile.getOriginalFilename());
				notice.setnRenameFilename(renameFileName);
			}
		}
		int result = nService.modifyNotice(notice);
		if(result>0) {
			mv.setViewName("redirect:noticeList.com?noticeNo="+notice.getNoticeNo()); 
		}else {
			mv.addObject("msg","수정 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	//파일 삭제
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\noticeFiles";
		File file = new File(savePath + "\\" + fileName);
		if(file.exists()) {
			file.delete();
		}
	}
	
	
	//공지사항 삭제
	@RequestMapping(value="noticeDelete.com", method = RequestMethod.GET)
	public String noticeRemove(Model model, @RequestParam("noticeNo")int noticeNo,@RequestParam("nRenameFilename")String nRenameFilename,HttpServletRequest request) {
		if(nRenameFilename != "") {
			deleteFile(nRenameFilename,request);
		}		
		int result = nService.removeNotice(noticeNo);
		if(result>0) {
			return "redirect:noticeList.com";
		}else {
			model.addAttribute("msg", "삭제 실패");
			return "common/errorPage";
		}
	}
	//공지사항 검색
	@RequestMapping(value="noticeSearch.com", method = RequestMethod.GET)
	public String noticeSearch(@ModelAttribute NoticeSearch search,Model model) {
		ArrayList<Notice> nSearchList = nService.printSearchAll(search);
		if(!nSearchList.isEmpty()) {
			model.addAttribute("nList", nSearchList);
			model.addAttribute("search", search);
			return "notice/noticeListView";
	}else {
		model.addAttribute("msg","검색 실패");
		return "common/errorPage";
	}
	}
}

