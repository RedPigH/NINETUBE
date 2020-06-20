package com.project.ninetube.main;

import com.google.gson.Gson;
import com.project.ninetube.main.service.HomeService;
import com.project.ninetube.user.entity.User;
import com.project.ninetube.user.service.UserService;
import com.project.ninetube.video_v.entity.VideoV;
import com.project.ninetube.video_v.service.VideoVService;
import net.minidev.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;

@RestController
public class homeController {

    HttpServletRequest request;

    @Autowired
    UserService userService;

    @Autowired
    VideoVService videoVService;

    @Autowired
    HomeService homeService;

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
       // Page<User> list = userService.findAll(pageable);
        ModelAndView mv = new ModelAndView("home/TESTLIST");
        //mv.addObject("userList", list);
        return mv;
    }

    @RequestMapping("/auto")
    public ModelAndView autoComplete(Pageable pageable){

        Page<VideoV> list = videoVService.findAll(pageable);
        ModelAndView mv = new ModelAndView("home/auto");
        mv.addObject("autoList", list);
        return mv;
    }
    
    // 자동완성검색
    @RequestMapping("/autoSearch")
    public String autoComplateMainSearch(HttpServletRequest request, HttpServletResponse response, @RequestParam(required = false) String vFileName) throws IOException {

        System.out.println("##### 검색어 확인 #####" + vFileName);

        JSONArray array = new JSONArray();
        Gson gson = new Gson();

        List<VideoV> searchList = videoVService.findSearchList(vFileName);
        for (int i = 0; i < searchList.size(); i++) {
            array.add(searchList.get(i).VFILENAME);
        }

        System.out.println("##### 검색 리스트 #####" + array.toString());
        
        return gson.toJson(array);

        /*
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        out.print(array.toString());
        System.out.println("##### 검색어 결과 확인 ##### " + array.toString());
        }
        */
    }

    @RequestMapping("/kakaoLogin")
    public ModelAndView kakaoLogin(@RequestParam("code") String authorize_code, HttpSession session, Pageable pageable){
        HashMap<String, Object> userInfo = new HashMap<String, Object>();
        ModelAndView mv = new ModelAndView();
        System.out.println("##### 카카오로그인 인증 code : " + authorize_code);
        String access_Token = homeService.getAccessToekn(authorize_code);
        System.out.println("##### 카카오로그인 access_Token : " + access_Token);

        userInfo = homeService.getUserInformation(access_Token);
        System.out.println("##### 사용자 정보 : " +userInfo);

        if (userInfo.get("email") != null) {
            //mv.addObject("id", userInfo.get("email"));
            //mv.addObject("id", userInfo.get("email"));
            session.setAttribute("id", userInfo.get("email"));
            session.setAttribute("name", userInfo.get("nickname"));
            session.setAttribute("kakaoId", userInfo.get("id"));
            session.setAttribute("birthday", userInfo.get("birthday"));
            session.setAttribute("gender", userInfo.get("gender"));
            session.setAttribute("access_Token", access_Token);
        }
        Page<VideoV> list = videoVService.findAll(pageable);
        mv.addObject("autoList", list);

        mv.setViewName("home/auto");

        return mv;
    }

    @RequestMapping("/kakaoLogout")
    public ModelAndView kakaoLogout(HttpSession session) {
        ModelAndView mv = new ModelAndView();

        homeService.kakaoLogout((String)session.getAttribute("access_Token"));
        session.removeAttribute("access_Token");
        session.removeAttribute("id");
        session.removeAttribute("name");
        session.removeAttribute("kakaoId");
        session.removeAttribute("birthday");
        session.removeAttribute("gender");

        mv.setViewName("home/auto");

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
