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
    ContentsRepository contentsRepository;

    public List<Contents> findAll() {
        List<Contents> list = contentsRepository.findAll();
        return list;
    }

    public List<Contents> findByOID(String file_oid){
        List<Contents> list = contentsRepository.findByOID(file_oid);
        return list;
    }


}
