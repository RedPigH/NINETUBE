package com.project.ninetube.video_v.service;

import com.project.ninetube.video_v.entity.VideoV;
import com.project.ninetube.video_v.repository.VideoVRepository;
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
}
