package com.project.ninetube.user.repository;

import com.project.ninetube.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

//    // 패스워드 조회
//    //@Query("")
//    public int checkPassword(User user);
//
//    // 아이디 중복 체크
//    public int selectUserId(String userId);
//
//    // 회원정보 인서트
//    public int insertUserInfo(User user);
}
