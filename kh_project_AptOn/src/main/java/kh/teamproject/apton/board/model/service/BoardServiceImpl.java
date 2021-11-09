package kh.teamproject.apton.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kh.teamproject.apton.board.model.dao.BoardDao;
import kh.teamproject.apton.board.model.vo.Board;

@Service("boardService")
//@Transactional(rollbackFor = Exception.class)
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDao boardDao;
	
	
	@Override
	public List<Board> selectBoardListRB(int currentPage, int limit){
		List<Board> vo = null;
		
		try {
			vo = boardDao.selectBoardListRB(currentPage, limit);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		return vo;
	}


	@Override
	public List<Board> selectBoardList(int currentPage, int limit) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int getListCount() throws Exception {
		return boardDao.getListCount();
	}


	@Override
	public List<Board> boardListHM() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Board> selectBoardListRB() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int updateBoardContent(int bnum, String bcont) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int insertBoard(Board bvo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int deleteBoard(Board vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int deleteBoard(int bno) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
