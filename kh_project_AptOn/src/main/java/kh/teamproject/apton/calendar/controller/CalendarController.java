package kh.teamproject.apton.calendar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.calendar.model.service.CalendarServicelmpl;
import kh.teamproject.apton.calendar.model.vo.Calendar;



@Controller
public class CalendarController {

	@Autowired
	private CalendarServicelmpl calendarservice;   
	
	// 일정 보기 
	@RequestMapping(value = "calendar", method = RequestMethod.GET)
	public String calendar() {

		return "calendar/calendar";
	}

	@RequestMapping(value = "/calendarlist", method = RequestMethod.GET)
	public ModelAndView selectAdNoticelist(ModelAndView mv) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
					
		List<Calendar> calendar = null;
		try {
			calendar = calendarservice.getCalendar();
			viewPage= "calendar/calendar";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		
		System.out.println("달력 정보 calendar: -->"+calendar);
		mv.setViewName(viewPage);
		return mv;
	}

}
