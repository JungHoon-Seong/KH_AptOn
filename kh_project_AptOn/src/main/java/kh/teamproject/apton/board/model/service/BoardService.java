package kh.teamproject.apton.board.model.service;

import java.util.List;

import kh.teamproject.apton.board.model.vo.Board;


	public interface BoardService {

		public List<Board> selectBoardList(int currentPage, int limit) throws Exception;
		public int getListCount() throws Exception;
		public List<Board> boardListHM() throws Exception;
		public List<Board> selectBoardListRB(int currentPage, int limit) throws Exception;
		public List<Board> selectBoardListRB() throws Exception;
		public int updateBoardContent(int bnum, String bcont) throws Exception;
		public int insertBoard(Board bvo) throws Exception;
		public int deleteBoard(Board vo) throws Exception;
		public int deleteBoard(int bno) throws Exception;
		
	}

	// 인터페이스 : 공통메소드,필드를 통해 중복작업을 막는 것 + 꼭 필요한 메소드 목록을 나타내주는 역할
	//


