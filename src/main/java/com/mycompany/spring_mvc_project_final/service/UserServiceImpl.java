/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.UserEntity;
import com.mycompany.spring_mvc_project_final.repository.UserRepository;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class UserServiceImpl {
    
    @Autowired
    private UserRepository userRepository;
    
     public void save(UserEntity user) {
        
        userRepository.save(user);
    }

    public UserEntity findUserById(int userId) {
        Optional<UserEntity> user = userRepository.findById(userId);
        if (user.isPresent()) {
            return user.get();
        } else {
            return new UserEntity();
        }
    }
    
    public UserEntity findUserLogin(String email, String password, boolean enabled){
        return userRepository.findByEmailLikeAndPasswordLikeAndEnabledLike(email, password, enabled);
        
    }
}
