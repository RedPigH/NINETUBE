package com.project.ninetube.user.repository;

import com.project.ninetube.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query(value = "select * from NUSER WHERE ACCOUNT =:ACCOUNT", nativeQuery = true)
    User findByACCOUNT(String ACCOUNT);
}
