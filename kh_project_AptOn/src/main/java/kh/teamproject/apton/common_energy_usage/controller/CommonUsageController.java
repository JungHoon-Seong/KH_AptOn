package kh.teamproject.apton.common_energy_usage.controller;
 

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
		// 현재 날짜를 년 월 가져오기
		Date today = new Date();
		SimpleDateFormat formate = new SimpleDateFormat("yyyyMM");
		String date = formate.format(today);
		System.out.println("현재 날짜 값 -- >" +date);
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
			
		String cost_numStr = date + "17";
		int cost_numInt = Integer.parseInt(cost_numStr);
		System.out.println("스트링형 들어오는 현재 날짜와 월 --> "+cost_numStr);
		System.out.println("인트형  들어오는 현재 날짜와 월--> "+cost_numInt );
		
		String year = date.substring(0,4);
		String month = date.substring(4,6);
		System.out.println("몇월인지 확인 --> "+ month);
		
		int lastCost_num = 0;
		if(month == "01") {
			lastCost_num = cost_numInt - 8900;
		} else {
			lastCost_num = cost_numInt - 100;
		}
		int yearInt = cost_numInt/10000;
		System.out.println("년도 --> " + year);
		System.out.println("월 --> " + month);
		
		CommonUsage vo = new CommonUsage();
		CommonUsage lastMonthVo = new CommonUsage();
		
		vo = cUService.selecet(cost_numInt);
		lastMonthVo = cUService.selecet(lastCost_num);
		
		List<CommonUsage> list = new ArrayList<CommonUsage>();
		List<CommonUsage> lastyear = new ArrayList<CommonUsage>();
		list = cUService.price(yearInt);
		lastyear = cUService.price(yearInt-1);
		


		System.out.println("각 관리비 번호의 합 --> "+list);
		System.out.println("작년 관리비 --> "+lastyear);

		System.out.println("vo 확인 ->"+vo);
		System.out.println("lastMonthVo 확인 ->" + lastMonthVo);
//		System.out.println("공동 관리비 번호->" + vo.getMaintenanceCost());
//		System.out.println("청소비->" + vo.getCleanCost());
//		System.out.println("일반 관리비->" + vo.getmCost());
		
		viewpage = "cost/allcost";
		mv.setViewName(viewpage);
		mv.addObject("vo", vo);
		mv.addObject("lastMonthVo", lastMonthVo);
		mv.addObject("allPrice", list);
		mv.addObject("lastyear", lastyear);
		}
		return mv;
	}
	
	@RequestMapping(value = "adallcost", method = RequestMethod.GET)
	public ModelAndView admincomUsage(ModelAndView mv, HttpServletRequest request, Model model) {
		// 현재 날짜를 년 월 가져오기
		Date today = new Date();
		SimpleDateFormat formate = new SimpleDateFormat("yyyyMM");
		String date = formate.format(today);
		System.out.println("현재 날짜 값 -- >" +date);
		String viewpage = "";
		
			
		String cost_numStr = date + "17";
		int cost_numInt = Integer.parseInt(cost_numStr);
		System.out.println("스트링형 들어오는 현재 날짜와 월 --> "+cost_numStr);
		System.out.println("인트형  들어오는 현재 날짜와 월--> "+cost_numInt );
		
		String year = date.substring(0,4);
		String month = date.substring(4,6);
		System.out.println("몇월인지 확인 --> "+ month);
		
		int lastCost_num = 0;
		if(month == "01") {
			lastCost_num = cost_numInt - 8900;
		} else {
			lastCost_num = cost_numInt - 100;
		}
		int yearInt = cost_numInt/10000;
		System.out.println("년도 --> " + year);
		System.out.println("월 --> " + month);
		
		CommonUsage vo = new CommonUsage();
		CommonUsage lastMonthVo = new CommonUsage();
		
		vo = cUService.selecet(cost_numInt);
		lastMonthVo = cUService.selecet(lastCost_num);
		
		List<CommonUsage> list = new ArrayList<CommonUsage>();
		List<CommonUsage> lastyear = new ArrayList<CommonUsage>();
		list = cUService.price(yearInt);
		lastyear = cUService.price(yearInt-1);
		


		System.out.println("각 관리비 번호의 합 --> "+list);
		System.out.println("작년 관리비 --> "+lastyear);

		System.out.println("vo 확인 ->"+vo);
		System.out.println("lastMonthVo 확인 ->" + lastMonthVo);
//		System.out.println("공동 관리비 번호->" + vo.getMaintenanceCost());
//		System.out.println("청소비->" + vo.getCleanCost());
//		System.out.println("일반 관리비->" + vo.getmCost());
		
		viewpage = "cost/adallcost";
		mv.setViewName(viewpage);
		mv.addObject("vo", vo);
		mv.addObject("lastMonthVo", lastMonthVo);
		mv.addObject("allPrice", list);
		mv.addObject("lastyear", lastyear);
		
		return mv;
	}
}