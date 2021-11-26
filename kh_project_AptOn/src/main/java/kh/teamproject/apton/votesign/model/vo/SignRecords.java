package kh.teamproject.apton.votesign.model.vo;

public class SignRecords {
//	SIGN_NO	NUMBER
//	HOUSE_NUM	NUMBER
//	SIGN_YN	NUMBER
	private static final long serialVersionUID = 1111L; 
	private int voteNo;
	private long houseNum;
	private int signYN;
	public SignRecords(int voteNo, long houseNum, int signYN) {
		super();
		this.voteNo = voteNo;
		this.houseNum = houseNum;
		this.signYN = signYN;
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
	public int getSignYN() {
		return signYN;
	}
	public void setSignYN(int signYN) {
		this.signYN = signYN;
	}
	@Override
	public String toString() {
		return "SignRecords [voteNo=" + voteNo + ", houseNum=" + houseNum + ", signYN=" + signYN + "]";
	}
	
	
}
