package kh.teamproject.apton.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.admin.model.dao.AdminDao;
import kh.teamproject.apton.admin.model.vo.Admin;

@Service
public class AdminService {

	@Autowired
	private AdminDao adminDao;
	
	public Admin login(Admin avo) {
		return adminDao.login(avo);
	}
}
