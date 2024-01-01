package org.example;

import org.example.configuration.JavaWay;
import org.example.model.Course;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext applicationContext = new AnnotationConfigApplicationContext(JavaWay.class);
        Course course = applicationContext.getBean(Course.class);
        course.setCourseName("Full Stack Java");
        course.setCoursePrice(50000);
        course.setId(01);
        System.out.println(course);

    }
}
