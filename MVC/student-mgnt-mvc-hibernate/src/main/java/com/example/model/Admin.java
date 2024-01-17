package com.example.model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Entity(name = "admin")
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "admin_id")
    private int id;
    @Column(name = "admin_firstName")
    private String firstName;
    @Column(name = "admin_lastName")
    private String lastName;
    @Column(name = "admin_email")
    private String email;
    @Column(name = "admin_mobile")
    private String mobile;
    @Column(name = "admin_password")
    private String password;

}
