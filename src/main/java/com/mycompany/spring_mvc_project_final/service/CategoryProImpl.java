/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.CategoryProductEntity;
import com.mycompany.spring_mvc_project_final.repository.CategoryProRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class CategoryProImpl {
    
    @Autowired
    private CategoryProRepository categoryProRepository;
    
     public List<CategoryProductEntity> getCategories() {
        return (List<CategoryProductEntity>) categoryProRepository.findAll();
    }
}
