package kh.teamproject.apton.defectreception.controller;

import java.io.File;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;
import kh.teamproject.apton.defectreception.service.BoardDefectreceptionService;
import kh.teamproject.apton.member.model.service.MemberService;

@Controller
public class BoardDefectreceptionController {
	
	@Autowired
	private BoardDefectreceptionService boardService;
	
	@RequestMapping(value = "board-defectreception", method = RequestMethod.GET)
	public ModelAndView selectBoardList(ModelAndView mv, String clickedPage, @RequestParam(value = "p", defaultValue = "1")String pageNum) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		
		final int PAGE_SIZE = 6;
		final int PAGE_BLOCK = 3;
		int currentPage = 1;
		int listCount = 0;
		int pageCount = 0;
		try {
			listCount = boardService.getListCount();
			viewPage = "/defectreception/defectreception_boardlist";
			
		} catch (Exception e) {
			mv.addObject("msg", "게시판 오류발생");
			mv.addObject("url", "index");
			e.printStackTrace();
		}
		
		if (pageNum != null) {
			clickedPage = pageNum;
		}
		
		int startPage = ((int)((double)currentPage / PAGE_SIZE + 0.9) - 1) * PAGE_SIZE  + 1;
		
		pageCount = (listCount / PAGE_SIZE) + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		
		int endPage = startPage + PAGE_SIZE - 1;
		if(endPage > pageCount) endPage=pageCount;
		int maxPage = (int)((double)listCount / PAGE_SIZE + 0.9);
		if (clickedPage != null) {
			if (Integer.parseInt(clickedPage) <= 0) {
				currentPage = 1;
			} else if(Integer.parseInt(clickedPage) > maxPage){
				currentPage = maxPage;
			}else {
				currentPage = Integer.parseInt(clickedPage);
			}
		}
		
		if (currentPage % PAGE_BLOCK == 0) {
			startPage = (currentPage / PAGE_BLOCK - 1) * PAGE_BLOCK + 1;
		}else {
			startPage = (currentPage / PAGE_BLOCK) * PAGE_BLOCK + 1;
		}
		
