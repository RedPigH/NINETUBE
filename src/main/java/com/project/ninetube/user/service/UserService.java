package com.project.ninetube.user.service;

import com.project.ninetube.user.entity.User;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;

public interface UserService {
    // TODO 아이디 중복 검사
    public int checkUserDuplicatedId(String userId);
    // TODO 회원가입 시 유저 정보 받아와서 인서트
    public int createUser(User user);
    // TODO 비밀번호 체크
    public int checkPassword(User user);
    // TODO 회원정보 유효성 검증
    public boolean vaildateUserData(User user);

    }