package kh.teamproject.apton.generation.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.generation.model.vo.Generation;

@Repository("generationDao")
public class GenerationDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<Generation> selectOne(long house_num) {
		return sqlSession.selectList("Generation.selectOne",house_num);
	}
}
