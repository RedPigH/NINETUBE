package com.project.ninetube.main;

import com.project.ninetube.user.entity.User;
import com.project.ninetube.user.service.UserService;
import com.project.ninetube.video_v.entity.VideoV;
import com.project.ninetube.video_v.service.VideoVService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class homeController {

    @Autowired
    UserService userService;
    @Autowired
    VideoVService videoVService;

    @RequestMapping("/")
    public ModelAndView home() {
        List<VideoV> vlist = videoVService.findVideoList();
        User user = userService.findByACCOUNT("TEST");
        ModelAndView mv = new ModelAndView("home/home");
        mv.addObject("videoList", vlist);
        mv.addObject("user",user);
        return mv;
    }

    @RequestMapping("/USER/list")
    public ModelAndView listQuestion(Pageable pageable){
        Page<User> list = userService.findAll(pageable);
        ModelAndView mv = new ModelAndView("home/TESTLIST");
        mv.addObject("userList", list);
        return mv;
    }

/*    @RequestMapping("/main")
    public ModelAndView mainpage() {
        ModelAndView mv = new ModelAndView("home/home");
        return mv;
    }

    @RequestMapping("/main2")
    public ModelAndView mainpage2() {
        ModelAndView mv = new ModelAndView("mainpage_2");
        return mv;
    }

    @RequestMapping("/main2/contents")
    public ModelAndView contentspage() {
        ModelAndView mv = new ModelAndView("ncontents/contents");
        return mv;
    }*/
}
