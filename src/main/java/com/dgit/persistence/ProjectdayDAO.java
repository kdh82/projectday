package com.dgit.persistence;

import java.util.List;

import com.dgit.domain.Projectday;

public interface ProjectdayDAO {
	public void insert(Projectday pd) throws Exception;
	
	public List<Projectday> listAll() throws Exception;
	
	public void update(Projectday pd) throws Exception;
	
	public void delete(int no) throws Exception;
	
	public Projectday read(int no) throws Exception;
}
