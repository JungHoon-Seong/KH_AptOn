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


	public List<CommonUsage> price(int cost_num) {
		System.out.println("요기 cost_num : "+cost_num );
		List<CommonUsage> result = sqlSession.selectList("ComUsage.allprice", String.valueOf(cost_num));
		System.out.println("여기 몇개 읽은겨 : "+ result.size());
		return result;

	}

}