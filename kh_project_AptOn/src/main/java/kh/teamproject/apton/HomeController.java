package kh.teamproject.apton;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.admin.model.vo.Admin;
import kh.teamproject.apton.member.model.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homeindex(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "error", method = RequestMethod.GET)
	public ModelAndView error(ModelAndView mv) {
		mv.setViewName("error/commonError");
		
		return mv;
	}
	@RequestMapping(value = "adminmain", method = RequestMethod.GET)
	public ModelAndView sidebar(ModelAndView mv) {
		mv.setViewName("adminmain");
		
		return mv;
	}
	
	// 임시 admin 로그인용 template by NaHyowon 2021.11.15
	@RequestMapping(value = "adminlogin", method =RequestMethod.GET )
	public String managerLogin(HttpServletRequest request) {
		Admin admin = new Admin();
		admin.setAdminId("admin01");
		admin.setAdminPwd("pwd01");
		admin.setAdminLog("20211115"); // 임시로 yyyymmdd 형식 by NaHyowon 2021.11.15
		request.getSession().setAttribute("admin", admin);

		return "loginTemplate/adminLogin";
	}
	
	// 임시 member 로그인용 template by NaHyowon 2021.11.15
	@RequestMapping(value = "memberlogin", method =RequestMethod.GET )
	public String memberLogin(HttpServletRequest request) {
		Member member= new Member();
		member.setHouseNum(202111151102L); //2021.11.15 가입 1102호 주민이라는 뜻 
		member.setName("입주민01");
		member.setPwd("pwd01");
		member.setPhone("01012341234");
		member.setMemberSign(null);
		request.getSession().setAttribute("member", member);
		
		return "loginTemplate/memberLogin";
	}
	
}
