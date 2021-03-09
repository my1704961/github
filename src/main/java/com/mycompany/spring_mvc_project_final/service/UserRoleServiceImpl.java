/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.UserRoleEntity;
import com.mycompany.spring_mvc_project_final.repository.UserRoleRepository;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class UserRoleServiceImpl {
    
    @Autowired
    private UserRoleRepository userRoleRepository;
    
     public UserRoleEntity findRoleById(int roleId) {
        Optional<UserRoleEntity> role = userRoleRepository.findById(roleId);
        if (role.isPresent()) {
            return role.get();
        } else {
            return new UserRoleEntity();
        }
    }
    
}
