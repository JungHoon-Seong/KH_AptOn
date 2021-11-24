package kh.teamproject.apton.votesign.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.member.model.vo.Member;
import kh.teamproject.apton.votesign.model.dao.VoteSignDao;
import kh.teamproject.apton.votesign.model.vo.VoteInfo;
import kh.teamproject.apton.votesign.model.vo.VoteRecords;

@Service("votesignservice")
public class VoteSignService implements VoteSignServiceInterface{
	
	@Autowired
	private VoteSignDao votesigndao;
	
	@Override
	public List<Map> votelist(int currentPage, int limit) throws Throwable{
		
		return votesigndao.votelist(currentPage, limit);
	}
	@Override
	public int getListCount() throws Throwable{
		
		return votesigndao.getListCount();
	}
	@Override
	public int enrollvote(VoteInfo vo) throws Throwable{
		
		return votesigndao.enrollvote(vo);
	}
	@Override
	public VoteInfo selectvotedetail(int vote_no) throws Throwable{
		
		return votesigndao.selectvotedetail(vote_no);
	}
	@Override
	public int deleteVote(int voteNo) throws Throwable{
		
		return votesigndao.deleteVote(voteNo);
	}
	@Override
	public int doVote(VoteRecords vo) throws Throwable {
			
			return votesigndao.doVote(vo);
	}
	@Override
	public int checkVote(VoteRecords vo) throws Throwable {
		
		return votesigndao.checkVote(vo);
	}
	@Override
	public int updateYes(int voteNo) throws Throwable {

		return votesigndao.updateYes(voteNo);
	}
	@Override
	public int updateNo(int voteNo) throws Throwable {
		
		return votesigndao.updateNo(voteNo);
	}
	@Override
	public int submitSign(Member vo) throws Throwable {
		
		
		return votesigndao.submitSign(vo);
	}
	@Override
	public byte[] loadSign(long HouseNum) throws Throwable {
		return votesigndao.loadSign(HouseNum);
	}
	

}//class
