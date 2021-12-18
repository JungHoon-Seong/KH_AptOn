package kh.teamproject.apton.maintenancecost.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
	public ModelAndView mainCost(ModelAndView mv, HttpServletRequest request) {
		String viewpage = "cost/maintencost";
		List<MaintenanceCost> volist = new ArrayList<MaintenanceCost>();
		HttpSession session = request.getSession(false);
		Member member = (Member)request.getSession().getAttribute("member");
		long house_num = member.getHouseNum();
		volist = mCostService.select(house_num);
//		vo = mCostService.select(vo.getHouseNum());
		System.out.println("vo 확인 --> "+volist);
		mv.setViewName(viewpage);
		return mv;
	}
}
