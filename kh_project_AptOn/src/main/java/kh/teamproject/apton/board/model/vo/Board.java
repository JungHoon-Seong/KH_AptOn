package kh.teamproject.apton.board.model.vo;

import java.sql.Date;

public class Board {

	/*
BOARD_NUM               NOT NULL NUMBER         
BOARD_TITLE                      VARCHAR2(50)   
BOARD_WRITER                     VARCHAR2(15)   
BOARD_CONTENT                    VARCHAR2(2000) 
BOARD_ORIGINAL_FILENAME          VARCHAR2(100)  
BOARD_RENAME_FILENAME            VARCHAR2(100)  
BOARD_DATE                       DATE           
BOARD_LEVEL                      NUMBER         
BOARD_REF                        NUMBER         
BOARD_REPLY_REF                  NUMBER         
BOARD_REPLY_SEQ                  NUMBER         
BOARD_READCOUNT                  NUMBER       
	  
	 */
	
	private static final long serialVersionUID = 1111L; // 왜쓰느냐 : 전달할 때 쓸 것, IOstream
	private int boardNum;
	private String boardTitle;
	private String boardWriter;
	private String boardContent;
	private String boardOriginalFileName;
	private String boardRenameFileName;
	private Date date;
	private int level;
	private int ref;
	private int replyRef;
	private int replySeq;
	private int readCount;
	
	public Board() {
		// TODO Auto-generated constructor stub
	}

	public Board(int boardNum, String boardTitle, String boardWriter, String boardContent, String boardOriginalFileName,
			String boardRenameFileName, Date date, int level, int ref, int replyRef, int replySeq, int readCount) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardWriter = boardWriter;
		this.boardContent = boardContent;
		this.boardOriginalFileName = boardOriginalFileName;
		this.boardRenameFileName = boardRenameFileName;
		this.date = date;
		this.level = level;
		this.ref = ref;
		this.replyRef = replyRef;
		this.replySeq = replySeq;
		this.readCount = readCount;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardOriginalFileName() {
		return boardOriginalFileName;
	}

	public void setBoardOriginalFileName(String boardOriginalFileName) {
		this.boardOriginalFileName = boardOriginalFileName;
	}

	public String getBoardRenameFileName() {
		return boardRenameFileName;
	}

	public void setBoardRenameFileName(String boardRenameFileName) {
		this.boardRenameFileName = boardRenameFileName;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getReplyRef() {
		return replyRef;
	}

	public void setReplyRef(int replyRef) {
		this.replyRef = replyRef;
	}

	public int getReplySeq() {
		return replySeq;
	}

	public void setReplySeq(int replySeq) {
		this.replySeq = replySeq;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	@Override
	public String toString() {
		return "Board [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardWriter=" + boardWriter
				+ ", boardContent=" + boardContent + ", boardOriginalFileName=" + boardOriginalFileName
				+ ", boardRenameFileName=" + boardRenameFileName + ", date=" + date + ", level=" + level + ", ref="
				+ ref + ", replyRef=" + replyRef + ", replySeq=" + replySeq + ", readCount=" + readCount + "]";
	}
	
	

}
