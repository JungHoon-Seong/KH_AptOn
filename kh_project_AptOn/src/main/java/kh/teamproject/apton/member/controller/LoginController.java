package kh.teamproject.apton.member.controller;

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

import kh.teamproject.apton.member.model.service.MemberService;
import kh.teamproject.apton.member.model.vo.Member;

@Controller
public class LoginController {
	@Autowired
	private MemberService MService;
	private Logger logger = LoggerFactory.getLogger(LoginController.class);
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value = "loginDo", method = RequestMethod.POST)
	public String login(Member vo
			, @RequestParam(name = "houseNum") long housenum
			, @RequestParam(name = "pwd") String pwd
			, HttpServletRequest request
			, HttpSession session
			, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
		session = request.getSession();
		Member login = MService.login(vo);
		login.setHouseNum(housenum);
		login.setPwd(pwd);
		System.out.println("아이디 ->"+housenum);
		System.out.println("패스워드 ->"+pwd);
		System.out.println("로그인 값 ->"+login);
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("member", login);
		}
//		String result = "";
		return "redirect:/";
	}
}
