package kh.teamproject.apton.maintenancecost.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.maintenancecost.model.service.MaintenanceCost;



@Controller
public class MaintenanceCostController {
	
	@Autowired
	private MaintenanceCost mCostService;
	
	@RequestMapping(value = "maintencost", method = RequestMethod.GET)
	public ModelAndView mainCost(ModelAndView mv) {
		String viewpage = "cost/maintencost";
		mv.setViewName(viewpage);
		return mv;
	}
}
