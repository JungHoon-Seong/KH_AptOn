package kh.teamproject.apton.defectreception.model.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;

@Repository("boardDao")
public class BoardDefectreceptionDao { 
	
	//TODO SJH autocommit을 끄기 위해 추가했으나  getSqlSessionFactory메소드를 꼭 써야하는지 확인이 필요함
	private SqlSessionFactory getSqlSessionFactory() {
		String resource = "/mybatis-config.xml";
		SqlSessionFactory factory = null;
		try {
			// InputStream으로 Mybatis의 설정 정보를 읽어 온다
			InputStream inputStream = Resources.getResourceAsStream(resource);
			// 읽어 온 Mybatis의 설정 정보를 바탕으로 SqlSessionFactoryBuilder를 생성한다
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			factory = builder.build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return factory;
	}
	
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
	
	

}
