package kh.teamproject.apton.admin.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.admin.notice.service.NoticeInterface;
import kh.teamproject.apton.admin.notice.service.NoticeService;
import kh.teamproject.apton.admin.notice.vo.Notice;
import kh.teamproject.apton.defectreception.model.vo.DrBoard;
import kh.teamproject.apton.votesign.model.vo.VoteInfo;

@Controller
public class NoticeController {

	@Autowired
	private NoticeInterface noticeService;    
	
	@RequestMapping(value = "/noticelist", method = RequestMethod.GET)
	public ModelAndView selectNoticeList(ModelAndView mv, String clickedPage, @RequestParam(value = "p", defaultValue = "1")String pageNum) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		final int PAGE_SIZE = 6;
		final int PAGE_BLOCK = 5;
		int currentPage = 1;
		int listCount = 0;
		int pageCount = 0;
		try {
			listCount =noticeService.getListCount();
			viewPage = "/notice/noticelist";
			
		} catch (Exception e) {
			mv.addObject("msg", "게시판 오류발생");
			mv.addObject("url", "index");
			e.printStackTrace();
		}
		
		if (pageNum != null) {
			clickedPage = pageNum;
		}
		
		int startPage = ((int)((double)currentPage / PAGE_SIZE + 0.9) - 1) * PAGE_SIZE  + 1;
		
		pageCount = (listCount / PAGE_SIZE) + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		
		int endPage = startPage + PAGE_SIZE - 1;
		if(endPage > pageCount) endPage=pageCount;
		int maxPage = (int)((double)listCount / PAGE_SIZE + 0.9);
		if (clickedPage != null) {
			if (Integer.parseInt(clickedPage) <= 0) {
				currentPage = 1;
			} else if(Integer.parseInt(clickedPage) > maxPage){
				currentPage = maxPage;
			}else {
				currentPage = Integer.parseInt(clickedPage);
			}
		}
		
		if (currentPage % PAGE_BLOCK == 0) {
			startPage = (currentPage / PAGE_BLOCK - 1) * PAGE_BLOCK + 1;
		}else {
			startPage = (currentPage / PAGE_BLOCK) * PAGE_BLOCK + 1;
		}
		
