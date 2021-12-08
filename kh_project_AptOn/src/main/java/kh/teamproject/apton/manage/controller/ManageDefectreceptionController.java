package kh.teamproject.apton.manage.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.cloud.storage.BlobInfo;
import com.google.cloud.storage.Storage;
import com.google.cloud.storage.StorageOptions;
import com.google.cloud.storage.Storage.BlobTargetOption;
import com.google.cloud.storage.Storage.PredefinedAcl;
import com.google.gson.Gson;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;
import kh.teamproject.apton.manage.service.ManageDefectreceptionService;

@Controller
public class ManageDefectreceptionController {
	
	private static Storage storage = StorageOptions.getDefaultInstance().getService(); 
	
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
			@RequestParam(value = "state")int drState,
			@RequestParam("image") MultipartFile image,
			HttpServletRequest request) {
		String viewPage = "error/commonError";
		
		int drBoardResult = 0;
		
		String imgsrc ="";
		imgsrc =  googleCloudPlatformUpload(image);
		System.out.println("이미지 저장주소: " + imgsrc);

		if (image == null) {
			DrBoard bvo = new DrBoard(drno, title, content,drState);
			drBoardResult = manageDfboardService.updateBoardForceful(bvo);
		}else if(image != null) {
			DrBoard bvo = new DrBoard(drno, title, content,drState,imgsrc);
			drBoardResult = manageDfboardService.updateBoardForcefulwithImg(bvo);
		}
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
	public ModelAndView drstat(ModelAndView mv, HttpServletResponse response) throws ServletException, IOException {
		
		String viewPage = "error/commonError";
		viewPage ="/manage/defectreception_stat";
		List<Object> drStat=  manageDfboardService.drstat();
		
//		System.out.println("Controller단 통계를 위한 상/하반기 계산 return: " + drStat );
		
		Map<String, Object> map1 = new HashMap<String,Object>();
		
		map1.put("firstTotalCount", drStat.get(1));
		map1.put("firstComplementCount", drStat.get(2));
		map1.put("secondTotalCount", drStat.get(3));
		map1.put("secondComplementCount", drStat.get(4));
		
		Gson gson1 = new Gson();
		String gobStr = gson1.toJson(map1);
		System.out.println("Controller단 통계를 위한 상/하반기 계산 return: " + gobStr );
		mv.addObject("firstTotalCount",  Integer.parseInt( String.valueOf(drStat.get(1))) );
		mv.addObject("firstComplementCount",  Integer.parseInt(String.valueOf(drStat.get(2))) );
		mv.addObject("secondTotalCount",  Integer.parseInt(String.valueOf(drStat.get(3))) );
		mv.addObject("secondComplementCount", Integer.parseInt(  String.valueOf(drStat.get(4))) );
		mv.setViewName(viewPage);
		return mv;
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
