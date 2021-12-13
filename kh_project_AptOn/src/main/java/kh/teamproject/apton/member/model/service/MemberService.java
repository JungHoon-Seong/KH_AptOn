package kh.teamproject.apton.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.member.model.dao.MemberDao;
import kh.teamproject.apton.member.model.vo.Member;


@Service("MService")
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	
	public Member login(Member vo) {
		return memberDao.login(vo);
	}

	public int insertMember(Member vo) {
		return memberDao.insertMember(vo);
	}

	public Member idChk(long idParam) {
		return memberDao.idChk(idParam);
	}
	
}
