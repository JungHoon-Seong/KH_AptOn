package kh.teamproject.apton.votesign.model.service;

import java.util.List;
import java.util.Map;

import kh.teamproject.apton.member.model.vo.Member;
import kh.teamproject.apton.votesign.model.vo.VoteInfo;
import kh.teamproject.apton.votesign.model.vo.VoteRecords;

public interface VoteSignServiceInterface {
	
	public List<Map> votelist(int currentPage, int limit) throws Throwable;
	
	public int getListCount() throws Throwable;
	
	public int enrollvote(VoteInfo vo) throws Throwable;
	
	public VoteInfo selectvotedetail(int vote_no) throws Throwable;
	
	public int deleteVote(int voteNo) throws Throwable;
	
	public int doVote(VoteRecords vo) throws Throwable;
	
	public int checkVote(VoteRecords vo) throws Throwable;
	
	public int updateYes(int voteNo) throws Throwable;
	
	public int updateNo(int voteNo) throws Throwable;
	
	public int submitSign(Member vo) throws Throwable;
	
	public byte[] loadSign(long HouseNum) throws Throwable;

}
