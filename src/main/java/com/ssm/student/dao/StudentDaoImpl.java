package com.ssm.student.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssm.student.entity.Student;

@Repository("studentDao")
public class StudentDaoImpl implements StudentDao {
	//注入SqlSessionFactory
	@Autowired
	SqlSessionFactory sessionFactory;

	public void setSessionFactory(SqlSessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public List<Student> selectAll() {
		System.out.println("3...........");
		SqlSession sqlSession = sessionFactory.openSession();
		List<Student> list = sqlSession.selectList("com.ssm.student.dao.StudentDao.selectAll");
		return list;
	}
	
}
