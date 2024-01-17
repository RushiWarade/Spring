package com.example.controller;

import com.example.dao.StudentDao;
import com.example.model.Student;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class StudentController {
    @Autowired
    StudentDao studentDao;


    @RequestMapping(value = "/student", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute Student student, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println(student);

        int save = studentDao.save(student);

        if (save > 0) {
            session.setAttribute("msg", "Data inserted successfully");
        } else {
            session.setAttribute("msg", "Something wrong your data not inserted");
        }
        modelAndView.setViewName("student");
        return modelAndView;
    }

}
