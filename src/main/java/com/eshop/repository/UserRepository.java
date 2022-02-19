package com.eshop.repository;

import com.eshop.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Ani Poghosyan on 18/02/2022
 */
public interface UserRepository extends JpaRepository<User,Long> {
    User findByUsername(String username);
}
