package kh.teamproject.apton.member.model.vo;


import java.util.Arrays;

import org.springframework.stereotype.Component;
@Component
public class Member {
//	house_num NUMBER NOT NULL PRIMARY KEY, --가구번호
//	pwd	VARCHAR2(500) NOT NULL,  --비밀번호
//	name VARCHAR2(100)	NOT NULL, --이름
//	phone VARCHAR2(500)	NOT NULL, --폰 번호
//	member_sign	VARCHAR(255)  --서명
	private static final long serialVersionUID = 1111L; // 왜쓰느냐 : 전달할 때 쓸 것, IOstream
	private long houseNum;
	private String pwd;
	private String name;
	private String phone;
	private byte[] memberSign; //BLOB 자료형을 위해 byte[]로 타입 지정
	
	public Member() {
		super();
	}
	
	public Member(long houseNum, byte[] memberSign) {
		super();
		this.houseNum = houseNum;
		this.memberSign = memberSign;
	}



	public Member(int houseNum, String pwd, String name, String phone, byte[] memberSign) {
		super();
		this.houseNum = houseNum;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.memberSign = memberSign;
	}

	public long getHouseNum() {
		return houseNum;
	}

	public void setHouseNum(long houseNum) {
		this.houseNum = houseNum;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public byte[] getMemberSign() {
		return memberSign;
	}

	public void setMemberSign(byte[] memberSign) {
		this.memberSign = memberSign;
	}

	@Override
	public String toString() {
		return "Member [houseNum=" + houseNum + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone + ", memberSign="
				+ Arrays.toString(memberSign) + "]";
	}
	
	
	
	
	
	
	

}
