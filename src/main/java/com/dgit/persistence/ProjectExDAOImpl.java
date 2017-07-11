package com.dgit.persistence;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dgit.domain.ProjectEx;

@Repository
public class ProjectExDAOImpl implements ProjectExDAO {
	
	@Inject
	private SqlSession session;

	private static String namespace = "com.dgit.persistence.projectExMapper";
	
	@Override
	public List<ProjectEx> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public void insert(ProjectEx pro) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".insert", pro);
	}

	@Override
	public ProjectEx read(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read", id);
	}

	@Override
	public void update(ProjectEx pro) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", pro);
	}

	@Override
	public void delete(Integer id) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".delete", id);
	}

}
