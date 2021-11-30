package kh.teamproject.apton.common_energy_usage.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.common_energy_usage.model.vo.CommonUsage;

@Repository("commonUsageDao")
public class CommonUsageDao {
	
	@Autowired
	private SqlSession sqlSession;

	public CommonUsage selectOne(int cost_num) {
		return sqlSession.selectOne("ComUsage.selectOne", cost_num);
	}
	
	public List<CommonUsage> allprice(String date) {
		return sqlSession.selectList("ComUsage.allprice", date);
	}
}
