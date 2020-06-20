package com.project.ninetube.user.config;

public class UserConstants {
    public static final int USER_SUCCESS = 0x00; // 성공 ( 모든 로직 적용 )

    //회원가입 및 로그인
    public static final int USER_DUPLICATED_ID = 0x01; // 아이디 중복
    public static final int USER_PASSWORD_INVAILD = 0x02; // 패스워드 유효성 검증 실패
    public static final int USER_INFOMATION_LACK = 0x03; // 회원정보 유효성 검증 실패
}
