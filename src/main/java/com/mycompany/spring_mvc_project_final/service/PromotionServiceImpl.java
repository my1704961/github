/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.service;

import com.mycompany.spring_mvc_project_final.entities.PromotionEntity;
import com.mycompany.spring_mvc_project_final.repository.PromotionRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author my
 */
@Service
public class PromotionServiceImpl {

    @Autowired
    private PromotionRepository promotionRepository;

//     List<Promotion> getAllPromos();
//
//	void savePromo(Promotion promo);
//
//	Promotion getPromoById(int id);
//
//	Promotion getPromoByCode(String code);
    public List<PromotionEntity> getPromotions() {
        return (List<PromotionEntity>) promotionRepository.findAll();
    }

    public void save(PromotionEntity promotion, String action) {
      promotionRepository.save(promotion);
    }

    public PromotionEntity findPromotionById(int promotionId) {
        Optional<PromotionEntity> promotion = promotionRepository.findById(promotionId);
        if (promotion.isPresent()) {
            return promotion.get();
        } else {
            return new PromotionEntity();
        }
    }
    
     public PromotionEntity findPromotionByCode(String code) {
       return promotionRepository.findByCode(code);
    }
}
