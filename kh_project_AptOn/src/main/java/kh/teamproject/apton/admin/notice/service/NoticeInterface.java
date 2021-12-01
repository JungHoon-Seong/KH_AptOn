package kh.teamproject.apton.admin.notice.service;

import java.util.List;

import kh.teamproject.apton.admin.notice.vo.Notice;

public interface NoticeInterface {
	public int NoticeInsert(Notice vo) throws Throwable;

	int deleteNotice(String num) throws Exception;

	public List<Notice> selectContentView(int noticenum) throws Exception;

	public List<Notice> selectNoticeList(int currentPage, int limit) throws Exception;

	int getListCount() throws Exception;
}
