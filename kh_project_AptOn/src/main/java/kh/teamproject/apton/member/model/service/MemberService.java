package kh.teamproject.apton.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.member.model.dao.MemberDao;
import kh.teamproject.apton.member.model.vo.Member;


@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	
	public Member login(Member vo) {
		return memberDao.login(vo);
	}
	
}
