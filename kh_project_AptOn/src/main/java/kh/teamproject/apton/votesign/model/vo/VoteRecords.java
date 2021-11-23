package kh.teamproject.apton.votesign.model.vo;

public class VoteRecords {
//
//	VOTE_NO    NOT NULL NUMBER 
//	HOUSE_NUM  NOT NULL NUMBER 
//	VOTE_CHECK NOT NULL NUMBER 
	private static final long serialVersionUID = 1111L; 
	private int voteNo;
	private long houseNum;
	private int voteCheck;
	
	public VoteRecords() {}

	public VoteRecords(int voteNo) {
		super();
		this.voteNo = voteNo;
	}
	public VoteRecords(int voteNo, long houseNum, int voteCheck) {
		super();
		this.voteNo = voteNo;
		this.houseNum = houseNum;
		this.voteCheck = voteCheck;
	}

	public VoteRecords(int voteNo, long houseNum) {
		super();
		this.voteNo = voteNo;
		this.houseNum = houseNum;
	}

	public int getVoteNo() {
		return voteNo;
	}

	public void setVoteNo(int voteNo) {
		this.voteNo = voteNo;
	}

	public long getHouseNum() {
		return houseNum;
	}

	public void setHouseNum(long houseNum) {
		this.houseNum = houseNum;
	}

	public int getVoteCheck() {
		return voteCheck;
	}

	public void setVoteCheck(int voteCheck) {
		this.voteCheck = voteCheck;
	}
	
	@Override
	public String toString() {
		return "VoteRecords [voteNo=" + voteNo + ", houseNum=" + houseNum + ", voteCheck=" + voteCheck + "]";
	}
	
	
	
	
	
	
	
	
	

}
