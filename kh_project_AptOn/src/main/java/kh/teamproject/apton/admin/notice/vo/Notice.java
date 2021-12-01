package kh.teamproject.apton.admin.notice.vo;

import java.sql.Date;

public class Notice {


	private String notice_num;
	private String admin_id;
	private String notice_title;
	private String notice_content;
	private String notice_image;
	private Date notice_date;
	
	
	public Notice(String admin_id, String notice_title, String notice_content) {
		super();
		this.admin_id = admin_id;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
	}
	public Notice(String notice_num) {
		this.notice_num = notice_num;
	}

	
	@Override
	public String toString() {
		return "Notice [notice_num=" + notice_num + ", admin_id=" + admin_id + ", notice_title=" + notice_title
				+ ", notice_content=" + notice_content + ", notice_image=" + notice_image + ", notice_date="
				+ notice_date + "]";
	}

	public String getNotice_num() {
		return notice_num;
	}

	public void setNotice_num(String notice_num) {
		this.notice_num = notice_num;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_image() {
		return notice_image;
	}

	public void setNotice_image(String notice_image) {
		this.notice_image = notice_image;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}

	public Notice() {
		// TODO Auto-generated constructor stub
	}

}
