/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.OrderDetailEntity;
import com.mycompany.spring_mvc_project_final.repository.OrderDetailRepository;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class OrderDetailServiceImpl {

    @Autowired
    private OrderDetailRepository orderdetailRepository;

    public OrderDetailEntity findById(int id) {
        Optional<OrderDetailEntity> orderLine = orderdetailRepository.findById(id);
        if (orderLine.isPresent()) {
            return orderLine.get();
        } else {
            return new OrderDetailEntity();
        }
    }

    public void updateQuantity(OrderDetailEntity orderDetail) {
        orderdetailRepository.save(orderDetail);
    }

}
