package kh.teamproject.apton.calendar.model.dao;


import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.teamproject.apton.admin.notice.vo.Notice;
import kh.teamproject.apton.calendar.model.vo.Calendar;

@Repository("calendarDao")
public class CalendarDao {

	@Autowired
	private SqlSession sqlSession;	
	
	public List<Calendar> getCalendar() throws Exception {
		List<Calendar> calendar = null;
		
		
		calendar = sqlSession.selectList("Calendar.calendarlist");
		System.out.println("달력dao: "+ calendar);
		return calendar;
		
	}
	
//	
//	public void addSchedule(Calendar vo) throws Exception  {
//		sqlSession.insertCalendar( vo);
//	}
}
