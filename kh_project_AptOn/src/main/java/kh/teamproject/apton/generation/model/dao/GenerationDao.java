package kh.teamproject.apton.generation.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.generation.model.vo.Generation;

@Repository("generationDao")
public class GenerationDao {

	@Autowired
	private SqlSession sqlSession;
	
	public Generation selectOne(long house_num) {
		return sqlSession.selectOne("Generation.selectOne",house_num);
	}
}
