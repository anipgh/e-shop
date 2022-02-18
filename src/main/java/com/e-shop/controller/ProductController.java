package com.boots.controller;

import com.boots.entity.Product;
import com.boots.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;


/**
 * @author Ani Poghosyan on 18/02/2022
 */
@RestController
public class ProductController {
    @Autowired
   ProductRepository productRepository;

    @RequestMapping("/product")
    public String product(Model model) {
        model.addAttribute("products", productRepository.findAll());
        return "product";
    }

    @RequestMapping("/create")
    public String create(Model model) {
        return "create";
    }

    @RequestMapping("/save")
    public String save(@RequestParam String prodName, @RequestParam String prodDesc, @RequestParam Double prodPrice, @RequestParam String prodImage) {
        Product product = new Product();
        product.setProdName(prodName);
        product.setProdDesc(prodDesc);
        product.setProdPrice(prodPrice);
        product.setProdImage(prodImage);
        productRepository.save(product);

        return "redirect:/showproduct/" + product.getId();
    }

    @RequestMapping("/showproduct/{id}")
    public String showproduct(@PathVariable Integer id, Model model) {
        model.addAttribute("product", productRepository.findById(id));
        return "showproduct";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam Integer id) {
     Optional<Product> product = productRepository.findById(id);
        productRepository.delete(product);

        return "redirect:/product";
    }

    @RequestMapping("/edit/{id}")
    public String edit(@PathVariable Integer id, Model model) {
        model.addAttribute("product", productRepository.findById(id));
        return "edit";
    }


}
