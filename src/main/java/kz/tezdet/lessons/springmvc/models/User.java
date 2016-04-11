package kz.tezdet.lessons.springmvc.models;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Size;

public class User {
    @NotEmpty(message = "email міндетті түрде еңгізу қажет")
    @Email
    private String email ;

    @NotNull(message = "Парольды еңгізіңіз")
    @Size(min=6, max=15,
            message = "Паролыңыз 6 символдан кем емес және 15 символдан артық болмауы тиіс")
    private String password ;

    public User(){

    }
    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
