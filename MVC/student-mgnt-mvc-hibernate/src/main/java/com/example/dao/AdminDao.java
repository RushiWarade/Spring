package com.example.dao;

import com.example.config.HibernateConfig;
import com.example.model.Admin;
import com.example.model.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDao {
    public List<Student> getAll() {
        List<Student> studentList = null;

        Session session = HibernateConfig.getSessionFactory().openSession();
        Query query = session.createQuery("from Student ");
        studentList = query.list();

        return studentList;
    }

    public Admin saveAdmin(Admin admin) {

        Admin adminDetails = null;

//        Session session = HibernateConfig.getSessionFactory().openSession();
        Configuration configuration = new Configuration();
        configuration.configure("config.xml");
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        int i = (Integer) session.save(admin);

        transaction.commit();
        session.close();
        return adminDetails;

    }

    public Admin adminLogin(String email, String pass) {
        Admin admin = null;
        Configuration configuration = new Configuration();
        configuration.configure("config.xml");
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createQuery("from admin  where email=:em and password=:pass");
        query.setParameter("em", email);
        query.setParameter("pass", pass);
        admin = (Admin) query.uniqueResult();
        transaction.commit();
        session.close();
        return admin;

    }
}
