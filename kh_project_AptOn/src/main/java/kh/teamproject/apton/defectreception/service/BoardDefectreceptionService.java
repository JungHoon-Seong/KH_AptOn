package kh.teamproject.apton.defectreception.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.defectreception.model.dao.BoardDefectreceptionDao;
import kh.teamproject.apton.defectreception.model.vo.DrBoard;



@Service("boardService")
public class BoardDefectreceptionService {
	
	@Autowired
	private BoardDefectreceptionDao boardDao;
	
	//todo 하자관리게시판에서만 쓸거라 일단 언터페이스를 사용하지않았음
	public int getListCount() {
		return boardDao.getListCount();
	}
	
	
	public List<DrBoard> selectBoardList(int currentPage, int limit) {
		List<DrBoard> vo = null;
		
		try {
			vo = boardDao.selectBoardList(currentPage, limit);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public List<DrBoard> selectContentView(int drno)  {
		List<DrBoard> vo = null;
		
		try {
			vo = boardDao. selectContentView(drno);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		return vo;
	}

		
	public int updateBoard(int bno, String bcont) {
		// TODO Auto-generated method stub
		return 0;
	}


	
	public int insertBoard(DrBoard bvo) {
		// TODO Auto-generated method stub
		return 0;
	}


	
	public int deleteBoard(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}


	

}
