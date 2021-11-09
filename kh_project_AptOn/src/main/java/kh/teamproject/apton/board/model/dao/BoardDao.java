package kh.teamproject.apton.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.board.model.vo.Board;

@Repository("boardDao")
public class BoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int getListCount() throws Exception{
		return sqlSession.selectOne("Board.getListCount");
	}
	
	public List<Board> selectBoardListRB(int currentPage, int limit) throws Throwable, Exception{
		List<Board> blist= null;
		
		int startRow = (currentPage -1) * limit;
		
		RowBounds row = new RowBounds(startRow, limit);
		
		blist = sqlSession.selectList("Board.searchBoardListRB", null, row);
		return blist;
	}

}
