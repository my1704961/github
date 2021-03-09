/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.ProductEntity;
import com.mycompany.spring_mvc_project_final.repository.ProductRepository;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class ProductServiceImpl {
    
    @Autowired
    private ProductRepository productRepository;
    
    public List<ProductEntity> getProducts() {
        return (List<ProductEntity>) productRepository.findAll();
    }
    
    public void save(ProductEntity product) {
        productRepository.save(product);
    }
    
    public ProductEntity findProductById(int productId) {
        Optional<ProductEntity> product = productRepository.findById(productId);
        ProductEntity pr = new ProductEntity();
       
        if (product.isPresent()) {
            return product.get();
        } else {
            return new ProductEntity();
        }
    }
    
     public Set<ProductEntity> findListProductByCategory(String nameCategory) {
         return productRepository.findByCategory_Name(nameCategory);
     }
     
    public boolean deleteProduct(int productId) {
        productRepository.deleteById(productId);
        return productRepository.existsById(productId);
    }
    
    
    
    
}
