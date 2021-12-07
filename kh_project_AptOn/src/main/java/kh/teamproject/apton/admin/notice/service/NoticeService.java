package kh.teamproject.apton.admin.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.admin.notice.dao.NoticeDao;
import kh.teamproject.apton.admin.notice.vo.Notice;
import kh.teamproject.apton.votesign.model.vo.VoteInfo;


@Service("noticeService")
public class NoticeService implements NoticeInterface{
	@Autowired
	private NoticeDao NoticeDao;
	
	@Override
	public int getListCount() {
		return NoticeDao.getNoticelistCount();
	}
	
	@Override
	public List<Notice> selectNoticeList(int currentPage, int limit) {
		List<Notice> vo = null;
		
		try {
			vo = NoticeDao.selectNoticeList(currentPage, limit);
	} catch (Throwable e) {
			e.printStackTrace();
		}
		return vo;
	}
	@Override
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

	@Override
	public int NoticeInsert(Notice vo) throws Throwable{
		
		return NoticeDao.NoticeInsert(vo);
	}
	@Override
	public int deleteNotice(String num) throws Exception {
		return NoticeDao.deleteNotice(num);
	}
	@Override
	public int NoticeUpdate(Notice vo) throws Throwable{
		
		return NoticeDao.NoticeUpdate(vo);
	}
}
