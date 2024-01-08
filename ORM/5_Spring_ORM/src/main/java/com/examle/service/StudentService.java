package com.examle.service;

import com.examle.Student;
import com.examle.dao.StudentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {

    @Autowired
    StudentDao studentDao ;

    public int saveStudent(Student student) {
        return studentDao.saveStudent(student);
    }

}
