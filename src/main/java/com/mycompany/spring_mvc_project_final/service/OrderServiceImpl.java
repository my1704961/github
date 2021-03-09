/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.OrderEntity;
import com.mycompany.spring_mvc_project_final.repository.OrderRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class OrderServiceImpl {

    @Autowired
    private OrderRepository orderRepository;

    public List<OrderEntity> getOrders() {
        return (List<OrderEntity>) orderRepository.findAll();
    }

    public void save(OrderEntity order) {

        orderRepository.save(order);
    }

    public OrderEntity findOrderById(int Id) {
        Optional<OrderEntity> order = orderRepository.findById(Id);
        if (order.isPresent()) {
            return order.get();
        } else {
            return new OrderEntity();
        }
    }

}
