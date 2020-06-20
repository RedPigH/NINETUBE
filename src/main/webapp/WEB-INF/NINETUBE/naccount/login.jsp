<%@ page contentType="text/html;charset=UTF-8" language='java' %>

	<%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/css/userAuthStyle.jsp" %>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>

<body>
	<div id="gilbut" class="membership">
		<%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/user-header.jsp" %>
        <section id="membership" class="loginpage">
            <form name="login_input" id="login_input" action="/login/login_check" method="post">
            <input type="hidden" id="re_url" name="re_url" value="">
                <article class="mem_box">
                    <h2>NINETUBE 로그인</h2>
                    <div class="ipt_form">
                        <div class="ipt_wrap">
                            <input type="text" id="username" name="username" class="input"  placeholder="가입시 입력한 이메일주소">
                        </div>
                        <div class="ipt_wrap">
                            <input type="password" id="password" name="password" class="input" placeholder="비밀번호">
                        </div>
                        <div class="saveid">
                            <input type="checkbox" id="login_save" value="Y" name="login_save" >
                            <label for="login_save">
                                <span></span>이메일 주소 저장
                            </label>
                        </div>
                    </div>
                    <div class="bot_btn_wrap">
                        <a href="/sign/up" class="btn_link"><span>회원가입</span></a>
                        <a href="" class="btn_link"><span>비밀번호 찾기</span></a>
                    </div>
                    <a href="#" onclick="login_submit();" class="button btn_solid btn_login"><span>로그인</span></a>
                    <div class="login_sns">
                        <p class="tit">소셜 계정으로 로그인</p>
                        <%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/social-login.jsp" %>
                    </div>

                </article>
            </form>
        </section>

        <%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/user-footer.jsp" %>
	</div>
    <script>

        var clientInfo;

        const naverBtn = document.querySelector('div.login_sns_wrap > a#naver');

        naverBtn.addEventListener('click', function(event) {
            naverLogin();
        });

        var clientInfoResultAction = function() {
            console.log(clientInfo);


        }

        const naverLogin = function() {
         // window.name = "부모창 이름";
              window.name = "parentForm";
              // window.open("open할 window", "자식창 이름", "팝업창 옵션");
              openWin = window.open("http://127.0.0.1:8080/APIExamNaverLogin.html",
                      "childForm", "width=570, height=350, resizable = no, scrollbars = no");
          }


     </script>
</body>
</html>