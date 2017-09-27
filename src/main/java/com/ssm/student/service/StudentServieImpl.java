package com.ssm.student.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.student.dao.StudentDao;
import com.ssm.student.entity.Student;
/**
 * 学生模块业务层实体类
 * @author pengfei.xiong
 * @date 2017-8-13
 */
@Service("studentService")
public class StudentServieImpl implements StudentService {
	@Resource(name = "studentDao") 	//注入dao
	private StudentDao studentDao;
	

	@Override
	public List<Student> query() {
		List<Student> selectAll = studentDao.selectAll();
		System.out.println("2...........");
		return selectAll;
		
	}


}
