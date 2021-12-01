package kh.teamproject.apton.defectreception.model.vo;

import java.io.Serializable;

public class Message  implements Serializable{
	
	private static final long serialVersionID = 1L;
	
	private String contents;
	
	public String getContents() {
		return contents;
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}
}
