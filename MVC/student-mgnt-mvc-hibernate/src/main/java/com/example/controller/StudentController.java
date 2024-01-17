package com.example.controller;

import com.example.model.Student;
import com.example.service.StudentService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/signup")
    public String signup() {
        return "signup";
    }

    @RequestMapping(value = "/admin")
    public String admin() {
        return "adminLogin";
    }


    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
    public String createUser(@ModelAttribute Student student, HttpSession session) {
        Student check = studentService.checkEmail(student.getEmail());
        if (check != null) {
            session.setAttribute("msg", "This email id already exist!..");
            return "redirect:/signup";
        } else {
            Boolean save = studentService.save(student);
            session.setAttribute("msg", "Register Successfully!..");
            return "redirect:/login ";
        }
    }

    @RequestMapping(value = "/userlogin", method = RequestMethod.POST)
    public String userLogin(@RequestParam("email") String email, @RequestParam("password") String pass, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        Student login = studentService.login(email, pass);
        if (login != null) {
            session.setAttribute("success", "Login Successfully!..");
            session.setAttribute("data", login);
            return "redirect:/welcomelogin";
        } else {
            session.setAttribute("msg", "something went wrong!..");
            return "redirect:/login";
        }
    }


    @RequestMapping(value = "/welcomelogin")
    public String studentlogin() {
        return "welcomelogin";
    }

    @RequestMapping(value = "/logout")
    public String studentlogout(HttpSession session) {
        session.removeAttribute("data");
        session.removeAttribute("success");
        session.removeAttribute("adminData");
        session.removeAttribute("adminMsg");
        session.setAttribute("msg", "Logout Successful");
        return "login";
    }

    @RequestMapping(value = "/profile")
    public ModelAndView profile(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        Student student = (Student) session.getAttribute("data");
        int id = student.getId();
        Student studentDetails = studentService.getStudentDetails(id);
        System.out.println(id);
        System.out.println(studentDetails);

        modelAndView.addObject("studentDetails", studentDetails);

        modelAndView.setViewName("profile");
        return modelAndView;
   }

    @RequestMapping(value = "/updateProfile")
    public String updateProfile(HttpSession session) {

        return "updateStudent";
    }


}
