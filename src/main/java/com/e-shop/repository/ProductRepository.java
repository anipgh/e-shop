package com.boots.repository;

import com.boots.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

/**
 * @author Ani Poghosyan on 18/02/2022
 */
public interface ProductRepository extends JpaRepository<Product,Integer> {

    void delete(Optional<com.boots.entity.Product> product);
}
