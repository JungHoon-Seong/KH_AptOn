package kh.teamproject.apton.votesign.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.votesign.model.vo.VoteInfo;


@Repository("votesigndao")
public class VoteSignDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	public List<Map> votelist(int currentPage, int limit) throws Throwable, Exception{
		
		
		int startRow = (currentPage -1) * limit;
		
		RowBounds row = new RowBounds(startRow, limit);
		return sqlsession.selectList("VoteInfo.votelist",null,row);
		
	}
	public int  getListCount() throws Throwable, Exception{
		
		return sqlsession.selectOne("VoteInfo.getListCount");
		
	}
	
	public int enrollvote(VoteInfo vo) throws Throwable,Exception{

		return sqlsession.insert("VoteInfo.enrollvote",vo);
	}
	public VoteInfo selectvotedetail(int vote_no) throws Throwable,Exception{
		
		return sqlsession.selectOne("VoteInfo.selectvotedetail",vote_no);
	}


}
