package kh.teamproject.apton.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.defectreception.model.vo.DrBoard;
import kh.teamproject.apton.manage.model.dao.ManageDefectreceptionDao;

@Service("manageDfboardService")
public class ManageDefectreceptionService {
	@Autowired
	private ManageDefectreceptionDao manageDfboardDao;
	
	public int getListCount() {
		return manageDfboardDao.getListCount();
	}

	public List<DrBoard> selectBoardList(int currentPage, int limit) {
		List<DrBoard> vo = null;
		
		try {
			vo = manageDfboardDao.selectBoardList(currentPage, limit);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return vo;
	}
	
}
