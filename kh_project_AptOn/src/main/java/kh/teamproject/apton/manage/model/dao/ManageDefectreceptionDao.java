package kh.teamproject.apton.manage.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;
@Repository("manageDfboardDao")
public class ManageDefectreceptionDao {

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
		drblist = sqlSession.selectList("DrBoard.selectBoardList", null, row);
		return drblist;
	}
}
