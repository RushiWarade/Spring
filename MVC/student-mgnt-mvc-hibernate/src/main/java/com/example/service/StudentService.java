package com.example.service;

import com.example.dao.StudentDao;
import com.example.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {

    @Autowired
    StudentDao studentDao;

    public Student getStudentDetails(int id) {
        return studentDao.getStudentDetails(id);
    }

    public Student checkEmail(String email) {
        return studentDao.ckeckEmail(email);
    }

    public Boolean save(Student student) {
        return studentDao.save(student);
    }

    public Student login(String email, String pass) {
        return studentDao.login(email, pass);
    }

    public int update(Student student) {
        return 0;
    }

    public int getAll(Student student) {
        return 0;
    }


}
