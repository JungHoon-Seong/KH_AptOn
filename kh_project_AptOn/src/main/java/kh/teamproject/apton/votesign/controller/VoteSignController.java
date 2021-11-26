package kh.teamproject.apton.votesign.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.member.model.vo.Member;
import kh.teamproject.apton.votesign.model.service.VoteSignService;
import kh.teamproject.apton.votesign.model.service.VoteSignServiceInterface;
import kh.teamproject.apton.votesign.model.vo.SignRecords;
import kh.teamproject.apton.votesign.model.vo.VoteInfo;
import kh.teamproject.apton.votesign.model.vo.VoteRecords;
import oracle.security.crypto.cert.ext.DeltaCRLIndicatorExtension;

@Controller
public class VoteSignController {

	@Autowired
	private VoteSignServiceInterface votesignservice;

	@RequestMapping(value = "votelist", method = RequestMethod.GET)
	public ModelAndView listOfVoteSign(ModelAndView mv, String clickedPage) {
		String viewpage = "error/commonError"; // viewpage는 미리 에러로 지정
		if (clickedPage != null) {
			if (!(clickedPage.matches("[+-]?\\d*(\\.\\d+)?"))) {
				mv.setViewName(viewpage);
				return mv;
			}
		}
		int currentPage = 1;
		int listCount = 0;
		try {
			listCount = votesignservice.getListCount();
			viewpage = "voteNsign/vslist";
		} catch (Throwable e) {
			viewpage = "error/commonError";
			mv.addObject("msg", "게시판 오류 발생");
			mv.addObject("url", "index");
			e.printStackTrace();
		}
		int limit = 10;
		int maxPage = (int) ((double) listCount / limit + 0.9);
		if (clickedPage != null) {
			if (Integer.parseInt(clickedPage) <= 0) {
				currentPage = 1;
			} else if (Integer.parseInt(clickedPage) > maxPage) {
				currentPage = maxPage;
			} else {
				currentPage = Integer.parseInt(clickedPage);
			}
		}

		int startPage = (((int) ((double) currentPage / 5 + 0.9)) - 1) * 5 + 1;
		int endPage = startPage + 5 - 1;
		if (endPage >= maxPage) {
			endPage = maxPage;
		}
		List<Map> volist = null;
		try {
			volist = votesignservice.votelist(currentPage, limit);
			viewpage = "voteNsign/vslist";
		} catch (Throwable e) {
			viewpage = "error/commonError";
			mv.addObject("msg", "게시판 오류 발생");
			mv.addObject("url", "index");
			e.printStackTrace();
		}

		// 마감일과의 비교를 위한 오늘 날짜 구하기
		LocalDate now = LocalDate.now();
		DateTimeFormatter frm = DateTimeFormatter.ofPattern("yyyy/MM/dd");

		String formatedNow = now.format(frm);

		mv.addObject("volist", volist);
		mv.addObject("currentPage", currentPage);
		mv.addObject("limit", limit);
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("maxPage", maxPage);
		mv.addObject("listCount", listCount);
		mv.addObject("today", formatedNow);

		mv.setViewName(viewpage);

		return mv;
	}

	// 투표 등록 페이지
	@RequestMapping(value = "enrollvote", method = RequestMethod.GET)
	public String enrollvoteView() {

		return "voteNsign/enrollvote";
	}

