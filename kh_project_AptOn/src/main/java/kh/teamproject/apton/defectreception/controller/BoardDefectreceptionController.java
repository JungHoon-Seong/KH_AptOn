package kh.teamproject.apton.defectreception.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;
import kh.teamproject.apton.defectreception.service.BoardDefectreceptionService;

@Controller
public class BoardDefectreceptionController {
	
	@Autowired
	private BoardDefectreceptionService boardService;
	
	@RequestMapping(value = "board-defectreception")
	public ModelAndView selectBoardList(ModelAndView mv, String clickedPage) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
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
		
		int limit = 6;
		int startPage = ((int)((double)currentPage / limit + 0.9) - 1) * limit  + 1;
		
		pageCount = (listCount / limit) + (listCount % limit == 0 ? 0 : 1);
		
		int endPage = startPage + limit - 1;
		if(endPage > pageCount) endPage=pageCount;
		System.out.println("listCount: "+ listCount);
		System.out.println("endpage: "+ endPage);
		int maxPage = (int)((double)listCount / limit + 0.9);
		if (clickedPage != null) {
			if (Integer.parseInt(clickedPage) <= 0) {
				currentPage = 1;
			} else if(Integer.parseInt(clickedPage) > maxPage){
				currentPage = maxPage;
			}else {
				currentPage = Integer.parseInt(clickedPage);
			}
		}
		
		List<DrBoard> drbList = null;
		try {
			drbList = boardService.selectBoardList(currentPage, limit);
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
	
	@RequestMapping(value = "view-defectreception")
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
	
	//SJH TODO 관리자단 
	@RequestMapping(value = "manage-defectreception")
	public ModelAndView selectManageBoardList(ModelAndView mv, String clickedPage) {
		return mv;
	}
	

	
}
