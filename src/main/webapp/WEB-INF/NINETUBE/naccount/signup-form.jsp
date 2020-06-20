<%@ page contentType="text/html;charset=UTF-8" language='java' %>

	<%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/css/userAuthStyle.jsp"%>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<div id="gilbut" class="membership">
		<%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/user-header.jsp" %>
        <section id="membership" class="joinpage">
            <form class="form-horizontal frmEstimate">
                <article class="mem_box">
                    <h2>NINETUBE 회원가입</h2>
                    <div class="ipt_form">
                        <label class="tit">아이디</label>
                        <div class="ipt_wrap">
                            <input type="text" name="id" id="id" class="input" placeholder="6자 이상 16자 이하로 입력해주세요." value="">
                        </div>
                    </div>
                    <div class="ipt_form">
                        <label class="tit">이메일 주소</label>
                        <div class="ipt_wrap ipt_email">
                            <input type="text" name="email_1" style="width: 150px;" id="email_1" class="input ipt_id" value="">
                            <span class="unit">@</span>
                            <input type="text" name="email_2" style="width: 150px;" id="email_2" class="input ipt_web" value="">
                            <select class="select" id="GM_ACCOUNT_SEL" name="GM_ACCOUNT_SEL" onchange="account_find('S');">
                                <option value="self">직접입력</option>
                                <option value="naver.com" >naver.com</option>
                                <option value="hanmail.net" >hanmail.net</option>
                                <option value="daum.net" >daum.net</option>
                                <option value="gmail.com" >gmail.com</option>
                                <option value="nate.com"  >nate.com</option>
                                <option value="hotmail.com"  >hotmail.com</option>
                            </select>
                            <p class="ipttxt"></p>
                        </div>
                    </div>

                    <div class="ipt_form">
                        <label class="tit">비밀번호</label>
                        <div class="ipt_wrap">
                            <input type="password" name="password" id="password" class="input" placeholder="최대 20자 이내, 영문/숫자/특수문자 혼용">
                        </div>
                    </div>
                    <div class="ipt_form">
                        <label class="tit">비밀번호 확인</label>
                        <div class="ipt_wrap">
                            <input type="password" name="pwChk" id="pwChk" class="input" placeholder="최대 20자 이내, 영문/숫자/특수문자 혼용">
                        </div>
                    </div>

                    <div class="ipt_form">
                        <label class="tit">이름</label>
                        <div class="ipt_wrap">
                            <input type="text" name="name" id="name" class="input" placeholder="비밀번호 찾기 등 서비스 이용에 사용되니 정확하게 입력해 주세요." value="">
                        </div>
                    </div>
                    <div class="ipt_form">
                        <label class="tit">성별</label>
                        <div class="ipt_wrap ipt_radio select_gender">
                            <div class="radio_wrap">
                                <input type="radio" name="GM_GENDER" value="M" id="male">
                                <label for="male">
                                    <span></span>남성
                                </label>
                            </div>
                            <div class="radio_wrap">
                                <input type="radio" name="GM_GENDER" value="F" id="female">
                                <label for="female">
                                    <span></span>여성
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="ipt_form">
                        <label class="tit">생년월일</label>
                        <div class="ipt_wrap ipt_birth">
                            <select class="select" id="birthday_year" name="birthday_year">
                                <option value='1931' >1931년</option><option value='1932' >1932년</option><option value='1933' >1933년</option><option value='1934' >1934년</option><option value='1935' >1935년</option><option value='1936' >1936년</option><option value='1937' >1937년</option><option value='1938' >1938년</option><option value='1939' >1939년</option><option value='1940' >1940년</option><option value='1941' >1941년</option><option value='1942' >1942년</option><option value='1943' >1943년</option><option value='1944' >1944년</option><option value='1945' >1945년</option><option value='1946' >1946년</option><option value='1947' >1947년</option><option value='1948' >1948년</option><option value='1949' >1949년</option><option value='1950' >1950년</option><option value='1951' >1951년</option><option value='1952' >1952년</option><option value='1953' >1953년</option><option value='1954' >1954년</option><option value='1955' >1955년</option><option value='1956' >1956년</option><option value='1957' >1957년</option><option value='1958' >1958년</option><option value='1959' >1959년</option><option value='1960' >1960년</option><option value='1961' >1961년</option><option value='1962' >1962년</option><option value='1963' >1963년</option><option value='1964' >1964년</option><option value='1965' >1965년</option><option value='1966' >1966년</option><option value='1967' >1967년</option><option value='1968' >1968년</option><option value='1969' >1969년</option><option value='1970' >1970년</option><option value='1971' >1971년</option><option value='1972' >1972년</option><option value='1973' >1973년</option><option value='1974' >1974년</option><option value='1975' >1975년</option><option value='1976' >1976년</option><option value='1977' >1977년</option><option value='1978' >1978년</option><option value='1979' >1979년</option><option value='1980' >1980년</option><option value='1981' >1981년</option><option value='1982' >1982년</option><option value='1983' >1983년</option><option value='1984' >1984년</option><option value='1985' >1985년</option><option value='1986' >1986년</option><option value='1987' >1987년</option><option value='1988' >1988년</option><option value='1989' >1989년</option><option value='1990' selected='selected'>1990년</option><option value='1991' >1991년</option><option value='1992' >1992년</option><option value='1993' >1993년</option><option value='1994' >1994년</option><option value='1995' >1995년</option><option value='1996' >1996년</option><option value='1997' >1997년</option><option value='1998' >1998년</option><option value='1999' >1999년</option><option value='2000' >2000년</option><option value='2001' >2001년</option><option value='2002' >2002년</option><option value='2003' >2003년</option><option value='2004' >2004년</option><option value='2005' >2005년</option><option value='2006' >2006년</option><option value='2007' >2007년</option><option value='2008' >2008년</option><option value='2009' >2009년</option><option value='2010' >2010년</option><option value='2011' >2011년</option><option value='2012' >2012년</option><option value='2013' >2013년</option><option value='2014' >2014년</option><option value='2015' >2015년</option><option value='2016' >2016년</option><option value='2017' >2017년</option><option value='2018' >2018년</option><option value='2019' >2019년</option><option value='2020' >2020년</option>
                            </select>
                            <select class="select" id="birthday_month" name="birthday_month">
                                <option value='1' >1월</option><option value='2' >2월</option><option value='3' >3월</option><option value='4' >4월</option><option value='5' >5월</option><option value='6' >6월</option><option value='7' >7월</option><option value='8' >8월</option><option value='9' >9월</option><option value='10' >10월</option><option value='11' >11월</option><option value='12' >12월</option>
                            </select>
                            <select class="select" id="birthday_day" name="birthday_day">
                                <option value='1' >1일</option><option value='2' >2일</option><option value='3' >3일</option><option value='4' >4일</option><option value='5' >5일</option><option value='6' >6일</option><option value='7' >7일</option><option value='8' >8일</option><option value='9' >9일</option><option value='10' >10일</option><option value='11' >11일</option><option value='12' >12일</option><option value='13' >13일</option><option value='14' >14일</option><option value='15' >15일</option><option value='16' >16일</option><option value='17' >17일</option><option value='18' >18일</option><option value='19' >19일</option><option value='20' >20일</option><option value='21' >21일</option><option value='22' >22일</option><option value='23' >23일</option><option value='24' >24일</option><option value='25' >25일</option><option value='26' >26일</option><option value='27' >27일</option><option value='28' >28일</option><option value='29' >29일</option><option value='30' >30일</option><option value='31' >31일</option>
                            </select>
                        </div>
                    </div>
                </article>

                <article class="page_bot">
                    <div class="btn_wrap nsignup subncan">
                        <a class="button btn_solid "><span>취소</span></a>
                        <a class="button btn_solid nsignup_signup_submit" ><span>확인</span></a>
                    </div>
                </article>
            </form>
        </section>
		<%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/user-footer.jsp" %>
	</div>
	<script src="/resources/userAuth/js/signUp.js"></script>
	<script>
	      const naver_id_login = new naver_id_login("1Si2qyzIE80rP3GhK8ld", "http://127.0.0.1:8080/sign/up-form");

	      const naver_email;
	      const naver_name;
            alert("네아로");
	      if(naver_id_login != undefined) {
              // 접근 토큰 값 출력
              alert(naver_id_login.oauthParams.access_token);
              // 네이버 사용자 프로필 조회
              naver_id_login.get_naver_userprofile("naverSignInCallback()");
              // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
              function naverSignInCallback() {
                alert(naver_id_login.getProfileData('email'));
                naver_email = naver_id_login.getProfileData('email').split('@');
                alert(naver_id_login.getProfileData('name'));
                naver_name = naver_id_login.getProfileData('name');
              }
              const input_name = document.getElementById('name');
              input_name.value = naver_name;
              const input_email_1 = document.getElementById('email_1');
              input_email_1.value = naver_email[0];
              const input_email_2 = document.getElementById('email_2');
          }



	</script>
</body>
</html>
