package com.project.ninetube.main.service;

import java.util.HashMap;

public interface HomeService {

    // 인증코드로 카카오에서 access_Token(사용자를 인증하는 토큰) 받아오기
    String getAccessToekn(String authorize_code);

    // access_token으로 유효성 확인받고 사용자 정보 받아오기
    HashMap<String, Object> getUserInformation(String access_token);

    // 카카오 로그아웃(연결 끊기 포함)
    void kakaoLogout(String access_token);
}
