package org.example.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class StudentController {


    @RequestMapping(value = "/hello")
    public ModelAndView getHello(){
        ModelAndView modelAndView  = new ModelAndView();

        List<String> list = new ArrayList<>();
        list.add("Rushi");
        list.add("Warade");
        list.add("ItShaala");

        modelAndView.addObject("list",list);

        modelAndView.setViewName("hello");
        return modelAndView;
    }
}
