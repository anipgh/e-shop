package com.boots.repository;

import com.boots.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Ani Poghosyan on 18/02/2022
 */
public interface UserRepository extends JpaRepository<User,Long> {
    User findByUsername(String username);
}
