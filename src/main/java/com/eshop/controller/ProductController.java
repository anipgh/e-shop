package com.eshop.controller;

import com.eshop.dto.Product;
import com.eshop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * @author Ani Poghosyan on 18/02/2022
 */
@Controller
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping("/products")
    public String productList(Model model) {
        model.addAttribute("products", productService.getAll());
        return "product";
    }

    @GetMapping("/create")
    public String create(Model model) {
        model.addAttribute("product", new Product());
        return "create";
    }

    @PostMapping("/save")
    public String save(@RequestParam String name, @RequestParam String description, @RequestParam Double price, @RequestParam String imageUrl, @RequestParam String category) {
        Product product = new Product();
        product.setName(name);
        product.setDescription(description);
        product.setPrice(price);
        product.setImageUrl(imageUrl);
        product.setCategory(category);

        product = productService.save(product);

        return "redirect:/showproduct/" + product.getId();
    }

    @PostMapping("/update")
    public String update(@RequestParam Long id, @RequestParam String name, @RequestParam String description, @RequestParam Double price, @RequestParam String imageUrl, @RequestParam String category) {
        Product product = new Product();
        product.setId(id);
        product.setName(name);
        product.setDescription(description);
        product.setPrice(price);
        product.setImageUrl(imageUrl);
        product.setCategory(category);

        product = productService.save(product);

        return "redirect:/showproduct/" + product.getId();
    }

    @GetMapping("/showproduct/{id}")
    public String showproduct(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getById(id));
        return "showproduct";
    }

    @PostMapping(value = "/delete")
    public String delete(@RequestParam Long id) {
        Product product = productService.getById(id);
        if (product != null) {
            productService.delete(product);
        }
        return "redirect:/product";
    }

    @GetMapping(value = "/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getById(id));
        return "edit";
    }
}
