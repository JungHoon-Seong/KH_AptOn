package kh.teamproject.apton.common_energy_usage.controller;
 

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.common_energy_usage.model.service.CommonUsageService;
import kh.teamproject.apton.common_energy_usage.model.vo.CommonUsage;
 
@Controller
public class CommonUsageController {

	@Autowired
	private CommonUsageService cUService;

	@RequestMapping(value = "allcost", method = RequestMethod.GET)
	public ModelAndView comUsage(ModelAndView mv, HttpServletRequest request, Model model) {
		String viewpage = "";
		String msg = null;
		HttpSession session = request.getSession(false);
		if(session == null) {
			msg = "로그인 후 이용하세요.";
			viewpage = "login";
			model.addAttribute("msg" , msg);
			mv.setViewName(viewpage);
			return mv;
		} else if(session != null) {
			
		
		int cost_num = 20210117;
		String yearStr = String.valueOf(cost_num);
		String year = yearStr.substring(0,4);
		String month = yearStr.substring(4,6);
		int yearInt = cost_num/10000;
		System.out.println("년도 --> " + year);
		System.out.println("월 --> " + month);
		System.out.println("테스트 년도 int 형 --> "+ yearInt);

//		String date = "2021";
//		List<CommonUsage> vo = new ArrayList<CommonUsage>();
//		ArrayList<CommonUsage> vo = new ArrayList<CommonUsage>();
		CommonUsage vo = new CommonUsage();
		CommonUsage lastMonthVo = new CommonUsage();
		vo = cUService.selecet(cost_num);
		List<CommonUsage> list = new ArrayList<CommonUsage>();
		list = cUService.price(yearInt);
		


		System.out.println("각 관리비 번호의 합 --> "+list);

		System.out.println("vo 확인 ->"+vo);
//		System.out.println("공동 관리비 번호->" + vo.getMaintenanceCost());
//		System.out.println("청소비->" + vo.getCleanCost());
//		System.out.println("일반 관리비->" + vo.getmCost());
		
		viewpage = "cost/allcost";
		mv.setViewName(viewpage);
		mv.addObject("vo", vo);
		mv.addObject("allPrice", list);
		}
		return mv;
	}
}