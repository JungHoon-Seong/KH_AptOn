package kh.teamproject.apton.calendar.model.service;

import java.util.List;

import kh.teamproject.apton.calendar.model.vo.Calendar;

public interface CalendarServicelmpl {
	
	public List<Calendar> getCalendar() throws Exception;
	
	public int insertCalendar(Calendar vo) throws Exception;
	
	public List<Calendar> selectCalendarView(int Calendarnum) throws Exception;
	
	public int deleteCalendar(int calendarnum) throws Exception;
	
	public int updateCalendar(Calendar vo) throws Exception;

}
