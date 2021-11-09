package kh.teamproject.apton.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.board.model.service.BoardService;
import kh.teamproject.apton.board.model.vo.Board;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@RequestMapping(value="boardlistRB123" )
	public ModelAndView selectBoardListRB(ModelAndView mv, String clickedPage){
//		System.out.println("controller selectBoardListRB");
		String viewpage = "error/commonError"; //viewpage는 미리 에러로 지정
		
		int currentPage = 1;
		int listCount=0;
		try {
			listCount = boardService.getListCount();
			viewpage ="boardlistRB";
		} catch (Exception e) {
			viewpage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		int limit = 10;
		int startPage = (((int)((double)currentPage / limit + 0.9)) - 1) * limit + 1;
		int endPage = startPage + limit - 1;
		int maxPage = (int)((double)listCount / limit + 0.9);
		if(clickedPage !=null) {
			if(Integer.parseInt(clickedPage) <=0) {
				currentPage = 1;
			} else if(Integer.parseInt(clickedPage) >maxPage){
				currentPage= maxPage;
			}
			else {
			
				currentPage = Integer.parseInt(clickedPage);
			}
		}
		
		List<Board> blist =null;
		try {
			blist = boardService.selectBoardListRB(currentPage, limit);
			viewpage= "boardlistRB";
		} catch (Exception e) {
			viewpage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		mv.addObject("blist",blist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("limit",limit);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
		
		
		mv.setViewName(viewpage);
		return mv;
	}

}
