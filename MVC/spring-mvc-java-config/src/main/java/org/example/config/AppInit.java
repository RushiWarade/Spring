package org.example.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


@Configuration
public class AppInit extends AbstractAnnotationConfigDispatcherServletInitializer {


    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{Dispatcher.class};
    }


    protected Class<?>[] getServletConfigClasses() {
        return null;
    }


    protected String[] getServletMappings() {
        return new String[]{"/mvc/*"};
    }
}
