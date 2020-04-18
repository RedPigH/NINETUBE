package com.project.ninetube.main;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class homeController {

    @RequestMapping("/")
    public String home() {
        return "Hello, Spring boot!";
    }

    @RequestMapping("/test")
    public ModelAndView createQuestion(){
        ModelAndView mv = new ModelAndView("user/test");
        return mv;
    }

    @RequestMapping("/admin")
    public ModelAndView adminMainPage(){
        ModelAndView mv = new ModelAndView("admin/index");
        return mv;
    }

    @RequestMapping("/admin")
    public ModelAndView adminMainPage(){
        ModelAndView mv = new ModelAndView("admin/index");
        return mv;
    }

    @RequestMapping("/admin/user")
    public ModelAndView adminUserPage(){
        ModelAndView mv = new ModelAndView("admin/user");
        return mv;
    }

    @RequestMapping("/main2/contents")
    public ModelAndView contentspage() {
        ModelAndView mv = new ModelAndView("ncontents/contents");
        return mv;
    }


    }

>>>>>>> Stashed changes
