package com.eshop.repository;

import com.eshop.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Ani Poghosyan on 18/02/2022
 */
public interface RoleRepository extends JpaRepository<Role,Long> {
}
