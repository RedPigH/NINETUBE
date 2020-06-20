package com.project.ninetube.video_v.repository;

import com.project.ninetube.video_v.entity.VideoV;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface VideoVRepository extends JpaRepository<VideoV, Long> {
    //List<VideoV> findByVFILENAME(String vFileName);

    List<VideoV> findByVFILENAMELike(String vFileName);

    //List<VideoV> findByVLike(String vFileName);
//    public List<VideoV> findByNameLike(String VFILENAME);

    //@Query("select VFILENAME from NVIDEO_V where VFILENAME like ?1")
    //public List<VideoV> findByName(String VFILENAME);


//    @Query("Select * from NVIDEO_V where VFILENAME like :VFILENAME")
//    @Query("Select VFILENAME from NVIDEO_V where VFILENAME like %?1%")
//    List<VideoV> findByPlaceContaining(String VFILENAME);
}
