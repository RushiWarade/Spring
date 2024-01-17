package com.example.controller;

import com.example.model.Admin;
import com.example.model.Student;
import com.example.service.AdminService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
//@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    AdminService adminService;


    @RequestMapping(value = "/showStudent")
    public ModelAndView getAllStudent(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        List<Student> studentList = adminService.getAll();
        modelAndView.addObject("studentList", studentList);
        modelAndView.setViewName("showStudent");
        return modelAndView;
    }

    @RequestMapping(value = "/registerAdmin")
    public String createAdminAccount() {

        return "adminRegister";
    }

    @RequestMapping(value = "/adminHome")
    public String home() {
        return "adminHome";
    }

    @RequestMapping(value = "/createAdmin", method = RequestMethod.POST)
    public String createAdmin(@ModelAttribute Admin admin,HttpSession session ) {

        System.out.println(admin);

        Admin saveAdmin = adminService.saveAdmin(admin);
        if (saveAdmin != null){
            session.setAttribute("adminRegister","Successfully register as Admin");
            return "redirect:/registerAdmin";
        }else {
            session.setAttribute("adminRegister","Something wrong");
            return "redirect:/registerAdmin";
        }

    }


    @RequestMapping(value = "/adminLogin")
    public String adminLogin(@RequestParam("email") String email, @RequestParam("password") String pass, HttpSession session) {

//        System.out.println(email);
//        System.out.println(pass);
        Admin admin = adminService.adminLogin(email, pass);
        if (admin != null) {
            session.setAttribute("adminData", admin);
            session.setAttribute("adminMsg", "Login successfully!...");
            return "redirect:/adminHome";
        } else {
            session.setAttribute("adminMsg", "Invalid Id or password please try again");
            return "redirect:/admin";
        }
    }


}
