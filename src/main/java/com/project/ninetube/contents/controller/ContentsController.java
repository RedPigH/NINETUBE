package com.project.ninetube.contents.controller;

import com.project.ninetube.contents.service.ContentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.project.ninetube.contents.entity.Contents;
import com.project.ninetube.contents.entity.ContentsUploadDto;
import com.project.ninetube.contents.repository.ContentsRepository;

import java.util.List;


@RestController//구글처바라
public class ContentsController {
    @Autowired
    private ContentsService contentsService;

    @RequestMapping("/contents")
    public ModelAndView contentspage() {
        List<Contents> list = contentsService.findAll();//서비스에서 요청에 해당하는 처리
        ModelAndView mv = new ModelAndView("mainpage_2");//응답페이지에 위치 지정
        mv.addObject("boardlist",list);//서비스에서 받아온 데이터 모델엔뷰객체 삽입
        return mv;
    }

    @RequestMapping("/contents/{OID}")
    public ModelAndView contentspageOne(@PathVariable("OID") String OID) {
        List<Contents> contentsList = contentsService.findByOID(OID);
        Contents con = contentsList.get(0);
        ModelAndView mv = new ModelAndView("ncontents/contents");
        mv.addObject("content",con);
        return mv;
    }

    @RequestMapping("/contentsupload")
    public ModelAndView contentsupload() {
        ModelAndView mv = new ModelAndView("ncontents/contentsupload");
        return mv;
    }
/*
    @RequestMapping("/save")
    public ModelAndView insertupload() {
        List<Contents> contentsList = contentsService.save();
        return mv;
    }
*/
    @PostMapping(value = "/save")
    public ModelAndView update(@ModelAttribute ContentsUploadDto uploadDto){
        System.out.println("###############111####################");
        contentsService.save(uploadDto);
        System.out.println("##############22#####################");
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
