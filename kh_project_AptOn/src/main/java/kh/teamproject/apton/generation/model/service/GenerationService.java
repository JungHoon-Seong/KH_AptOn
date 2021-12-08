package kh.teamproject.apton.generation.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.generation.model.dao.GenerationDao;
import kh.teamproject.apton.generation.model.vo.Generation;

@Service("generationService")
public class GenerationService {

	@Autowired
	private GenerationDao generationDao;
	
	public Generation select(long house_num) {
		return generationDao.selectOne(house_num);
	}
}
