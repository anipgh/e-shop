package com.boots.service;

import com.boots.entity.Product;
import com.boots.repository.ProductRepository;
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


    public List<Product> getAllproducts() {
        List<Product> products = new ArrayList<Product>();
        productRepository.findAll().forEach(products1 -> products.add(products1));
        return products;
    }

    public Product getProductsById(int id) {
        return productRepository.findById(id).get();
    }

    public void save(Product product) {
        productRepository.save(product);
    }

    public void delete(int id) {
        productRepository.deleteById(id);
    }

    public void update(Product product, int productid) {
        productRepository.save(product);
    }
}
