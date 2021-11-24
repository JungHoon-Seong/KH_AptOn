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
	@Autowired 
	private AdminService AService;
	private Logger logger = LoggerFactory.getLogger(LoginController.class);
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("login");
		return mv;
	}
	// 회원 or 관리자 로그인
	@RequestMapping(value = "login", method = RequestMethod.POST) //포스트 방식 매핑
	public String login(HttpSession session
			, HttpServletRequest request
			, RedirectAttributes rttr) throws Exception {
		String viewName = "";
		logger.info("post login");
		Member vo = new Member();
		Admin avo = new Admin();
//		session = request.getSession();
		String testid = request.getParameter("houseNum");
		String pwd = request.getParameter("pwd");
//		String aid = "";
		long mid = 0;
		System.out.println(testid);
		System.out.println(pwd);
		if(!testid.equals("admin2")) {
			mid = Long.parseLong(testid);
			vo.setHouseNum(mid);
			vo.setPwd(pwd);
			Member login = Service.login(vo);
			System.out.println("login 정보 확인 -->" + login);
			if(login == null) {
				System.out.println("로그인 실패");
				session.setAttribute("result", "로그인 실패");
				viewName= "login";
			}else {
				session.setAttribute("member", login);
				viewName= "index";
			}
			
		} else if(testid.equals("admin2")){
			System.out.println("관리자 로그인 성공");
			avo.setAdminId(testid);
			avo.setAdminPwd(pwd);
			Admin alogin = AService.login(avo);
			session.setAttribute("admin", alogin);
			viewName="adminmain";
		}
		return viewName;
	}
	@RequestMapping("logout")
	public ModelAndView logout(ModelAndView mv, HttpSession session) {
		String viewName = "";
		session.invalidate();
		viewName ="index";
		mv.setViewName(viewName);
		return mv;
	}
	
}

	
	

