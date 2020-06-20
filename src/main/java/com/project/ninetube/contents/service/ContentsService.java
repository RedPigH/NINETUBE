package com.project.ninetube.contents.service;

import com.project.ninetube.contents.entity.Contents;
import com.project.ninetube.contents.entity.ContentsUploadDto;
import com.project.ninetube.contents.repository.ContentsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;



@Service
@Transactional
public class ContentsService {

    @Autowired //자동 주입
    ContentsRepository contentsRepository;

    public List<Contents> findAll() {
        List<Contents> list = contentsRepository.findAll();
        return list;
    }

    public Contents findByOID(String file_oid){
        Contents con = contentsRepository.findByOID(file_oid);
        return con;
    }

    public void save(Contents uploadDto) {
        contentsRepository.save(uploadDto);
    }
/*
    public ContentsUploadDto save(ContentsUploadDto file){
        contentsRepository.save(file);
        return  file;
    }
*/

}
