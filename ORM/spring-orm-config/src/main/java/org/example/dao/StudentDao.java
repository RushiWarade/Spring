package org.example.dao;


import org.example.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class StudentDao {

    @Autowired
     HibernateTemplate hibernateTemplate;

    @Transactional
    public void save (Student student){
        hibernateTemplate.save(student);
    }

}
