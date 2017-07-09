package com.dgit.domain;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;


public class Projectday {
	
	private int no;
	private String name;
	private String content;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date getdate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date enddate;
	
	private String order;
	
	
	
	public Projectday() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Projectday(int no, String name, String content, Date getdate, Date enddate, String order) {
		super();
		this.no = no;
		this.name = name;
		this.content = content;
		this.getdate = getdate;
		this.enddate = enddate;
		this.order = order;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getGetdate() {
		return getdate;
	}

	public void setGetdate(Date getdate) {
		this.getdate = getdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return String.format("Projectday [no=%s, name=%s, content=%s, getdate=%s, enddate=%s, order=%s]", no, name,
				content, getdate, enddate, order);
	}

	
}
