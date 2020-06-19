package com.project.ninetube.contents.repository;

import com.project.ninetube.contents.entity.Contents;
import com.project.ninetube.contents.entity.ContentsUploadDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContentsRepository extends JpaRepository<Contents, Long> {

    public List<Contents> findByOID(String OID);
}


