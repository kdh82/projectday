package com.dgit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.dgit.domain.Projectday;
import com.dgit.persistence.ProjectdayDAO;

@Service
public class ProjectdayServiceImpl implements ProjectdayService {

	@Inject
	private ProjectdayDAO dao;	
	
	@Override
	public List<Projectday> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public void modify(Projectday pd) throws Exception {
		// TODO Auto-generated method stub
		dao.update(pd);
	}

	@Override
	public void remove(int no) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(no);
	}

	@Override
	public Projectday read(int no) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(no);
	}

	@Override
	public void register(Projectday pd) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(pd);
	}

}
