package kh.teamproject.apton.generation.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jdk.nashorn.internal.ir.RuntimeNode.Request;
import kh.teamproject.apton.generation.model.service.GenerationService;
import kh.teamproject.apton.generation.model.vo.Generation;
import kh.teamproject.apton.member.model.vo.Member;

@Controller
public class GenerationController {

	@Autowired
	private GenerationService gService;
	
	@RequestMapping(value = "generation")
	public String genrationUsage() {
		return "generation/generation";
	}
//	@RequestMapping(value = "generation", method = RequestMethod.GET)
//	public ModelAndView generation(ModelAndView mv, HttpServletRequest request) {
//		String viewpage = "";
//		HttpSession session = request.getSession(false);
//		if(session == null) {
//			viewpage = "login";
//			mv.setViewName(viewpage);
//			return mv;
//		} else {
//			Member vo = (Member) session.getAttribute("member");
//			long house_num = vo.getHouseNum();
//			Generation gVo = new Generation();
//			gVo = gService.select(house_num);
//			System.out.println("여기는 에너지 전체 -->  "+gVo);
//			viewpage = "generation/generation";
//			mv.setViewName(viewpage);
//			mv.addObject("generation", gVo);
//		}
//		
//		return mv;
//	}
}