		List<DrBoard> drbList = null;
		try {
			drbList = boardService.selectBoardList(currentPage, PAGE_SIZE);
			viewPage= "/defectreception/defectreception_boardlist";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		mv.addObject("drbList",drbList);
		mv.addObject("currentPage",currentPage);
		mv.addObject("pageCount",pageCount);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage);
		
		
		mv.setViewName(viewPage);
		return mv;
	}
	
	@RequestMapping(value = "view-defectreception", method = RequestMethod.GET)
	public ModelAndView selectContentView(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int drno ) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		
		List<DrBoard> drbList = null;
		try {
			drbList = boardService.selectContentView(drno);
			viewPage= "/defectreception/defectreception_contentview";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
			e.printStackTrace();
		}
		
		mv.addObject("drbList",drbList);
		mv.setViewName(viewPage);
		return mv;
	}
	
	@RequestMapping(value = "insert-defectreception", method = RequestMethod.GET)
	public String insertContent() {
		return "./defectreception/defectreception_insert";
	}
	
	@RequestMapping(value = "insert-defectreception", method = RequestMethod.POST)
	public ModelAndView insertContent(ModelAndView mv, @RequestParam(value="t" , defaultValue = "0")String title,
			@RequestParam(value="c" , defaultValue = "0")String Content,
			@RequestParam(value="imgs[]")MultipartFile imgs,
			HttpServletRequest request) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함

		int drBoardResult = 0;
		
		// SJH TODO향후 세션의 housenum을 아래의 drno 위치에 넣어야한다
		//printInfo(Integer.toString(drno), imgs);
		
		saveFile(imgs, request);
		
		//SJHTODO 세션에 따라 호수번호를 입력받아야함 추후 처리
		int houseNum = 51004;
		String adminId = "admin2";
		int state = 0;
		String ProcessingDetail = "처리중";
		
		DrBoard dvo = new DrBoard(houseNum, adminId, title,Content,state,ProcessingDetail);
		drBoardResult = boardService.insertBoard(dvo);
			
		if (drBoardResult == 0) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
		}else {
			viewPage= "./board-defectreception";
		}
		
		
		mv.addObject("result",drBoardResult);
		mv.setViewName("redirect: ./board-defectreception");
		return mv;
	}
	
	@RequestMapping(value = "update-defectreception", method = RequestMethod.GET)
	public ModelAndView updateContent(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int drno) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		//보안 높일려면 가구번호랑 세션아디 비교하여 확인기능 필요할듯
		
		List<DrBoard> drbList = null;
		try {
			drbList = boardService.selectContentView(drno);
			viewPage= "./defectreception/defectreception_update";
		} catch (Exception e) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
		}
		
		
		mv.addObject("drbList",drbList);
		mv.setViewName(viewPage);

		return mv;

	}
	
	@RequestMapping(value = "update-defectreception", method = RequestMethod.POST)
	public ModelAndView updateContent(ModelAndView mv, @RequestParam(value="t" , defaultValue = "0")String title,
			@RequestParam(value="c" , defaultValue = "0")String Content,
			@RequestParam(value="no" , defaultValue = "0")int drno,
			@RequestParam(value="imgs[]")MultipartFile imgs,
			 HttpServletRequest request){
	String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
	
	int drBoardResult = 0;
	
	
	printInfo(Integer.toString(drno), imgs);
	
	saveFile(imgs, request);
	
	//보안 높일려면 가구번호랑 세션아디 비교하여 확인기능 필요할듯
	DrBoard bvo = new DrBoard(drno, title,Content);
	drBoardResult = boardService.updateBoard(bvo);
		
	if (drBoardResult == 0) {
		viewPage= "error/commonError";
		mv.addObject("msg" , "게시판 오류 발생");
		mv.addObject("url" , "index");
	}else {
		viewPage= "redirect: ./board-defectreception";
	}
	
	mv.addObject("result",drBoardResult);
	mv.setViewName(viewPage);
	return mv;
	}
	
	@RequestMapping(value = "delete-defectreception", method = RequestMethod.GET)
	public String deleteContent(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int drno) {
		
		//보안 높일려면 가구번호랑 세션아디 비교하여 확인기능 필요할듯  
		String viewPage = "error/commonError";
		int drBoardResult = 0;
		DrBoard bvo = new DrBoard(drno);
		drBoardResult = boardService.deleteBoard(bvo);
		
		if (drBoardResult == 0) {
			viewPage= "error/commonError";
			mv.addObject("msg" , "게시판 오류 발생");
			mv.addObject("url" , "index");
		}else {
			viewPage= "./board-defectreception";
		}
		
		
		return "redirect: ./board-defectreception";
	}

	 // 파일 업로드 정보 출력
	private void printInfo(String studentNumber, MultipartFile img) {
		System.out.println(studentNumber + "번째 게시물의 파일: " + img.getOriginalFilename());
	}

	// 실제 파일 업로드 메소드 구현
	private void saveFile(MultipartFile img, HttpServletRequest request) {

		
		//todo 포로젝트의 리소스 폴더가  아닌 다른 로컬 위치의 폴더로 저장되는 문제점이있다. 
		String root = request.getSession().getServletContext().getRealPath("\\resources");
		System.out.println("root : "+ root);
		//.getRealPath("/src/main/webapp/resources/img");
		String savePath = root + "/uploadFiles";
		String filePath = null;
		File folder = new File(savePath);
		if (!folder.exists()) {
//			folder.mkdir(); // 폴더가 없다면 생성한다.
		}

		try {
			// 파일 저장
			System.out.println(img.getOriginalFilename() + "을 저장합니다.");
			System.out.println("저장 경로 : " + savePath);
			filePath = folder + "\\" + img.getOriginalFilename();

			img.transferTo(new File(filePath)); // 파일을 저장한다
			System.out.println("파일 명 : " + img.getOriginalFilename());
			System.out.println("파일 경로 : " + filePath);
			System.out.println("파일 전송이 완료되었습니다.");
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
	}
	
}
