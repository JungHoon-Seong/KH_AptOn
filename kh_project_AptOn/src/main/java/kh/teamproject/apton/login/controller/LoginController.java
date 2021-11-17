package kh.teamproject.apton.login.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger; 
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kh.teamproject.apton.admin.model.service.AdminService;
import kh.teamproject.apton.admin.model.vo.Admin;
import kh.teamproject.apton.member.model.service.MemberService;
import kh.teamproject.apton.member.model.vo.Member;

@Controller
public class LoginController {
	@Autowired
	private MemberService Service;
	private Logger logger = LoggerFactory.getLogger(LoginController.class);
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST) //포스트 방식 매핑
	public String login(Member vo, HttpSession session) throws Exception {
		String viewName = "";
		logger.info("post login");
//		session = request.getSession();
		
			System.out.println(vo);
			
			Member login = Service.login(vo);
			System.out.println("회원 로그인 정보  -> "+ login);
		
			if(login == null) {
				session.setAttribute("result", "로그인 실패");
				viewName= "login";
			} else{
				session.setAttribute("member", vo);
				viewName= "index";
			}
			
		return viewName;
	}
	
	
}
