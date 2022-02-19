package com.eshop.mapper;

import com.eshop.dto.Product;

/**
 * @author Ani Poghosyan on 19/02/2022
 */
public class ProductMapper {
    public static Product toDto(com.eshop.entity.Product entity) {
        Product dto = new Product();
        if(entity.getId()!= null){
            dto.setId(entity.getId());
        }
        dto.setCategory(entity.getCategory());
        dto.setName(entity.getName());
        dto.setPrice(entity.getPrice());
        dto.setDescription(entity.getDescription());
        dto.setImageUrl(entity.getImageUrl());
        return dto;
    }

    public static com.eshop.entity.Product toEntity(Product dto) {
        com.eshop.entity.Product entity = new com.eshop.entity.Product();
        if(dto.getId()!= null){
            entity.setId(dto.getId());
        }
        entity.setCategory(dto.getCategory());
        entity.setName(dto.getName());
        entity.setPrice(dto.getPrice());
        entity.setDescription(dto.getDescription());
        entity.setImageUrl(dto.getImageUrl());
        return entity;
    }
}
