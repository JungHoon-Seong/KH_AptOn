package kh.teamproject.apton.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {

	@Autowired
	private SqlSession sqlSession;
	
	public Member login(Member vo) {
		return sqlSession.selectOne("member-mapper.login", vo);
	}
}
