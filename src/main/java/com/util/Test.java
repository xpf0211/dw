package com.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class Test {

	public static void main(String[] args) {
		/**模拟数据开始*/
	    List<Employee> staffs = new ArrayList<Employee>();
	    staffs.add(new Employee("熊鹏飞", "一组", 2017, 9, 20, 20000));
	    staffs.add(new Employee("阳杰", "一组", 2017, 9, 20, 20000));
	    staffs.add(new Employee("李庄毅", "一组", 2017, 9, 20, 20000));
	    staffs.add(new Employee("汤辉", "一组", 2017, 9, 20, 20000));
	    staffs.add(new Employee("龙泽文", "一组", 2017, 9, 20, 20000));
	    
	    //System.out.println(staffs.size());
	    List<Employee> staff = new ArrayList<Employee>();
	    
	    for (Employee employee : staffs) {
			Employee emps = new Employee(employee.getName(), employee.getClazz(), employee.getYear(),
					employee.getMonth(), employee.getDay(), employee.getSalary());
			System.out.println(employee.getName());
			staff.add(emps);
		}
	    
	    Map<String,String> titleMap = new LinkedHashMap<String,String>();
	    titleMap.put("name", "姓名");
	    titleMap.put("clazz", "组号");
	    titleMap.put("year", "年份");
	    titleMap.put("month", "月份");
	    titleMap.put("day", "天");
	    titleMap.put("salary", "薪资");
	    String sheetName = "信息导出";
	    /**模拟数据结束*/

	    System.out.println("start导出");
	    long start = System.currentTimeMillis();
	    ExportExcel.excelExport(staff, titleMap, sheetName);
	    long end = System.currentTimeMillis();
	    System.out.println("end导出");
	    System.out.println("耗时："+(end-start)+"ms");
	  }
	}

