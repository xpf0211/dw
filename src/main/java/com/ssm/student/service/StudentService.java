package com.ssm.student.service;

import java.util.List;

import com.ssm.student.entity.Student;

/**
 * 学生模块业务层接口
 * @author pengfei.xiong
 * @date 2017-8-13
 */
public interface StudentService {
	public List<Student> query();
}
