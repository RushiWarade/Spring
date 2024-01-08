package com.examle;

import com.examle.controller.StudentController;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
	public static void main(String[] args) {
		System.out.println("-----------------");

		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("config.xml");

		StudentController studentController = applicationContext.getBean(StudentController.class);


		Student st = new Student();
		st.setName("Saurabh");
		st.setAddress("Pune");

		  int i = studentController.saveStudent(st); System.out.println("Insert sucessfully " + i);

		/*
		 * Student st = dao.getStudent(2); System.out.println(st);
		 */

		/*
		 * dao.updateStudent(st); System.out.println("Update Sucessfully");
		 */

		/*
		 * dao.deleteStudent(2);
		 * 
		 * List<Student> list = dao.getAllStudent(); for (Student sts : list) {
		 * System.out.println(sts); }
		 */

//		Student sts = dao.getStudentBy("Pavy", 2);
//		System.out.println(sts);
	}
}
