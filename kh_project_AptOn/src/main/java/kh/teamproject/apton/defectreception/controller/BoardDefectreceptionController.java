package kh.teamproject.apton.defectreception.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.google.api.client.util.Value;

import kh.teamproject.apton.admin.model.vo.Admin;
import kh.teamproject.apton.defectreception.model.vo.DrBoard;
import kh.teamproject.apton.defectreception.service.BoardDefectreceptionService;
import kh.teamproject.apton.member.model.vo.Member;

import com.google.cloud.storage.BlobInfo;
import com.google.cloud.storage.Storage;
import com.google.cloud.storage.Storage.BlobTargetOption;
import com.google.cloud.storage.Storage.PredefinedAcl;
import com.google.cloud.storage.StorageOptions;


@Controller
public class BoardDefectreceptionController {
	
	private static Storage storage = StorageOptions.getDefaultInstance().getService(); 
	
	@Autowired
	private BoardDefectreceptionService boardService;
		
	
	@Value("${file.storage}")
	private Resource localFilePath;
	
	@RequestMapping(value = "board-defectreception", method = RequestMethod.GET)
	public ModelAndView selectBoardList(ModelAndView mv, String clickedPage, 
			@RequestParam(value = "p", defaultValue = "1")String pageNum,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		Member member = (Member)request.getSession().getAttribute("member");
		Admin admin = (Admin) request.getSession().getAttribute("admin");
		//회원로그인 확인 조건문
		if((member == null) && (admin == null)) {
		PrintWriter out = response.getWriter();
//		if(member == null) {
			response.setContentType("text/html; charset=UTF-8");
			 
			out.println("<script>alert('로그인이 필요합니다'); location.href='./login';</script>");
			 
			out.flush();
		} 
		
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
	public ModelAndView selectContentView(ModelAndView mv, @RequestParam(value="no" , defaultValue = "0")int drno, 
			HttpServletRequest request) {
		String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
		
		Member memberId = (Member)request.getSession().getAttribute("member");
		
		
		
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
		if (memberId != null) {
			mv.addObject("memberId",memberId.getHouseNum());
		}
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
			@RequestParam("image") MultipartFile image,
			HttpServletRequest request){
		
		
		int drBoardResult = 0;
		
		String imgsrc ="";
		imgsrc =  googleCloudPlatformUpload(image);
		System.out.println("이미지 저장주소: " + imgsrc);
		
		
		//가구번호에 따라 다르게 글쓴이가 생기도록 함
		Member member = (Member)request.getSession().getAttribute("member");
		long houseNum = member.getHouseNum();
		String adminId = "admin2";
		int state = 0;
		String ProcessingDetail = "처리중";
		
		if (image != null) {
			DrBoard dvo = new DrBoard(houseNum, adminId, title,Content,state,ProcessingDetail,imgsrc);
			drBoardResult = boardService.insertBoardwithImg(dvo);
		}else if(image == null) {
			DrBoard dvo = new DrBoard(houseNum, adminId, title,Content,state,ProcessingDetail);
			drBoardResult = boardService.insertBoard(dvo);
		}
		
		
		mv.addObject("result",drBoardResult);
		mv.setViewName("redirect: ./board-defectreception");
		return mv;
	}
	
	@RequestMapping(value = "update-defectreception", method = RequestMethod.GET)
	public ModelAndView updateContent(ModelAndView mv, 
			@RequestParam(value="no" , defaultValue = "0")int drno) {
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
			@RequestParam(value="c" , defaultValue = "0")String content,
			@RequestParam(value="no" , defaultValue = "0")int drno,
			@RequestParam("image") MultipartFile image,
			HttpServletRequest request){
	String viewPage = "error/commonError"; //기본페이지 에러페이지로 동일하게 설정함
	
	int drBoardResult = 0;
	


	String imgsrc ="";
	imgsrc =  googleCloudPlatformUpload(image);
	System.out.println("이미지 저장주소: " + imgsrc);
	
	
	//보안 높일려면 가구번호랑 세션아디 비교하여 확인기능 필요할듯
	if (image == null) {
		DrBoard bvo = new DrBoard(drno, title,content);
		drBoardResult = boardService.updateBoard(bvo);
	}else if(image != null) {
		DrBoard bvo = new DrBoard(drno, title, content,imgsrc);
		drBoardResult = boardService.updateBoardwithImg(bvo);
	}
	
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
		
		DrBoard bvo = new DrBoard(drno);
		boardService.deleteBoard(bvo);
		
		return "redirect: ./board-defectreception";
	}
	

	
	public String googleCloudPlatformUpload(MultipartFile file) {
		//reName 규칙 설정
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
        int rdv = (int)(Math.random()*1000);
        String reName = sdf.format(System.currentTimeMillis())+"_"+rdv;

		try {			
			BlobInfo blobInfo = storage.create(
				BlobInfo.newBuilder("apt_kh_team2", reName+file.getOriginalFilename()).build(), //get original file name
				file.getBytes(), // the file
				BlobTargetOption.predefinedAcl(PredefinedAcl.PUBLIC_READ) // Set file permission
			);
			return blobInfo.getMediaLink(); // Return file url
		}catch(IllegalStateException | IOException e){
			throw new RuntimeException(e);
		} 
		
  	}
	
	

}
