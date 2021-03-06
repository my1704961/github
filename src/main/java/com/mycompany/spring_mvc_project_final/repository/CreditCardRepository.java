/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.repository;

import com.mycompany.spring_mvc_project_final.entities.CreditCardEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author my
 */
@Repository
public interface CreditCardRepository extends CrudRepository<CreditCardEntity, Integer> {

    @Query(value = "Select * from creditcard where cardNumber = ?", nativeQuery = true)
    CreditCardEntity findByCardNumber(String number);
}
