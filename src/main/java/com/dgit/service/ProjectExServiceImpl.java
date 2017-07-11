package com.dgit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dgit.domain.ProjectEx;
import com.dgit.persistence.ProjectExDAO;

@Service
public class ProjectExServiceImpl implements ProjectExService {

	@Autowired
	private ProjectExDAO dao;
	
	@Override
	public List<ProjectEx> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public void insert(ProjectEx pro) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(pro);
	}

	@Override
	public ProjectEx read(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(id);
	}

	@Override
	public void update(ProjectEx pro) throws Exception {
		// TODO Auto-generated method stub
		dao.update(pro);
	}

	@Override
	public void delete(Integer id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

}
