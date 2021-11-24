package kh.teamproject.apton.admin.model.vo;

public class Admin {
	
//	admin_id	VARCHAR2(100)	NOT NULL PRIMARY KEY, --관리자 아이디
//	admin_pwd	VARCHAR2(100)	NOT NULL, --비밀번호
//	admin_log	DATE--로그 기록
	
	private static final long serialVersionUID = 1111L; 
	private String adminId;
	private String adminPwd;
	private String adminLog; // 참고 : db에서 date타입

	public Admin() {}

	public Admin(String adminId, String adminPwd, String adminLog) {
		super();
		this.adminId = adminId;
		this.adminPwd = adminPwd;
		this.adminLog = adminLog;
	}
	
	public Admin(String adminId, String adminPwd) {
		super();
		this.adminId = adminId;
		this.adminPwd = adminPwd;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public String getAdminLog() {
		return adminLog;
	}

	public void setAdminLog(String adminLog) {
		this.adminLog = adminLog;
	}

	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminPwd=" + adminPwd + ", adminLog=" + adminLog + "]";
	}
	
	

}
