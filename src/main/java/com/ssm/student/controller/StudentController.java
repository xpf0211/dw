package com.ssm.student.controller;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.ssm.student.entity.Student;
import com.ssm.student.service.StudentService;
import com.ssm.student.service.StudentServieImpl;
/**
 * 学生处理器
 * @author pengfei.xiong
 * @date 2017-8-13
 */
@Controller
public class StudentController{
	@Autowired  //自动装配ByType
	@Resource(type=StudentService.class)  //自动装配ByName 使用name属性时用byname 使用type时用bytype
	//@Qualifier  //ByNmame注入
	private StudentService studentService;
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
		
	}

	@RequestMapping("/ceshi.do")
	public void register() throws Exception {		
		//注册方法
		List<Student> query = studentService.query();
		
		//ModelAndView mv = new ModelAndView();
		//其底层执行的是request.setAttribute()方法
		System.out.println("1.................");
		
		for (Student student2 : query) {
			System.out.println(student2.getName());
		}
	}

}