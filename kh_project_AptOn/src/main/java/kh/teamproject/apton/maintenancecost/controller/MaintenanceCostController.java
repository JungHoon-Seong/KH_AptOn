package kh.teamproject.apton.maintenancecost.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.maintenancecost.model.service.MaintenanceCostService;
import kh.teamproject.apton.maintenancecost.model.vo.MaintenanceCost;
import kh.teamproject.apton.member.model.vo.Member;

@Controller
public class MaintenanceCostController {
	
	@Autowired
	private MaintenanceCostService mCostService;
	
	@RequestMapping(value = "maintencost", method = RequestMethod.GET)
	public ModelAndView mainCost(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewpage = "error/commonError";
		List<MaintenanceCost> volist = new ArrayList<MaintenanceCost>();
		Member member = (Member)request.getSession().getAttribute("member");
		if(member == null) {
			PrintWriter out = response.getWriter();
				response.setContentType("text/html; charset=UTF-8");
				out.println("<script>alert('로그인이 필요합니다'); location.href='./login';</script>");
				out.flush();
				out.close();
			} else {
				
			
		Date today = new Date();
		SimpleDateFormat formate = new SimpleDateFormat("yyyyMM");
		String date = formate.format(today) + "17";
		String month = date.substring(4, 6);
		long house_num = member.getHouseNum();
		int lastMcNum = Integer.parseInt(date);
		if(month == "01") {
			lastMcNum -= 8900; 
		} else {
			lastMcNum -= 100;
		}
		String lastmcdate = Integer.toString(lastMcNum);
		volist = mCostService.select(house_num);
//		vo = mCostService.select(vo.getHouseNum());
		System.out.println("vo 확인 --> "+volist);
		
		System.out.println("번호 확인 ->"+house_num );
		System.out.println("날짜 확인 ->"+lastmcdate);
		MaintenanceCost vo = new MaintenanceCost();
		MaintenanceCost lastvo = new MaintenanceCost();
		vo.setHouseNum(house_num);
		vo.setMaintenanceCostDate(date);
		lastvo.setHouseNum(house_num);
		lastvo.setMaintenanceCostDate(lastmcdate);
		vo = mCostService.selectprice(vo);
		lastvo = mCostService.selectprice(lastvo);
		System.out.println("최종 vo 확인 -> "+vo);
		System.out.println("전월 lastvo 확인 ->"+lastvo);
		
		viewpage = "cost/maintencost";
		mv.addObject("mcost", vo);
		mv.addObject("lastmcost", lastvo);
		mv.setViewName(viewpage);
			}
		return mv;
			
	}
}
