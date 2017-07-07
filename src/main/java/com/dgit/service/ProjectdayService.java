package com.dgit.service;

import java.util.List;

import com.dgit.domain.Projectday;

public interface ProjectdayService {
	public List<Projectday> listAll() throws Exception;
	public void register(Projectday pd) throws Exception;
	public void modify(Projectday pd) throws Exception;
	public void remove(int no) throws Exception;
	public Projectday read(int no) throws Exception;
}
