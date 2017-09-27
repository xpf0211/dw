package com.ssm.student.dao;

import java.util.List;

import com.ssm.student.entity.Student;

/**
 * 学生模块业务层接口
 * @author pengfei.xiong
 * @date 2017-8-13
 */
public interface StudentDao {
	
	
	public List<Student> selectAll();
}
