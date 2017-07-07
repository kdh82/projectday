package com.dgit.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dgit.domain.Projectday;

@Repository
public class ProjectdayDAOImpl implements ProjectdayDAO {

	@Autowired
	private SqlSession session;	
	
	private static String namespace = "com.dgit.mapper.projectdayMapper";
	
	@Override
	public void insert(Projectday pd) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insert", pd);
	}

	@Override
	public List<Projectday> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}

	@Override
	public void update(Projectday pd) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".update", pd);
	}

	@Override
	public void delete(int no) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete", no);
	}

	@Override
	public Projectday read(int no) throws Exception {
		// TODO Auto-generated method stub
		Projectday pd = session.selectOne(namespace+".read", no);
		return pd;
	}

}
