package com.boots.repository;

import com.boots.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Ani Poghosyan on 18/02/2022
 */
public interface RoleRepository extends JpaRepository<Role,Long> {
}
