package com.project.ninetube.contents.service;

import com.project.ninetube.contents.entity.Contents;
import com.project.ninetube.contents.repository.ContentsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;



@Service
public class ContentsService {
    @Autowired //자동 주입
    private ContentsRepository contentsRepository;

    public List<Contents> findAll() {
        List<Contents> members = new ArrayList<>();
        contentsRepository.findAll().forEach(e -> members.add(e));
        return members;
    }

    public List<Contents> findByVFILENME(String filename){
        List<Contents> fileinfo = contentsRepository.findByVFILENAME(filename);
        return fileinfo;
    }


}
