package com.example.dao;

import com.example.config.HibernateConfig;
import com.example.model.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDao {


    public Student ckeckEmail(String email) {
        Student student = null;
        Configuration configuration = new Configuration();
        configuration.configure("config.xml");
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();

        Query query = session.createQuery("from Student where email=:em");
        query.setParameter("em", email);

        student = (Student) query.uniqueResult();


        transaction.commit();
        session.close();


        return student;
    }


    public Boolean save(Student student) {
        boolean b = false;
        Configuration configuration = new Configuration();
        configuration.configure("config.xml");
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();

        int save = (Integer) session.save(student);
        if (save > 0) {
            b = true;
        }
        transaction.commit();
        session.close();
        return b;
    }

    public Student login(String email, String pass) {
        boolean b = false;
        Configuration configuration = new Configuration();
        configuration.configure("config.xml");
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();

        Query query = session.createQuery("from Student where email=:em and password=:pass");
        query.setParameter("em", email);
        query.setParameter("pass", pass);
        Student student = (Student) query.uniqueResult();
        transaction.commit();
        session.close();
        return student;
    }

    public Student getStudentDetails(int id) {
        Student student = null;
        Session session = HibernateConfig.getSessionFactory().openSession();
        student = session.get(Student.class, id);
        return student;
    }
}
