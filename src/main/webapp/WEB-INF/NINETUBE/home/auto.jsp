<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%--<html lang="en">--%>
<head>
    <%
        String contextPath = request.getContextPath();
    %>
    <title>Simple Spring Boot Board</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script type="text/javascript">

        function mainSearch(){
            var keyword = $("#searchInput").val();
            alert(keyword);
        }

        $(function() {
            $("#searchInput").autocomplete({
                source : function( request, response ) {
                    const vFileName = $("#searchInput").val();
                    $.ajax({
                        type: 'post',
                        url: "/autoSearch",
                        dataType: "json",
                        data: { vFileName : vFileName},
                        success: function(data) {
                            //서버에서 json 데이터 response 후 목록에 추가
                            response(
                                $.map(data, function(item) {      // json[i] 번째 에 있는게 item 임.
                                    return {
                                        /*label: item+"label",    // UI 에서 보여지는 글자, 실제 검색어랑 비교 대상*/
                                        label: item,
                                        value: item,
                                        test : item
                                    }
                                })
                            );
                        }
                    });
                },    // source 는 자동 완성 대상
                select : function(event, ui) {    //아이템 선택시
                    console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
                    console.log(ui.item.label);
                    console.log(ui.item.value);
                    console.log(ui.item.test);

                },
                focus : function(event, ui) {
                    return false;   //한글 에러 잡기용도로 사용
                },
                minLength: 1,       // 최소 글자수
                autoFocus: true,    //첫번째 항목 자동 포커스 기본값 false
                classes: {
                    "ui-autocomplete": "highlight"
                },
                delay: 500,         // 검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//            disabled: true,       //자동완성 기능 끄기 옵션
                position: { my : "right top", at: "right bottom" },
                close : function(event){    //자동완성창 닫아질때 호출
                    console.log(event);
                }
            });

        });
    </script>
</head>
<body>
<h1 align="center">NINETUBE</h1>
<hr>
<div class="container">
    <c:if test="${id eq null}">
        <a href="https://kauth.kakao.com/oauth/authorize?client_id=7ce477a75bc79337eac68815bac4d4f6&redirect_uri=http://127.0.0.1:8080/kakaoLogin&response_type=code">
            <img src="/resources/home/img/kakao_login_large_wide.png">
        </a>
    </c:if>
    <c:if test="${id ne null}">
        <h1> ${id}(${name})님 로그인 환영합니다 </h1>
        * 카카오 아이디 : ${kakaoId} <br/>
        * 생일 : ${birthday}<br/>
        * 성별 : ${gender}<br/>
        <input type="button" value="로그아웃" onclick="location.href='/kakaoLogout'">
        <br/>
    </c:if>
    <hr>

<c:if test="${id ne null}">
    <table class="table table-striped">
        <%--<input type="text" id ="keywordSearch" name="keywordSearch" placeholder="검색" class="input1">
        <a href="javascript:mainSearch();" class="input2">
            <img src="resources/home/img/search.png" alt="search">
        </a>
        <tr></tr>--%>

        <h2 class="demoHeaders"></h2>
        <input type="text" id="searchInput" name="keywordSearch" placeholder="검색" class="input1">
            <a href="javascript:mainSearch();" class="input2">
                <img src="resources/home/img/search.png" alt="search">
            </a>
    </table>

    <table class="table table-striped">
        <thead>

        <tr>
            <th>OID</th>
            <th>FILENAME</th>
            <th>CREATOR</th>
        </tr>

        </thead>
        <tbody>
        <c:forEach var="list" items="${autoList.content}">
            <tr>
                <td>${list.OID }</td>
                <td>${list.VFILENAME}</td>
                <td>${list.CREATOR}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</div>
</body>
</html>