		List<Notice> noticelist = null;
		try {
			noticelist = noticeService.selectNoticeList(currentPage, PAGE_SIZE);
			viewPage= "/notice/noticelist";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		
		mv.addObject("noticelist",noticelist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("pageCount",pageCount);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
		
		System.out.println("notice: -->"+noticelist);
		mv.setViewName(viewPage);
		return mv;
	}
	
	@RequestMapping(value = "notice-detail", method = RequestMethod.GET)
	public ModelAndView selectContentView(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int notice_num ) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		System.out.println("글 번호: ->"+ notice_num);
		List<Notice> noticelist = null;
		try {
			noticelist = noticeService.selectContentView(notice_num);
			viewPage= "/notice/noticedetail";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		System.out.println("noticedetail: -->"+noticelist);
		mv.addObject("noticelist",noticelist);
		mv.setViewName(viewPage);
		return mv;
	}
	
	@RequestMapping(value = "/adnoticelist", method = RequestMethod.GET)
	public ModelAndView selectAdNoticelist(ModelAndView mv, String clickedPage, @RequestParam(value = "p", defaultValue = "1")String pageNum) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		final int PAGE_SIZE = 6;
		final int PAGE_BLOCK = 5;
		int currentPage = 1;
		int listCount = 0;
		int pageCount = 0;
		try {
			listCount =noticeService.getListCount();
			viewPage = "/notice/admin_notice";
			
		} catch (Exception e) {
			mv.addObject("msg", "게시판 오류발생");
			mv.addObject("url", "index");
			e.printStackTrace();
		}
		
		if (pageNum != null) {
			clickedPage = pageNum;
		}
		
		int startPage = ((int)((double)currentPage / PAGE_SIZE + 0.9) - 1) * PAGE_SIZE  + 1;
		
		pageCount = (listCount / PAGE_SIZE) + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		
		int endPage = startPage + PAGE_SIZE - 1;
		if(endPage > pageCount) endPage=pageCount;
		int maxPage = (int)((double)listCount / PAGE_SIZE + 0.9);
		if (clickedPage != null) {
			if (Integer.parseInt(clickedPage) <= 0) {
				currentPage = 1;
			} else if(Integer.parseInt(clickedPage) > maxPage){
				currentPage = maxPage;
			}else {
				currentPage = Integer.parseInt(clickedPage);
			}
		}
		
		if (currentPage % PAGE_BLOCK == 0) {
			startPage = (currentPage / PAGE_BLOCK - 1) * PAGE_BLOCK + 1;
		}else {
			startPage = (currentPage / PAGE_BLOCK) * PAGE_BLOCK + 1;
		}
		
		List<Notice> noticelist = null;
		try {
			noticelist = noticeService.selectNoticeList(currentPage, PAGE_SIZE);
			viewPage= "/notice/admin_notice";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		
		mv.addObject("noticelist",noticelist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("pageCount",pageCount);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
		
		System.out.println("adnotice: -->"+noticelist);
		mv.setViewName(viewPage);
		return mv;
	}
	
	
	@RequestMapping(value = "adnotice-detail", method = RequestMethod.GET)
	public ModelAndView selectAdContentView(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int notice_num ) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		System.out.println("글 번호: ->"+ notice_num);
		List<Notice> noticelist = null;
		try {
			noticelist = noticeService.selectContentView(notice_num);
			viewPage= "/notice/admin_noticedetail";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		System.out.println("admin_noticedetail: -->"+noticelist);
		mv.addObject("noticelist",noticelist);
		mv.setViewName(viewPage);
		return mv;
	}
	
	
	//삭제
	@RequestMapping(value = "/noticedelete", method = RequestMethod.POST)
	public String deleteNotice(ModelAndView mv, @RequestParam("deletecheck")List<String> deletenum){
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		System.out.println("받아온 삭제 글 번호: ->"+ deletenum);
		int delete = 0;
		try {
			for(String notice_num : deletenum) {
				delete = noticeService.deleteNotice(notice_num);
			System.out.println("삭제하러간 삭제 글 번호"+ notice_num);
			}
			viewPage= "/notice/admin_notice";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		System.out.println("noticedetail: -->"+delete);
		mv.addObject("noticelist",delete);
		mv.setViewName(viewPage);
		return "redirect: ./adnoticelist";
	}
	
	// 공지 등록 
	@RequestMapping(value = "noticeinsert", method = RequestMethod.GET)
	public String insertnotice() {

		return "notice/admin_notice_insert";
	}

	
	@RequestMapping(value = "notice_insert", method = RequestMethod.POST)
	@ResponseBody
	public String insertnotice(String msg, HttpServletRequest request) {
		String noticetitle = request.getParameter("noticetitle");
		String adminId = request.getParameter("adminId");
		String content = request.getParameter("content");


		System.out.println("noticetitle: " + noticetitle);
		System.out.println("adminId"+ adminId);
		System.out.println("content" + content);
	
		try {
			Notice vo = new Notice( adminId, noticetitle ,content);
			int result = noticeService.NoticeInsert(vo);
			msg = "success";
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return msg;
	}

	@RequestMapping(value = "noticeupdate", method = RequestMethod.GET)
	public ModelAndView updatenotice(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int notice_num) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		//보안 높일려면 가구번호랑 세션아디 비교하여 확인기능 필요할듯
		
		System.out.println("글 번호: ->"+ notice_num);
		List<Notice> noticelist = null;
		try {
			noticelist = noticeService.selectContentView(notice_num);
			viewPage= "/notice/admin_notice_update";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
		}
		
		System.out.println("noticedetail: -->"+noticelist);
		mv.addObject("noticelist",noticelist);
		mv.setViewName(viewPage);

		return mv;

	}
	
	@RequestMapping(value = "noticeupdate1", method = RequestMethod.POST)
	@ResponseBody
	public String updatenotice(String msg, HttpServletRequest request) {
		String noticenum = request.getParameter("notice_num");
		String noticetitle = request.getParameter("noticetitle");
		String adminId = request.getParameter("adminId");
		String content = request.getParameter("content");


		System.out.println("updatenotice_num: " + noticenum);
		System.out.println("updatenoticetitle: " + noticetitle);
		System.out.println("updateadminId"+ adminId);
		System.out.println("updatecontent" + content);
	
		try {
			Notice vo = new Notice(noticenum ,adminId, noticetitle ,content);
			int result = noticeService.NoticeUpdate(vo);
			msg = "success";
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return msg;
	}
}
