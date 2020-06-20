package com.project.ninetube.video_v.service;

import com.project.ninetube.video_v.entity.VideoV;
import com.project.ninetube.video_v.repository.VideoVRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VideoVService {

    private final VideoVRepository videoVRepository;

    public VideoVService(VideoVRepository videoVRepository){
        this.videoVRepository = videoVRepository;
    }

    public List<VideoV> findVideoList(){
        return videoVRepository.findAll();
    }

    public List<VideoV> findSearchList(String vFileName){
        //List<VideoV> result = videoVRepository.findAll();
        //List<VideoV> result = videoVRepository.findByNameLike("%VFILENAME%");
        //List<VideoV> result = videoVRepository.findByName(VFILENAME);
        //List<VideoV> result = videoVRepository.findByPlaceContaining("%VFILENAME%");
        //List<VideoV> result = videoVRepository.findByPlaceContaining(VFILENAME);
        //List<VideoV> result = videoVRepository.findByNameLike(vFileName);

        //List<VideoV> result = videoVRepository.findByVFILENAME(vFileName);
        List<VideoV> result = videoVRepository.findByVFILENAMELike(vFileName);
        for(int i=0; i<result.size(); i++){
            System.out.println("##### Find By Name #####");
            System.out.println(result.get(i).VFILENAME);
        }
        return result;
    }


    public Page<VideoV> findAll(@PageableDefault(sort = { "OID" }, direction = Sort.Direction.DESC, size = 5) Pageable pageable){
        Page<VideoV> list = videoVRepository.findAll(pageable);
        return list;
    }

    // 검색 전체조회(검색조건 키워드가 없을 경우)
//    public List<VideoV> findSearchAllList(String keyword){
//       List<VideoV> result = videoVRepository.findAll();
//        return result;
//    }
}
