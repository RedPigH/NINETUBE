package com.project.ninetube;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class NinetubeApplication {

    public static void main(String[] args) {
        SpringApplication.run(NinetubeApplication.class);
    }


    // video_v test data insert
    /*@Bean
    public CommandLineRunner runner(VideoRepository videoRepository) throws Exception{
        return (args) -> {
            IntStream.rangeClosed(1,100).forEach(index ->
                videoRepository.save(Video.builder()
                  .OID("oid" + index)
                  .VFILENAME("비디오" + index)
                  .CREATOR("admin")
                  .CREATEDAT(LocalDateTime.now())
                  .RUNNIGTIME("3:00")
                  .DESCRIPTION("설명" + index)
                  .TAG("태그" + index).build())
                );
        };
    }*/
}
