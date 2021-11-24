package kh.teamproject.apton.admin.notice.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.admin.notice.vo.Notice;
import kh.teamproject.apton.defectreception.model.vo.DrBoard;


@Repository("noticeDao")
public class NoticeDao {

	@Autowired
	private SqlSession sqlSession;

	public int getNoticelistCount() {
		return sqlSession.selectOne("Notice.getNoticelistCount");
	}

	public List<Notice> selectNoticeList(int currentPage, int limit)  throws Throwable, Exception {
		List<Notice> noticelist;
		
		int startRow = (currentPage - 1) * limit;
		
		RowBounds row = new RowBounds(startRow, limit);
		

		noticelist = sqlSession.selectList("Notice.Noticelist",null, row);
		return noticelist;
	}

	public List<Notice> selectContentView(int noticenum) throws Exception {
		List<Notice> noticelist;
		
		noticelist = sqlSession.selectList("Notice.selectContentView",noticenum);
		return noticelist;
	}
	
	public int deleteNotice(String notice_num) throws Exception {
		int result = 0;
		System.out.println("daonum: "+ notice_num);
		result = sqlSession.delete("Notice.deleteNotice", notice_num);
		if (result == 0) {
			System.out.println("dao단오류발생");
		}
		return result;
	}
}
