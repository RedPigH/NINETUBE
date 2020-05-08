package com.project.ninetube.contents.controller;

import com.project.ninetube.contents.service.ContentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.ninetube.contents.entity.Contents;
import com.project.ninetube.contents.repository.ContentsRepository;

import java.util.List;


@RestController
public class ContentsController {
    @Autowired
    private ContentsService contentsService;

    @RequestMapping("/main2/contents")
    public ModelAndView contentspage() {
        ModelAndView mv = new ModelAndView("ncontents/contents");
        return mv;
    }


/*    @RequestMapping("/add")
    public Contents add(Contents con) {

        Contents conData = contentsRepository.save(con);

        return conData;
    }*/
    @RequestMapping("/memberTest")
    @GetMapping(produces = { MediaType.APPLICATION_JSON_VALUE })
    public ResponseEntity<List<Contents>> getAllmembers() {
        List<Contents> member = contentsService.findAll();
        return new ResponseEntity<List<Contents>>(member, HttpStatus.OK);
    }




}
