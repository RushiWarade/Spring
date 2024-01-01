package org.example;

import org.example.configuration.SpringAnnotationConfig;
import org.example.model.Course;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


public class App {
    public static void main(String[] args) {
        ApplicationContext applicationContext = new AnnotationConfigApplicationContext(SpringAnnotationConfig.class);
        Course course = applicationContext.getBean(Course.class);
        course.setId(101);
        course.setCourseName("Full Stack Java");
        course.setCoursePrice(50000);

        System.out.println(course);
    }
}
