package com.eshop.repository;

import com.eshop.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Ani Poghosyan on 18/02/2022
 */
public interface ProductRepository extends JpaRepository<Product, Long> {

}
