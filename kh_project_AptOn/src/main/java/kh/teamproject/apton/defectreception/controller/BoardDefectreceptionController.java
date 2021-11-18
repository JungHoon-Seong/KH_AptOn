package kh.teamproject.apton.defectreception.controller;

import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;
import kh.teamproject.apton.defectreception.service.BoardDefectreceptionService;
import kh.teamproject.apton.member.model.service.MemberService;

@Controller
public class BoardDefectreceptionController {
	
	@Autowired
	private BoardDefectreceptionService boardService;
	
	@RequestMapping(value = "board-defectreception", method = RequestMethod.GET)
	public ModelAndView selectBoardList(ModelAndView mv, String clickedPage, @RequestParam(value = "p", defaultValue = "1")String pageNum) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		
		final int PAGE_SIZE = 6;
		final int PAGE_BLOCK = 3;
		int currentPage = 1;
		int listCount = 0;
		int pageCount = 0;
		try {
			listCount = boardService.getListCount();
			viewPage = "/defectreception/defectreception_boardlist";
			
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
		
		List<DrBoard> drbList = null;
		try {
			drbList = boardService.selectBoardList(currentPage, PAGE_SIZE);
			viewPage= "/defectreception/defectreception_boardlist";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		mv.addObject("drbList",drbList);
		mv.addObject("currentPage",currentPage);
		mv.addObject("pageCount",pageCount);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
		
		
		mv.setViewName(viewPage);
		return mv;
	}
	
	@RequestMapping(value = "view-defectreception", method = RequestMethod.GET)
	public ModelAndView selectContentView(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int drno ) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		
		List<DrBoard> drbList = null;
		try {
			drbList = boardService.selectContentView(drno);
			viewPage= "/defectreception/defectreception_contentview";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		mv.addObject("drbList",drbList);
		mv.setViewName(viewPage);
		return mv;
	}
	
	@RequestMapping(value = "insert-defectreception", method = RequestMethod.GET)
	public String insertContent() {
		return "./defectreception/defectreception_insert";
	}
	
	@RequestMapping(value = "insert-defectreception", method = RequestMethod.POST)
	public ModelAndView insertContent(ModelAndView mv, @RequestParam(value="t" , defaultValue = "0")String title,
			@RequestParam(value="c" , defaultValue = "0")String Content) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함

		int drBoardResult = 0;
		
		//SJHTODO 세션에 따라 호수번호를 입력받아야함 추후 처리
		int houseNum = 51004;
		String adminId = "admin2";
		int state = 0;
		String ProcessingDetail = "처리중";
		
		DrBoard dvo = new DrBoard(houseNum, adminId, title,Content,state,ProcessingDetail);
		drBoardResult = boardService.insertBoard(dvo);
			
		if (drBoardResult == 0) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
		}else {
			viewPage= "./board-defectreception";
		}
		
		
		mv.addObject("result",drBoardResult);
		mv.setViewName("redirect: ./board-defectreception");
		return mv;
	}
	
	@RequestMapping(value = "update-defectreception", method = RequestMethod.POST)
	public ModelAndView updateContent() {
		return null;
	}
	
	@RequestMapping(value = "delete-defectreception", method = RequestMethod.POST)
	public ModelAndView deleteontent() {
		return null;
	}

	
}
