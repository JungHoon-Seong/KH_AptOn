package kh.teamproject.apton.defectreception.model.dao;


import java.util.List;


import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;

@Repository("boardDao")
public class BoardDefectreceptionDao { 
	
	public static final int deleteBoard = 0;

	
	
	@Autowired
	private SqlSession sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("DrBoard.getListCount");
	}

	public List<DrBoard> selectBoardList(int currentPage, int limit)  throws Throwable, Exception {
		List<DrBoard> drblist;
		
		int startRow = (currentPage - 1) * limit;
		
		RowBounds row = new RowBounds(startRow, limit);
		drblist = sqlSession.selectList("DrBoard.selectBoardList", null, row);
		return drblist;
	}

	public List<DrBoard> selectContentView(int drno) {
		List<DrBoard> drblist;
		
		drblist = sqlSession.selectList("DrBoard.selectContentView",drno);
		return drblist;
	}

	public int insertBoard(DrBoard bvo) {
		int result = 0;
		
//		sqlSession = getSqlSessionFactory().openSession(false);
		result = sqlSession.insert("DrBoard.insertContent", bvo);
		if (result > 0) {
//			sqlSession.commit();
		}else {
//			sqlSession.rollback();
		}
		
		return result;
	}
	
	public int insertBoardwithImg(DrBoard bvo) {
		int result = 0;
		result = sqlSession.insert("DrBoard.insertContentwithImg", bvo);
		return result;
	}

	public int updateBoard(DrBoard bvo) {
		int result = 0;
		result = sqlSession.update("DrBoard.updateContent", bvo);
		if (result == 0) {
			System.out.println("dao단 이미지 없는 글 업데이트 중 오류발생");
		}
		return result;
	}
	
	public int updateBoardwithImg(DrBoard bvo) {
		int result = 0;
		result = sqlSession.update("DrBoard.updateContent",bvo);
		result = sqlSession.update("DrBoard.updateContentwithImg",bvo);
		
		//되기는하나 이미 이미지가 있을경우 오류발생
		//result += sqlSession.insert("DrBoard.insertforUpdateContentwithImg",bvo);
		
		if (result == 0) {
			System.out.println("dao단 이미지업데이트 중 오류발생");
		}
		return result;
	}

	public int deleteBoard(DrBoard bvo) {
		int result = 0;
		result = sqlSession.delete("DrBoard.deleteContent", bvo);
		if (result == 0) {
			System.out.println("dao단오류발생");
		}
		return result;
	}

	


	
	

}
