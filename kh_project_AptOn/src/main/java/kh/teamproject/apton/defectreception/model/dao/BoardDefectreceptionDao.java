package kh.teamproject.apton.defectreception.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;

@Repository("boardDao")
public class BoardDefectreceptionDao {
	//TODO 접수게시판 DB테이블 선언 및 테스트내용을 아직 채워주지 않았음 
	
	@Autowired
	private SqlSession sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("DrBoard.getListCount");
	}

	public List<DrBoard> selectBoardList(int currentPage, int limit)  throws Throwable, Exception {
		List<DrBoard> drblist;
		
		int startRow = (currentPage - 1) * limit;
		
		RowBounds row = new RowBounds(startRow, limit);
		
		//todo ""안에 문자열은 추후바뀔 수 있음 
		drblist = sqlSession.selectList("DrBoard.selectBoardList");
		return drblist;
	}

	public List<DrBoard> selectContentView(int drno) {
		List<DrBoard> drblist;
		
		drblist = sqlSession.selectList("DrBoard.selectContentView",drno);
		return drblist;
	}

}
