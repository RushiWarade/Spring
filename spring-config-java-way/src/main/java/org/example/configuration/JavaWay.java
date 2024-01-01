package org.example.configuration;

import org.example.model.Course;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class JavaWay {
    @Bean
    public Course getCourse(){
        return new Course();
    }
}
