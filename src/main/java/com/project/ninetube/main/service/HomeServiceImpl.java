package com.project.ninetube.main.service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

@Service
public class HomeServiceImpl implements HomeService{

    @Override
    public String getAccessToekn(String authorize_code) {
        String access_Token = "";
        String refresh_Token = "";
        String requestURL = "https://kauth.kakao.com/oauth/token";

        try{
            URL url = new URL(requestURL);
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();

            conn.setRequestMethod("POST");
            conn.setDoOutput(true); // post요청을 위해서 true 설정

            BufferedWriter bw = new BufferedWriter((new OutputStreamWriter((conn.getOutputStream()))));
            StringBuilder sb = new StringBuilder();

            sb.append("grant_type=authorization_code")
              .append("&client_id=7ce477a75bc79337eac68815bac4d4f6")
              .append("&redirect_uri=http://127.0.0.1:8080/kakaoLogin")
              .append("&code=" + authorize_code);

            bw.write(sb.toString());
            bw.flush();

            int resCode = conn.getResponseCode();
            System.out.println("##### resCode : " + resCode);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";

            while((line = br.readLine()) != null){
                result += line;
            }
            System.out.println("##### response body : " + result);

            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);

            access_Token = element.getAsJsonObject().get("access_token").getAsString();
            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

            System.out.println("##### access_token : " + access_Token);
            System.out.println("##### refresh_token : " + refresh_Token);

            br.close();
            bw.close();
        }catch(IOException e){
            e.printStackTrace();
        }
        return access_Token;
    }

    @Override
    public HashMap<String, Object> getUserInformation(String access_token) {
        HashMap<String, Object> userInfo = new HashMap<>();
        String reqURL = "https://kapi.kakao.com/v2/user/me";
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");

            //    요청에 필요한 Header에 포함될 내용
            conn.setRequestProperty("Authorization", "Bearer " + access_token);

            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

            String line = "";
            String result = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);

            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);


            JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
            JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

            long id = Long.parseLong(String.valueOf(element.getAsJsonObject().get("id")));
            String nickname = properties.getAsJsonObject().get("nickname").getAsString();
            // kakao_account 에 담긴 사용자 정보
            String email = kakao_account.getAsJsonObject().get("email").getAsString();

            String birthday = kakao_account.getAsJsonObject().get("birthday").getAsString();
            String gender = kakao_account.getAsJsonObject().get("gender").getAsString();


            userInfo.put("nickname", nickname);
            userInfo.put("email", email);
            userInfo.put("id", id);
            userInfo.put("birthday", birthday);
            userInfo.put("gender", gender);

            System.out.println("##### nickname  : " + nickname);
            System.out.println("##### email  : " + email);
            System.out.println("##### id  : " + id);
            System.out.println("##### birthday  : " + birthday);
            System.out.println("##### gender  : " + gender);

        } catch (IOException e) {
            e.printStackTrace();
        }

        return userInfo;
    }

    @Override
    public void kakaoLogout(String access_token) {
        String reqURL = "https://kapi.kakao.com/v1/user/logout";
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Authorization", "Bearer " + access_token);

            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

            String result = "";
            String line = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println(result); // 로그아웃하는 사용자의 아이디
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
