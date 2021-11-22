package kh.teamproject.apton.common_energy_usage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.common_energy_usage.model.service.CommonUsageService;
import kh.teamproject.apton.common_energy_usage.model.vo.CommonUsage;
import kh.teamproject.apton.member.model.vo.Member;

@Controller
public class CommonUsageController {
	
	@Autowired
	private CommonUsageService cUService;
	
//	@RequestMapping(value = "allcost", method = RequestMethod.GET)
//	public ModelAndView comUsage(ModelAndView mv) {
//		String viewpage = "error/commonError";
//		mv.setViewName(viewpage);
//		int cost_num = 20210117;
//		CommonUsage vo = new CommonUsage();
//		try {
//			vo = cUService.selecet(cost_num);
//			System.out.println("vo 확인 출력 -> "+vo);
//			
//		} catch(Throwable e) {
//			viewpage = "error/commonError";
//			mv.addObject("msg", "관리비 조회 오류 발생");
//			mv.addObject("url", "index");
//			e.printStackTrace();
//		}
//		if(vo.getMaintenanceCost() == 0) {
//			mv.setViewName(viewpage);
//		} else if(vo.getMaintenanceCost() != 0) {
//			mv.setViewName("cost/allcost");
//			mv.addObject("vo", vo);
//		}
//		return mv;
//	}
	
	@RequestMapping(value = "allcost", method = RequestMethod.GET)
	public ModelAndView comUsage(ModelAndView mv) {
		String viewpage = "";
		int cost_num = 20210117;
		CommonUsage vo = new CommonUsage();
		vo = cUService.selecet(cost_num);
		
		System.out.println("vo 확인 ->"+vo);
		System.out.println("공동 관리비 번호->" + vo.getMaintenanceCost());
		System.out.println("청소비->" + vo.getCleanCost());
		System.out.println("일반 관리비->" + vo.getmCost());
		viewpage = "cost/allcost";
		mv.setViewName(viewpage);
		mv.addObject("vo", vo);
		return mv;
	}
}
