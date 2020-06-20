package com.project.ninetube.user.controller;

import com.project.ninetube.user.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/sign")
public class SignController {

    @Autowired
    private UserServiceImpl userService;


    // 회원가입 상세 페이지 이동
    @RequestMapping(value = "/up-form", method = RequestMethod.GET)
    public ModelAndView moveSignUpBasicForm(ModelAndView mav) {
        mav.setViewName("/naccount/signup-form");
        return mav;
    }

    // 회원가입 페이지 이동
    @RequestMapping(value = "/up", method = RequestMethod.GET)
    public ModelAndView moveSignUpForm(ModelAndView mav) {
        mav.setViewName("/naccount/signup");
        return mav;
    }

    // 로그아웃
    @RequestMapping(value = "/out", method = RequestMethod.GET)
    public ModelAndView signOut(ModelAndView mav) {
        mav.setViewName("/naccount/signoutSuccess");
        return mav;
    }

    // 로그인 페이지 이동
    @RequestMapping(value = "/in", method = RequestMethod.GET)
    public ModelAndView moveSignInForm(ModelAndView mav) {
        mav.setViewName("/naccount/login");
        return mav;
    }

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public ModelAndView checkAccount(ModelAndView mav, String loginType, String name, String email) {



        return mav;
    }
}
