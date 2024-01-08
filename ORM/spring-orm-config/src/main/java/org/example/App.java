package org.example;

import org.example.dao.StudentDao;
import org.example.model.Student;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class App {
    public static void main(String[] args) {
        System.out.println("Spring orm");
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("hibernate.cfg.xml");

        StudentDao studentDao = applicationContext.getBean(StudentDao.class);

        Student student = Student.builder()
                .name("Rushikesh")
                .address("Pune")
                .mobile("9075063779")
                .build();

        studentDao.save(student);
    }
}
