package com.project.ninetube.contents.service;

import com.project.ninetube.contents.entity.Contents;
import com.project.ninetube.contents.entity.ContentsUploadDto;
import com.project.ninetube.contents.repository.ContentsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;



@Service
public class ContentsService {
    @Autowired //자동 주입
    ContentsRepository contentsRepository;

    @PersistenceContext
    EntityManager em;

    public List<Contents> findAll() {
        List<Contents> list = contentsRepository.findAll();
        return list;
    }

    public List<Contents> findByOID(String file_oid){
        List<Contents> list = contentsRepository.findByOID(file_oid);
        return list;
    }

    public void save(ContentsUploadDto uploadDto) {
        em.persist(uploadDto);
    }
/*
    public ContentsUploadDto save(ContentsUploadDto file){
        contentsRepository.save(file);
        return  file;
    }
*/

}
