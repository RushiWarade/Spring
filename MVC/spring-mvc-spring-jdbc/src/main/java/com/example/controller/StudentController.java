package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

//   ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring.cfg.xml");


    @RequestMapping("/home")
    public String save(){
        return "home";
    }


    @RequestMapping("/register")
    public String register(){
//        StudentService studentService = applicationContext.getBean(StudentService.class);
//       studentService.save();

        return "register";
    }
}
