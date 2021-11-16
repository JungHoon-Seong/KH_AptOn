package kh.teamproject.apton.votesign.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import kh.teamproject.apton.votesign.model.service.VoteSignService;
import kh.teamproject.apton.votesign.model.vo.VoteInfo;

@Controller
public class VoteSignController {

	@Autowired
	private VoteSignService votesignservice;
	
	@RequestMapping(value ="votelist", method = RequestMethod.GET)
	public ModelAndView listOfVoteSign(ModelAndView mv, String clickedPage) {
		
		String viewpage = "error/commonError"; //viewpage는 미리 에러로 지정
		
		int currentPage = 1;
		int listCount=0;
		try {
			listCount = votesignservice.getListCount();
			viewpage ="voteNsign/vslist";
		} catch (Throwable e) {
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
		List<Map> volist = null;
		try {
			volist = votesignservice.votelist(currentPage, limit);
			viewpage= "voteNsign/vslist";
		} catch (Throwable e) {
			viewpage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		mv.addObject("volist",volist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("limit",limit);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
		
		mv.setViewName(viewpage);
		
		return mv;
	}
	
}
