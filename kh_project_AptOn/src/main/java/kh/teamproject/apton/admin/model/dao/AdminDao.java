package kh.teamproject.apton.admin.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.admin.model.vo.Admin;

@Repository
public class AdminDao {

	@Autowired
	private SqlSession sqlSession;
	
	public Admin login(Admin avo) {
		return sqlSession.selectOne("Admin.login", avo);
	}
}
