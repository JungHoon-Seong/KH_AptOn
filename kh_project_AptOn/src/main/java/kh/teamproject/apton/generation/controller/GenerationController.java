package kh.teamproject.apton.generation.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.io.PrintWriter;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import kh.teamproject.apton.generation.model.service.GenerationService;
import kh.teamproject.apton.generation.model.vo.Generation;
import kh.teamproject.apton.member.model.vo.Member;

@Controller
public class GenerationController {

	@Autowired
	private GenerationService gService;
	
	@RequestMapping(value = "generation", method = RequestMethod.GET)
	public ModelAndView genrationUsage(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws Exception{
		Date today = new Date();
		Date test = null;
		SimpleDateFormat formate = new SimpleDateFormat("yyyyMM");
		SimpleDateFormat formate1 = new SimpleDateFormat("yyyymmdd");
		
		String date = formate.format(today);
		System.out.println("현재 날짜 값 -- >" +date);
		System.out.println(today);
		String viewpage = "";
		Member member = (Member)request.getSession().getAttribute("member");
		// 로그인하지 않으면 볼 수 없음
		if(member == null) {
			PrintWriter out = response.getWriter();
				response.setContentType("text/html; charset=UTF-8");
				out.println("<script>alert('로그인이 필요합니다'); location.href='./login';</script>");
				out.flush();
				out.close();
			}  else {
			long house_num = member.getHouseNum();
			String dateStr = date+"17";
			
			try {
				test = formate1.parse(dateStr);
			}catch(ParseException e) {
				e.printStackTrace();
			}
			
			
			System.out.println("현재 날짜 -->"+ dateStr);
			System.out.println("세션 id 확인 --> "+ house_num);
			System.out.println(test);
			List<Generation> volist = new ArrayList<Generation>();
			Generation vo = new Generation();
			volist = gService.select(house_num);
			vo.setHouseNum(house_num);
			vo.seteDate(dateStr);
			System.out.println("vo 확인 !!!!!!!!!!!!!!!!!!"+vo);
			vo = gService.genCost(vo);
			System.out.println("volist 0번째 날짜 --> " + volist.get(0).geteDate());
			
//			for(int i=0; i<volist.size(); i++) {
//				if(volist.get(i).geteDate() == dateStr) {
//					System.out.println("날짜 매칭 성공!!");
//					vo = volist.get(i);
//					System.out.println("volist get i --> "+volist.get(i));
//					mv.addObject("gener", vo);
//				} else {}
//			}
			System.out.println(volist);
			System.out.println("에너지 사용량 값 조회--> " + vo);
			viewpage = "generation/generation";
			mv.setViewName(viewpage);
			mv.addObject("gener", vo);
		}
		
		return mv;
	}

}
