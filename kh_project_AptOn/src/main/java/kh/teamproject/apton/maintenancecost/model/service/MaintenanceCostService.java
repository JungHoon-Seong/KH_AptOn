package kh.teamproject.apton.maintenancecost.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.maintenancecost.model.dao.MaintenanceCostDao;
import kh.teamproject.apton.maintenancecost.model.vo.MaintenanceCost;

@Service("MainCostService")
public class MaintenanceCostService {

	@Autowired
	private MaintenanceCostDao mainCostDao;
	
	public List<MaintenanceCost> select(long house_num) {
		return mainCostDao.selectOne(house_num);
	}
}
