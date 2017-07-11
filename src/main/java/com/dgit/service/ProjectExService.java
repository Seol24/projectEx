package com.dgit.service;

import java.util.List;

import com.dgit.domain.ProjectEx;

public interface ProjectExService {
	public List<ProjectEx> listAll() throws Exception;
	public void insert(ProjectEx pro) throws Exception;
	public ProjectEx read(Integer id) throws Exception;
	
	public void update(ProjectEx pro) throws Exception;
	public void delete(Integer id) throws Exception;
}
