package com.eshop.service;

import com.eshop.dto.Product;
import com.eshop.mapper.ProductMapper;
import com.eshop.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Ani Poghosyan on 18/02/2022
 */
@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;


    public List<Product> getAll() {
        List<Product> products = new ArrayList<Product>();
        productRepository.findAll().forEach(products1 -> products.add(ProductMapper.toDto(products1)));
        return products;
    }

    public Product getById(Long id) {
        return ProductMapper.toDto(productRepository.findById(id).get());
    }

    public Product save(Product product) {
       return ProductMapper.toDto(productRepository.save(ProductMapper.toEntity(product)));
    }

    public void delete(Product product) {
        productRepository.delete(ProductMapper.toEntity(product));
    }
}
