package kh.teamproject.apton.manage.controller;

import java.io.File;
import java.util.List;

import javax.print.attribute.standard.PrinterInfo;
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
import kh.teamproject.apton.manage.service.ManageDefectreceptionService;

@Controller
public class ManageDefectreceptionController {
	
	//SJH TODO 관리자단은 서비스 DAO 따로만들어야하나 임시로 연결시킴
	@Autowired
	private ManageDefectreceptionService manageDfboardService;
	
	@RequestMapping(value = "manage-dr", method = RequestMethod.GET)
	public ModelAndView selectBoardList(ModelAndView mv, String clickedPage, @RequestParam(value = "p", defaultValue = "1")String pageNum) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		
		final int PAGE_SIZE = 6;
		final int PAGE_BLOCK = 3;
		int currentPage = 1;
		int listCount = 0;
		int pageCount = 0;
		try {
			listCount = manageDfboardService.getListCount();
			viewPage = "/manage/defectreception_boardlist";
			
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
			drbList = manageDfboardService.selectBoardList(currentPage, PAGE_SIZE);
			viewPage= "/manage/defectreception_boardlist";
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
	
	@RequestMapping(value = "manage-drview", method = RequestMethod.GET)
	public ModelAndView selectContentView(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int drno ) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		
		List<DrBoard> drbList = null;
		try {
			drbList = manageDfboardService.selectContentView(drno);
			viewPage= "/manage/defectreception_contentview";
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
	
	
	@RequestMapping(value = "manage-drupdate", method = RequestMethod.GET)
	public ModelAndView updateContent(ModelAndView mv, @RequestParam(value="no", defaultValue = "0")int drno) {
		String viewPage = "error/commonError";
		
		List<DrBoard> drbList = null;
		
		try {
			drbList = manageDfboardService.selectContentView(drno);
			viewPage = "./manage/defectreception_update";
		} catch (Exception e) {
			viewPage = "error/commonError";
			mv.addObject("msg", "게시판 오류 발생");
			mv.addObject("url", "index");
		}
		
		mv.addObject("drbList", drbList);
		mv.setViewName(viewPage);
		
		return mv;
	}
	
	@RequestMapping(value = "manage-drupdate", method = RequestMethod.POST)
	public ModelAndView updateContentForceful(ModelAndView mv, @RequestParam(value = "t", defaultValue = "0")String title,
			@RequestParam(value = "c", defaultValue = "0")String content,
			@RequestParam(value = "no", defaultValue = "0")int drno,
			@RequestParam(value ="imgs[]") MultipartFile imgs,
			HttpServletRequest request) {
		String viewPage = "error/commonError";
		
		int drBoardResult = 0;
		
		printInfo(Integer.toString(drno), imgs);
		
		saveFile(imgs, request);
		
		DrBoard bvo = new DrBoard(drno, title, content);
		drBoardResult = manageDfboardService.updateBoardForceful(bvo);
		
		if (drBoardResult == 0) {
			viewPage = "error/commonError";
			mv.addObject("msg", "게시글 오류 발생");
			mv.addObject("url", "index");
		}else {
			viewPage = "redirect: ./manage-dr";
		}
		
		mv.addObject("result", drBoardResult);
		mv.setViewName(viewPage);
		return mv;
	}
	
	@RequestMapping(value = "manage-drdelete", method = RequestMethod.GET)
	public String deleteContentForceful(ModelAndView mv, @RequestParam(value = "no", defaultValue = "0" ) int drno) {
		
		String viewPage = "error/commonError";
		int drBoardResult = 0;
		DrBoard bvo = new DrBoard(drno);
		drBoardResult = manageDfboardService.deleteBoardForceful(bvo);
		
		if(drBoardResult == 0) {
			viewPage = "error/commonError";
			mv.addObject("msg", "게시글 오류 발생");
			mv.addObject("url", "index");
		}else {
			viewPage ="./manage-dr";
		}
		
		return "redirect: ./manage-dr";
	}
	
	@RequestMapping(value = "manage-drstat", method = RequestMethod.GET)
	public ModelAndView drstat(ModelAndView mv) {
		
		String viewPage = "error/commonError";
		viewPage ="/manage/defectreception_stat";
		List<String> drStat=  manageDfboardService.drstat();
		
		
//		DrBoard bvo = new DrBoard(drno);
//		drBoardResult = manageDfboardService.deleteBoardForceful(bvo);
//		
//		if(drBoardResult == 0) {
//			viewPage = "error/commonError";
//			mv.addObject("msg", "게시글 오류 발생");
//			mv.addObject("url", "index");
//		}else {
//			viewPage ="/manage/defectreception_stat";
//		}
		//System.out.println("cnt 통계를 위한 월별계산 return: " + drStat);
		mv.setViewName(viewPage);
		return mv;
	}
	
	 // 파일 업로드 정보 출력
		private void printInfo(String contentNumber, MultipartFile img) {
			System.out.println(contentNumber + "번째 게시물의 파일: " + img.getOriginalFilename());
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
//				folder.mkdir(); // 폴더가 없다면 생성한다.
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
