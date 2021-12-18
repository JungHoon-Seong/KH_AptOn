package kh.teamproject.apton.maintenancecost.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.maintenancecost.model.vo.MaintenanceCost;

@Repository("MainCostDao")
public class MaintenanceCostDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<MaintenanceCost> selectOne(long house_num) {
		List<MaintenanceCost> result = sqlSession.selectList("Mcost.house_num", house_num);
		System.out.println("여기 몇개 읽은 값 : "+ result.size());
		return result;
	}
	
	public MaintenanceCost selectprice(MaintenanceCost vo) {
		return sqlSession.selectOne("Mcost.allcost", vo);
	}
}
