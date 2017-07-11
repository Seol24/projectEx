package com.dgit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dgit.domain.ProjectEx;
import com.dgit.service.ProjectExService;

@Controller
public class ProjectExController {
	
	@Autowired
	ProjectExService service;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		List<ProjectEx> list = service.listAll();
		model.addAttribute("list", list);
		return "list";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String getInsert() throws Exception {
		System.out.println("------------get----------------");
		return "insert";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String postInsert(ProjectEx pro) throws Exception {
		System.out.println("------Post-------");
		System.out.println(pro);
		service.insert(pro);
		return "redirect:list";
	}
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(int project_id,Model model) throws Exception {
		ProjectEx pro = service.read(project_id);
		model.addAttribute("projectEx", pro);
		return "read";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int project_id,Model model) throws Exception {
		service.delete(project_id);
		return "redirect:list";
	}
	@RequestMapping(value="modify", method=RequestMethod.GET)
	public String modifyGET(int project_id, Model model) throws Exception{
		ProjectEx pro = service.read(project_id);
		model.addAttribute("projectEx", pro);
		
		return "modify";
	}
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public String modifyPOST(ProjectEx pro) throws Exception{
		System.out.println(pro);
		service.update(pro);
		
		System.out.println("-------modifyPost-------------");
		System.out.println(pro.getProject_id());
		return "redirect:read?project_id=" + pro.getProject_id();
	}
	
	
}
