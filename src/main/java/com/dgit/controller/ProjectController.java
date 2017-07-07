package com.dgit.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dgit.domain.Projectday;
import com.dgit.service.ProjectdayService;

@Controller
@RequestMapping("/project/*")
public class ProjectController {
	private static Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Autowired
	private ProjectdayService service;
	
	@RequestMapping(value="listAll", method=RequestMethod.GET)
	public String listAll(Model model) throws Exception{
		List<Projectday> list = service.listAll();
		model.addAttribute("list", list);
		System.out.println(list);
		return "project/listProject";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerGet() throws Exception{
		System.out.println("GET----------------------------------------------");
		return "project/insertForm";
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String registerPost(Projectday pd) throws Exception{
		service.register(pd);
		System.out.println("POST----------------------------------------------: ");
		return "redirect:listAll";
	}  
	
	@RequestMapping(value="read", method=RequestMethod.GET)
	public String readPage(int no, Model model) throws Exception{
		Projectday pd = service.read(no);
		
		model.addAttribute("projectday", pd);
		return "project/detailForm";
	}
	
	@RequestMapping(value="modify", method=RequestMethod.GET)
	public String modifyGet(int no, Model model) throws Exception{
		Projectday pd = service.read(no);
		model.addAttribute("pd", pd);
		return "project/modifyForm";
	}
	
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public String modifyPost(@ModelAttribute("pd") Projectday pd, RedirectAttributes rttr) throws Exception{
		service.modify(pd);
		rttr.addAttribute(pd);
		return "redirect:read";
	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String delete(int no) throws Exception{
		service.remove(no);
		return "redirect:listAll";
	}
}
