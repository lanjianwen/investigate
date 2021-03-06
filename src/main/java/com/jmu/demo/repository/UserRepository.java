package com.jmu.demo.repository;

import com.jmu.demo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>, JpaSpecificationExecutor<Integer> {
    User findByPhone(String phone);

    List<User> findByRole(String role);
}
