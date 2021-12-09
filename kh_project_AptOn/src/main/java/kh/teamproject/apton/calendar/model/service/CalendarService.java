package kh.teamproject.apton.calendar.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
