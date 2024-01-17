package com.example.service;

import com.example.dao.AdminDao;
import com.example.model.Admin;
import com.example.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {
    @Autowired
    AdminDao adminDao;

    public List<Student>  getAll() {
     return adminDao.getAll();
    }

    public Admin saveAdmin(Admin admin) {
        return adminDao.saveAdmin(admin);
    }

    public Admin adminLogin(String email, String pass) {
        return adminDao.adminLogin(email,pass);
    }
}
