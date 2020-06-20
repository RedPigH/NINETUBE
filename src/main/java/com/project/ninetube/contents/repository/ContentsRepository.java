package com.project.ninetube.contents.repository;

import com.project.ninetube.contents.entity.Contents;
import com.project.ninetube.contents.entity.ContentsUploadDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class ContentsRepository {

    @PersistenceContext
    EntityManager em;

    public List<Contents> findAll(){
        return em.createQuery("select m from Contents m", Contents.class)
                .getResultList();
    }

    public Contents findByOID(String OID) {
        return em.find(Contents.class, OID);
    }
    public void save(Contents uploadDto) {
        em.persist(uploadDto);
    }
}