	@RequestMapping(value = "enrollvote.do", method = RequestMethod.POST)
	@ResponseBody
	public String enrollvoteDo(String msg, HttpServletRequest request) {
		int category = Integer.parseInt(request.getParameter("category"));
		String adminId = request.getParameter("adminId");
		String voteTitle = request.getParameter("voteTitle");
		String voteDesc = request.getParameter("voteDesc");
		String voteStartDate = request.getParameter("voteStartDate");
		String voteDeadLine = request.getParameter("voteDeadLine");

//		System.out.println(category);
//		System.out.println(adminId);
//		System.out.println(voteTitle);
//		System.out.println(voteDesc);
//		System.out.println(voteStartDate);
//		System.out.println(voteDeadLine);
//		
		try {
			VoteInfo vo = new VoteInfo(0, category, adminId, voteTitle, voteDesc, 0, 0, 0, voteStartDate, voteDeadLine);
			int result = votesignservice.enrollvote(vo);
			msg = "success";
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return msg;
	}// enrollvoteDo

	// 투표 상세 페이지
	@RequestMapping(value = "votedetail", method = RequestMethod.GET)
	public ModelAndView votedetailView(ModelAndView mv, HttpServletRequest request) {
		mv.setViewName("error/commonError");
		int vote_no = Integer.parseInt(request.getParameter("vote_no"));
		VoteInfo vo = new VoteInfo();
		try {
			vo = votesignservice.selectvotedetail(vote_no);
		} catch (Throwable e) {
			e.printStackTrace();
		}

		if (vo.getCategory() == 1) {
			mv.setViewName("voteNsign/votedetail");
			mv.addObject("vo", vo);
		} else if (vo.getCategory() == 0) {
			mv.setViewName("voteNsign/signdetail");
			mv.addObject("vo", vo);
		}

		return mv;
	}

	@RequestMapping(value = "deletevote.do", method = RequestMethod.POST)
	@ResponseBody
	public int deletevote(String delNum, String adminId) {
		// responsebody로 보내기
		int voteNo = Integer.parseInt(delNum);
//		VoteInfo vo = new VoteInfo(voteNo);
//		System.out.println(delNum + " 번호 받음");
//		System.out.println("관리자아이디 : " + adminId);
		int result = -1;
		if (adminId != null) {
			try {
				// 성공
				result = votesignservice.deleteVote(voteNo);
			} catch (Throwable e) {
				e.printStackTrace();
			}
		}
		return result;
	} // method

	@RequestMapping(value = "dovote", method = RequestMethod.GET)
	public ModelAndView dovotepage(ModelAndView mv, String voteNo) {
		String viewpage = "error/commonError"; // viewpage는 미리 에러로 지정
//		System.out.println("voteNO : "+voteNo);
		int vno = 0;
		VoteInfo vo = new VoteInfo();
		try {
			vno = Integer.parseInt(voteNo);
		} catch (Exception e) {
			e.printStackTrace();
			mv.setViewName(viewpage);
			return mv;
		}
		try {
			vo = votesignservice.selectvotedetail(vno);
			// 날짜 유효성 검사
			String voteStatus = compareDate(vo.getVoteStartDate(), vo.getVoteDeadLine());
			if (voteStatus.equals("notyet")) {
				mv.addObject("alertmsg", "투표가 시작되지 않았습니다.");
			} else if (voteStatus.equals("done")) {
				mv.addObject("alertmsg", "투표가 종료되었습니다.");
			}
			viewpage = "voteNsign/dovote";
		} catch (Throwable e) {
			e.printStackTrace();
		}
		mv.addObject("vo", vo);
		mv.setViewName(viewpage);
		return mv;
	}

	@RequestMapping(value = "dovote.do", method = RequestMethod.POST)
	@ResponseBody
	public String doVote(VoteRecords vo, String YN) {

		System.out.println("dovote.do 진입");
		String result = "fail";
		System.out.println(vo.toString());

		// TODO 1. Vote_records insert
		// TODO 1-1 투표했는지 확인하는 method
		try {
			int check = votesignservice.checkVote(vo);
			System.out.println("투표여부 카운트 : " + check);
			if (check >= 1) {
				result = "already";
				return result;
			} else if (check == 0) {
				votesignservice.doVote(vo);
				result = "success";
			}
		} catch (Throwable e) {
			e.printStackTrace();
		}

		// TODO 2. vote_info update
		try {
			int yesNo = Integer.parseInt(YN);
			if (yesNo == 1) {
				// TODO 찬성 update method
				System.out.println("yes 진입");
				votesignservice.updateYes(vo.getVoteNo());
				result = "yes";
			} else if (yesNo == 0) {
				// TODO 반대 update method
				System.out.println("no 진입");
				votesignservice.updateNo(vo.getVoteNo());
				result = "no";
			}
		} catch (Throwable e) {
			e.printStackTrace();
		}

		return result;
	} // method

	@RequestMapping(value = "dosign", method = RequestMethod.GET)
	public ModelAndView dosignpage(ModelAndView mv, String voteNo) {
		String viewpage = "error/commonError"; // viewpage는 미리 에러로 지정
//		System.out.println("voteNO : "+voteNo);
		int vno = 0;
		VoteInfo vo = new VoteInfo();
		try {
			vno = Integer.parseInt(voteNo);
		} catch (Exception e) {
			e.printStackTrace();
			mv.setViewName(viewpage);
			return mv;
		}
		try {
			vo = votesignservice.selectvotedetail(vno);
			// 날짜 유효성 검사
			String voteStatus = compareDate(vo.getVoteStartDate(), vo.getVoteDeadLine());
			if (voteStatus.equals("notyet")) {
				mv.addObject("alertmsg", "서명이 시작되지 않았습니다.");
			} else if (voteStatus.equals("done")) {
				mv.addObject("alertmsg", "서명이 종료되었습니다.");
			}

			viewpage = "voteNsign/dosign";
		} catch (Throwable e) {
			e.printStackTrace();
		}
		mv.addObject("vo", vo);
		mv.setViewName(viewpage);
		return mv;
	}

	// 날짜 유효성 검사를 위한 메소드
	private String compareDate(String strStart, String strEnd) throws Exception {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date std = transFormat.parse(strStart);// 시작일
		Date end = transFormat.parse(strEnd); // 마감일
		Calendar c1 = Calendar.getInstance();
		String strToday = transFormat.format(c1.getTime());
		Date today = transFormat.parse(strToday); // 오늘
		if (today.before(std)) {
			return "notyet";
		} else if (today.after(end)) {
			return "done";
		} else {
			return "ongoing";
		}
	} // method

	@RequestMapping(value = "submitSign.do", method = RequestMethod.POST)
	@ResponseBody
	public String submitSign(@RequestParam String signBase64, String hNum, String voteNo) {
		System.out.println("submitSign 진입");
		System.out.println(signBase64);
		String result = "success";
		long houseNum = Long.parseLong(hNum);
		byte[] memberSign = signBase64.getBytes();
		int vno = Integer.parseInt(voteNo);
		SignRecords svo= new SignRecords(vno, houseNum, 1);

		Member vo = new Member(houseNum, memberSign);
		try {
			System.out.println("sign제출");
			votesignservice.submitSign(vo);

		} catch (Throwable e) {
			e.printStackTrace();
		}

		// TODO Vote_records insert
		try {
			int check = votesignservice.checkSign(svo);
			System.out.println("서명여부 카운트 : " + check);
			if (check >= 1) {
				result = "already";
				return result;
			} else if (check == 0) {
				votesignservice.doSign(svo);
					System.out.println("sign +1 진입");
					votesignservice.updateYes(svo.getVoteNo());
					result = "success";
				} 

				result = "success";
			} catch (Throwable e) {
			e.printStackTrace();
		}

		return result;
	}

	@RequestMapping(value = "loadSign.do", method = RequestMethod.POST)
	@ResponseBody
	public byte[] loadSign(@RequestParam String hNum) {
		System.out.println("loadSign진입");
		byte[] imgbyte = null;
		long houseNum = Long.parseLong(hNum);

		try {
			imgbyte = votesignservice.loadSign(houseNum);
				
//			System.out.println(new String(imgbyte));
		} catch (Throwable e) {
			e.printStackTrace();
		}

		return imgbyte;
	}

} // class
