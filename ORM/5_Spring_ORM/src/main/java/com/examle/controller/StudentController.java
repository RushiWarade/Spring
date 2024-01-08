package com.examle.controller;


import com.examle.Student;
import com.examle.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class StudentController {

    @Autowired
    StudentService studentService ;

    public int saveStudent(Student student) {
        return studentService.saveStudent(student);
    }

}
