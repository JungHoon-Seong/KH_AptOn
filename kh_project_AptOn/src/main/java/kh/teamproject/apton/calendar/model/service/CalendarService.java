package kh.teamproject.apton.calendar.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.admin.notice.vo.Notice;
import kh.teamproject.apton.calendar.model.dao.CalendarDao;
import kh.teamproject.apton.calendar.model.vo.Calendar;

@Service("CalendarService")
public class CalendarService implements CalendarServicelmpl {

@Autowired
private CalendarDao calendardao;

@Override
public List<Calendar> getCalendar() throws Exception{
	return calendardao.getCalendar();
}

public int insertCalendar(Calendar vo) throws Exception{
	System.out.println("Calendardao값: " + vo);	
	return calendardao.insertCalendar(vo);
}
@Override
public List<Calendar> selectCalendarView(int calendarnum) throws Exception  {
	
	return calendardao.selectCalendarView(calendarnum);
}

@Override
public int deleteCalendar(int calendarnum) throws Exception  {
	
	return calendardao.deleteCalendar(calendarnum);
}

@Override
public int updateCalendar(Calendar vo) throws Exception  {
	
	return calendardao.updateCalendar(vo);
}

}
