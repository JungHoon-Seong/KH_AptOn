package kh.teamproject.apton.votesign.model.vo;


public class VoteInfo {
//	vote_no        NOT NULL NUMBER         
//	category                NUMBER         
//	admin_id       NOT NULL VARCHAR2(20)   
//	vote_title              VARCHAR2(200)  
//	vote_desc               VARCHAR2(2000) 
//	vote_rights             NUMBER         
//	vote_Y                  NUMBER         
//	vote_N                  NUMBER         
//	vote_startdate          DATE           
//	vote_deadline           DATE    
	
	private static final long serialVersionUID = 1111L; 
	private int voteNo;
	private int category;
	private String adminId;
	private String voteTitle;
	private String voteDesc;
	private int voteRights; //투표 및 서명 대상자 수
	private int voteY; 
	private int voteN;
	private String voteStartDate;
	private String voteDeadLine;
	public VoteInfo(int voteNo, int category, String adminId, String voteTitle, String voteDesc, int voteRights,
			int voteY, int voteN, String voteStartDate, String voteDeadLine) {
		super();
		this.voteNo = voteNo;
		this.category = category;
		this.adminId = adminId;
		this.voteTitle = voteTitle;
		this.voteDesc = voteDesc;
		this.voteRights = voteRights;
		this.voteY = voteY;
		this.voteN = voteN;
		this.voteStartDate = voteStartDate;
		this.voteDeadLine = voteDeadLine;
	}
	public int getVoteNo() {
		return voteNo;
	}
	public void setVoteNo(int voteNo) {
		this.voteNo = voteNo;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getVoteTitle() {
		return voteTitle;
	}
	public void setVoteTitle(String voteTitle) {
		this.voteTitle = voteTitle;
	}
	public String getVoteDesc() {
		return voteDesc;
	}
	public void setVoteDesc(String voteDesc) {
		this.voteDesc = voteDesc;
	}
	public int getVoteRights() {
		return voteRights;
	}
	public void setVoteRights(int voteRights) {
		this.voteRights = voteRights;
	}
	public int getVoteY() {
		return voteY;
	}
	public void setVoteY(int voteY) {
		this.voteY = voteY;
	}
	public int getVoteN() {
		return voteN;
	}
	public void setVoteN(int voteN) {
		this.voteN = voteN;
	}
	public String getVoteStartDate() {
		return voteStartDate;
	}
	public void setVoteStartDate(String voteStartDate) {
		this.voteStartDate = voteStartDate;
	}
	public String getVoteDeadLine() {
		return voteDeadLine;
	}
	public void setVoteDeadLine(String voteDeadLine) {
		this.voteDeadLine = voteDeadLine;
	}
	@Override
	public String toString() {
		return "VoteInfo [voteNo=" + voteNo + ", category=" + category + ", adminId=" + adminId + ", voteTitle="
				+ voteTitle + ", voteDesc=" + voteDesc + ", voteRights=" + voteRights + ", voteY=" + voteY + ", voteN="
				+ voteN + ", voteStartDate=" + voteStartDate + ", voteDeadLine=" + voteDeadLine + "]";
	}
	
	
}
