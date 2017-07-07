package com.dgit.controller;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dgit.domain.Projectday;
import com.dgit.persistence.ProjectdayDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class ProjectdayDaoTest {
	
	@Autowired
	private ProjectdayDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(ProjectdayDaoTest.class);
	
	@Test
	public void testInsertProjectday() {
		Projectday pd = new Projectday();
		pd.setNo(7);
		pd.setName("김두환");
		pd.setContent("안녕하세요 새로운 프로젝트에 시작입니다. 잘해보아요 사랑합니다. 여름을 즐겁게 보내보도록해요");
		pd.setGetdate(new Date());
		pd.setEnddate(new Date());
		pd.setOrder("준비");
		logger.info("-------------------------------test :" + pd);
		try{
			dao.insert(pd);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
