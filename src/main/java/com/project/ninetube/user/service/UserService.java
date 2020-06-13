package com.project.ninetube.user.service;

import com.project.ninetube.user.entity.User;
import com.project.ninetube.user.repository.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    public Page<User> getUserList(Pageable pageable){
        pageable = PageRequest.of(pageable.getPageNumber() <= 0 ? 0 : pageable.getPageNumber() - 1, pageable.getPageSize());
        return userRepository.findAll(pageable);

    }

    public Page<User> findAll(@PageableDefault(sort = { "OID" }, direction = Sort.Direction.DESC, size = 5) Pageable pageable){
        Page<User> list = userRepository.findAll(pageable);
        return list;
    }

    public User findByACCOUNT(String ACCOUNT) {
        return userRepository.findByACCOUNT(ACCOUNT);
    }
}
