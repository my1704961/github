/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.CommentEntity;
import com.mycompany.spring_mvc_project_final.repository.CommentRepository;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class CommentServiceImpl {
    
    @Autowired
    private CommentRepository commentRepository;
    
    public Set<CommentEntity> findByProductsId(int id){
        return commentRepository.findByProducts_Id(id);
    }
}
