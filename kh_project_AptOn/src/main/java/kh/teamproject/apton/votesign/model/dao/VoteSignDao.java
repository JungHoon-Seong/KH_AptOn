package kh.teamproject.apton.votesign.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.votesign.model.vo.VoteInfo;
import kh.teamproject.apton.votesign.model.vo.VoteRecords;


@Repository("votesigndao")
public class VoteSignDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	public List<Map> votelist(int currentPage, int limit) throws Throwable{
		
		
		int startRow = (currentPage -1) * limit;
		
		RowBounds row = new RowBounds(startRow, limit);
		return sqlsession.selectList("VoteInfo.votelist",null,row);
		
	}
	public int  getListCount() throws Throwable{
		
		return sqlsession.selectOne("VoteInfo.getListCount");
		
	}
	
	public int enrollvote(VoteInfo vo) throws Throwable{

		return sqlsession.insert("VoteInfo.enrollvote",vo);
	}
	public VoteInfo selectvotedetail(int vote_no) throws Throwable{
		
		return sqlsession.selectOne("VoteInfo.selectvotedetail",vote_no);
	}
	
	public int deleteVote(int voteNo) throws Throwable{
		
		return sqlsession.delete("VoteInfo.deleteVote", voteNo);
	}
	
	public int doVote(VoteRecords vo) throws Throwable{
		
		return sqlsession.insert("VoteRecords.doVote", vo);
	}
	
	public int checkVote(VoteRecords vo) throws Throwable{
		
		return sqlsession.selectOne("VoteRecords.checkVote", vo);
	}
	
	public int updateYes(int voteNo) throws Throwable{
		
		return sqlsession.update("VoteInfo.updateYes", voteNo);
	}
	public int updateNo(int voteNo) throws Throwable{
		
		return sqlsession.update("VoteInfo.updateYes", voteNo);
	}
	


}
