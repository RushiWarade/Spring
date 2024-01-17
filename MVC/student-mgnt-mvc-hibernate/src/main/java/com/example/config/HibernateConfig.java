package com.example.config;

import lombok.Getter;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateConfig {

    @Getter
    private static final SessionFactory sessionFactory ;

    static {
        Configuration configuration = new Configuration();
        configuration.configure("config.xml");
        sessionFactory = configuration.buildSessionFactory();
    }

}
