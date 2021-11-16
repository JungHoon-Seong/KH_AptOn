package kh.teamproject.apton.votesign.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.teamproject.apton.votesign.model.dao.VoteSignDao;
import kh.teamproject.apton.votesign.model.vo.VoteInfo;

@Service("votesignservice")
public class VoteSignService {
	
	@Autowired
	private VoteSignDao votesigndao;
	
	public List<Map> votelist(int currentPage, int limit) throws Throwable,Exception{
		
		return votesigndao.votelist(currentPage, limit);
	}
	public int getListCount() throws Throwable,Exception{
		
		return votesigndao.getListCount();
	}
	


}
