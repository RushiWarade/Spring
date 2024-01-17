package com.example.dao;

import com.example.config.HibernateConfig;
import com.example.model.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public class StudentDao {

    @Autowired
    JdbcTemplate jdbcTemplate;


//    @Autowired
//    HibernateTemplate hibernateTemplate;



//    public int save(Student student) {
//        Configuration configuration = new Configuration();
//        configuration.configure("hibernate.cfg.xml");
//
//        SessionFactory sessionFactory = configuration.buildSessionFactory();
//
//        Session session = sessionFactory.openSession();
//
//        Transaction transaction = session.beginTransaction();
//
//      int i=(Integer)  session.save(student);
//
//        transaction.commit();
//
//        session.close();
//
//        return i;
//
//    }


//    data inserted using spring jdbc
    public int save(Student student) {

        String query = "insert into student (id, name, email, mobile) values (?,?,?,?)";
        int i = jdbcTemplate.update(query, ps -> {
            ps.setInt(1, student.getId());
            ps.setString(2, student.getName());
            ps.setString(3, student.getEmail());
            ps.setString(4, student.getMobile());
        });

        return i;
    }


//    @Transactional
//    public int save(Student student) {
//
//        int save = (Integer) hibernateTemplate.save(student);
//        return save;
//    }


}
