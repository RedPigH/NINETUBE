<%@ page contentType="text/html;charset=UTF-8" language='java' %>

	<%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/css/userAuthStyle.jsp" %>

</head>
<body>
	<div id="gilbut" class="membership">
		<%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/user-header.jsp" %>
        <section id="membership" class="joinpage">
            <article class="mem_box">
                <h2>NineTube 통합 회원가입</h2>
                <p class="top_txt">NineTube 계정으로 가입하면 서비스 이용이 쉬워집니다.</p>
                <a href="/sign/up-form?join_type=B" class="button btn_solid btn_login"><span>이메일 주소로 회원가입</span></a>
                <form name="login_input" id="login_input" action="http://www.gilbut.co.kr/join/join_form" method="post">
                <input type='hidden' name='sns_email' id='sns_email' value=''>
                <input type='hidden' name='sns_id' id='sns_id' value=''>
                <input type='hidden' name='sns_name' id='sns_name' value=''>
                <input type='hidden' name='sns_day' id='sns_day' value=''>
                <input type='hidden' name='sns_type' id='sns_type' value='J'>
                <input type='hidden' name='sns_login' id='sns_login' value=''>
                    <div class="login_sns">
                        <p class="tit">소셜 계정으로도 가입할 수 있습니다.</p>
                        <%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/social-login.jsp" %>
                    </div>
                </form>
            </article>
        </section>

		<%@ include file="/WEB-INF/NINETUBE/naccount/common/jsp/user-footer.jsp" %>
	</div>

</body>
</html>