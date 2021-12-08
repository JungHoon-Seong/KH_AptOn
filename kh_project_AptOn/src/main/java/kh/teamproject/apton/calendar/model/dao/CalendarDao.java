package kh.teamproject.apton.calendar.model.dao;

import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("calendarDao")
public class CalendarDao {

	@Autowired
	private SqlSession sqlSession;	
	
//	public List<Calendar> getCalendar() throws Exception {
//		return sqlSession.selectList();
//	}
//	
//	public void addSchedule(Calendar vo) throws Exception  {
//		sqlSession.insertCalendar( vo);
//	}
}
