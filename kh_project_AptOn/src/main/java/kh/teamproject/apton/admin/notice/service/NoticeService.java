package kh.teamproject.apton.admin.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.admin.notice.dao.NoticeDao;
import kh.teamproject.apton.admin.notice.vo.Notice;


@Service("noticeService")
public class NoticeService {
	@Autowired
	private NoticeDao NoticeDao;

	public int getListCount() {
		return NoticeDao.getNoticelistCount();
	}
	
	
	public List<Notice> selectNoticeList(int currentPage, int limit) {
		List<Notice> vo = null;
		
		try {
			vo = NoticeDao.selectNoticeList(currentPage, limit);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public List<Notice> selectContentView(int noticenum)  {
		List<Notice> vo = null;
		
		try {
			vo = NoticeDao.selectContentView(noticenum);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	public int updateNotice(int no, String ncont) {
		// TODO Auto-generated method stub
		return 0;
	}


	
	public int insertNotice(Notice vo) {
		// TODO Auto-generated method stub
		return 0;
	}


	
	public int deleteNotice(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

}
