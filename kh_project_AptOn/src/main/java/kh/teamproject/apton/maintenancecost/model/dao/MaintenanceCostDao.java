package kh.teamproject.apton.maintenancecost.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("MainCostDao")
public class MaintenanceCostDao {

	@Autowired
	private SqlSession sqlSession;
}
