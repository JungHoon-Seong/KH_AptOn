package kh.teamproject.apton.defectreception.model.vo;

public class DrBoard {
	
	private int drNo;
	private int houseNo;
	private String adminId;
	private String drTitle;
	private String drContent;
	private String drDate; //db에는 Date이기 때문에 to_char로 출력 , to_date로 입력을 sql구문에 적어줘야함.
	private int drState;
	private String drProcessingDate; //db에는 Date이기 때문에 to_char로 출력 , to_date로 입력을 sql구문에 적어줘야함.
	private String drProcessingDetail;


	public DrBoard() {
		super();
		// TODO Auto-generated constructor stub
	}


	public DrBoard(int houseNum, String adminId2, String title, String content, String date,int state) {
		this.houseNo = houseNum;
		this.adminId = adminId2;
		this.drTitle = title;
		this.drContent = content;
		this.drDate = date;
		this.drState = state;
	}




	public DrBoard(int houseNum, String adminId2, String title, String content, int state
			, String processingDetail) {
		this.houseNo = houseNum;
		this.adminId = adminId2;
		this.drTitle = title;
		this.drContent = content;
		this.drState = state;
		this.drProcessingDetail = processingDetail;
	}


	@Override
	public String toString() {
		return "DR_Board [drNo=" + drNo + ", houseNo=" + houseNo + ", adminId=" + adminId + ", drTitle=" + drTitle
				+ ", drContent=" + drContent + ", drDate=" + drDate + ", drState=" + drState + ", drProcessingDate="
				+ drProcessingDate + ", drProcessingDetail=" + drProcessingDetail + "]";
	}
	
	public int getDrNo() {
		return drNo;
	}
	public void setDrNo(int drNo) {
		this.drNo = drNo;
	}
	public int getHouseNo() {
		return houseNo;
	}
	public void setHouseNo(int houseNo) {
		this.houseNo = houseNo;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getDrTitle() {
		return drTitle;
	}
	public void setDrTitle(String drTitle) {
		this.drTitle = drTitle;
	}
	public String getDrContent() {
		return drContent;
	}
	public void setDrContent(String drContent) {
		this.drContent = drContent;
	}
	public String getDrDate() {
		return drDate;
	}
	public void setDrDate(String drDate) {
		this.drDate = drDate;
	}
	public int getDrState() {
		return drState;
	}
	public void setDrState(int drState) {
		this.drState = drState;
	}
	public String getDrProcessingDate() {
		return drProcessingDate;
	}
	public void setDrProcessingDate(String drProcessingDate) {
		this.drProcessingDate = drProcessingDate;
	}
	public String getDrProcessingDetail() {
		return drProcessingDetail;
	}
	public void setDrProcessingDetail(String drProcessingDetail) {
		this.drProcessingDetail = drProcessingDetail;
	}
	
	
	
}
