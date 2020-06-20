package com.project.ninetube.user.service;

import com.project.ninetube.user.config.UserConstants;
import com.project.ninetube.user.entity.User;
import com.project.ninetube.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

//    @Autowired
//    private UserRepository userRepository;

    // TODO 아이디 중복 검사
    @Override
    public int checkUserDuplicatedId(String userId) {
        return 0;
//        return userRepository.selectUserId(userId) == 0 ?
//                UserConstants.USER_SUCCESS : UserConstants.USER_DUPLICATED_ID;

    }

    // TODO 유저 생성
    @Override
    public int createUser(User user) {
//        User test = userRepository.save(user);
        return 0;
    }

    @Override
    public int checkPassword(User user) {
        return 0;
    }

    @Override
    public boolean vaildateUserData(User user) {
        return false;
    }

}
