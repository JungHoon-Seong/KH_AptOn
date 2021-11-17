package kh.teamproject.apton.votesign.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
		if(clickedPage!=null) {
			if(!(clickedPage.matches("[+-]?\\d*(\\.\\d+)?"))) {
				mv.setViewName(viewpage);
				return mv;
			} 
		}
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
		
		int startPage = (((int)((double)currentPage / 5 + 0.9)) - 1) * 5 + 1;
		int endPage = startPage + 5 - 1;
		if(endPage >= maxPage) {
			endPage = maxPage;
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
		
		//마감일과의 비교를 위한 오늘 날짜 구하기
		LocalDate now = LocalDate.now();
		DateTimeFormatter frm = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		
		String formatedNow = now.format(frm);
		
		mv.addObject("volist",volist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("limit",limit);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
		mv.addObject("listCount",listCount);
		mv.addObject("today",formatedNow);
		
		mv.setViewName(viewpage);
		
		return mv;
	}
	
	//투표 등록 페이지
	@RequestMapping(value = "enrollvote", method = RequestMethod.GET)
	public String error() {
		
		return "voteNsign/enrollvote";
	}
	
}
