package com.example.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@ToString
@Setter
@Builder

@Entity
public class Student {
    @Id
    private  int id;
    private String name;
    private String email;
    private String  mobile;
}
