/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.FavoriteProductEntity;
import com.mycompany.spring_mvc_project_final.repository.FavoriteProRepository;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class FavoriteProServiceImpl {

    @Autowired
    private FavoriteProRepository favoriteProRepository;
    
    public Set<FavoriteProductEntity> findProductByUserId(int id){
        return favoriteProRepository.findByUsers_Id(id);
    }
    
}
