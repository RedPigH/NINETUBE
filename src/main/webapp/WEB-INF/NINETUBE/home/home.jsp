<%@ page contentType="text/html;charset=UTF-8" language='java' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>NINETUBE</title>
<link rel="stylesheet" href="resources/home/css/style.css" />
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%
    String contextPath = request.getContextPath();
%>
    <script>
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
                                $.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
                                    return {
                                        /*label: item+"label",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상*/
                                        label: item,
                                        value: item,                // 사용자 설정값?
                                        test : item
                                        /*test : item+"test"    //이런식으로 사용*/

                                        //[
                                        //    {"name": "하늘이", "dogType": "푸들", "age": 1, "weight": 2.14},
                                        //    {"name": "콩이", "dogType": "푸들", "age": 3, "weight": 2.5},
                                        //    {"name": "람이", "dogType": "허스키", "age": 7, "weight": 3.1}
                                        //]
                                        // json이 다음 처럼 넘어오면
                                        // 상황 : name으로 찾고 dogType을 넘겨야 하는 상황이면
                                        // label : item.dogType ,    //오토컴플릿이 되고 싶은 단어
                                        // value : item.family ,    //넘겨야 하는 단어
                                        // age : item.age ,
                                        // weight : item.weight
                                    }
                                })
                            );
                        }
                    });
                },    // source 는 자동 완성 대상
                select : function(event, ui) {    //아이템 선택시
                    console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
                    console.log(ui.item.label);    //김치 볶음밥label
                    console.log(ui.item.value);    //김치 볶음밥
                    console.log(ui.item.test);    //김치 볶음밥test

                },
                focus : function(event, ui) {    //포커스 가면
                    return false;//한글 에러 잡기용도로 사용됨
                },
                minLength: 1,// 최소 글자수
                autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
                classes: {    //잘 모르겠음
                    "ui-autocomplete": "highlight"
                },
                delay: 500,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//            disabled: true, //자동완성 기능 끄기
                position: { my : "right top", at: "right bottom" },    //잘 모르겠음
                close : function(event){    //자동완성창 닫아질때 호출
                    console.log(event);
                }
            });

        });
    </script>

</head>



<body>
<header>
    <div class="logo">
        <div class="logo1">
            <img src="resources/home/img/open-menu.png" alt="open-menu" class="open_menu">
        </div>
        <div class="logo2">
            <img src="resources/home/img/logo.jpg" alt="logo" class="img_logo">
        </div>
    </div>
    <div class="search">
        <input type="text" id="searchInput" name="keywordSearch" placeholder="검색" class="input1">>
        <a href="javascript:mainSearch();" class="input2">
            <img src="resources/home/img/search.png" alt="search">
        </a>
        <%--<input type="text" id ="searchInput" name="searchInput" placeholder="검색" class="input1">
        <a href="javascript:mainSearch();" class="input2">
            <img src="resources/home/img/search.png" alt="search">검색
        </a>--%>
        <<%--button class="input2"><img src="resources/home/img/search.png" alt="search"></button>--%>
    </div>
    <div class="icon">
        <img src="resources/home/img/upload.png" alt="uplodad" class="upload">
        <img src="resources/home/img/grid.png" alt="grid" class="grid">
        <img src="resources/home/img/bell1.png" alt="bell" class="bell">
        <img src="resources/home/img/man.png" alt="man" class="man">
    </div>
</header>
<div class="fake"></div>
<!--메인사이드메뉴-->
<aside class="aside">
    <ul>
        <li class ="main"><a href="#"><img src="resources/home/img/home.png" alt="bell">홈</a></li>
        <li><a href="#"><img src="resources/home/img/fire.png" alt="fire">인기</a></li>
        <li><a href="#"><img src="resources/home/img/feed.png" alt="feed">구독</a></li>
    </ul>
    <hr />
    <ul>
        <li class="box"><a href="#"><img src="resources/home/img/movie.png" alt="movie">보관함</a></li>
        <li><a href="#"><img src="resources/home/img/countdown.png" alt="count">시청기록</a></li>
        <li><a href="#"><img src="resources/home/img/video.png" alt="video">내 동영상</a></li>
        <li><a href="#"><img src="resources/home/img/clock.png" alt="clock">나중에 볼 동영상</a></li>
        <li><a href="#"><img src="resources/home/img/like.png" alt="like">좋아요 표시한 동영상</a></li>
    </ul>
    <hr />
    <h4>구독</h4>
    <ul>
        <li><a href="#"><img src="resources/home/img/drama.png" alt="drama">tvN D CLASSIC</a></li>
        <li><a href="#"><img src="resources/home/img/piano.png" alt="piano">Tido Kang</a></li>
        <li><a href="#"><img src="resources/home/img/unlock.png" alt="lck">LCK</a></li>
        <li><a href="#"><img src="resources/home/img/cinema.png" alt="cinema">POWER MOVIE</a></li>
    </ul>
    <hr />
    <div class="footer_link">
        <a href="#">정보</a> <a href="#">프레스</a> <a href="#">저작권</a> <a href="#">문의하기</a>
        <br/>
        <a href="#">크리에이터</a> <a href="#">광고</a> <a href="#">개발자</a>
        <br />
        <br />
        <a href="#">이용약관</a> <a href="#">개인정보 보호</a>
        <br />
        <a href="#">정책 및 안전</a>
        <br />
        <a href="#">새로운 기능 테스트하기</a>
    </div>
    <div class="footer">
        <p>© 2020 Google LLC</p>
        <p>회사명: Google LLC</p>
        <p>CEO: Sundar Pichai</p>
        <p>주소: 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA.</p>
        <p>전화: 080-822-1450 (무료)</p>
    </div>
</aside>
<!--작은메뉴(클릭시)-->
<aside class="aside2">
    <ul>
        <li><img src="resources/home/img/home.png" alt="home"><p>홈</p></li>
        <li><img src="resources/home/img/fire.png" alt="fire"><p>인기</p></li>
        <li><img src="resources/home/img/feed.png" alt="feed"><p>구독</p></li>
        <li><img src="resources/home/img/movie.png" alt="movie"><p>보관함</p></li>
    </ul>
</aside>
<!--마우스 오버시 생기는 메뉴-->
<section id="main">
    <div class="hidden hide1">검색</div>
    <div class="hidden hide2">만들기</div>
    <div class="hidden hide3">YouTube 앱</div>
    <div class="hidden hide4">알림</div>
    <!--계정 클릭시 나오는 메뉴-->
    <div class="personal">
        <div class="personal_photo">
            <img src="resources/home/img/man2.png" alt="man">
        </div>

        <div class="personal_info">
            <p class="person_name">${user.NAME}</p>
            <p>${user.EMAIL}</p>
            <br/>
            <p><a href="#" class="blue_name">Google 계정관리</a></p>
        </div>
        <hr/>
        <ul>
            <li><a href="#"><img src="resources/home/img/user.png" alt="user">내 채널</a></li>
            <li><a href="#"><img src="resources/home/img/price.png" alt="price">My Page</a></li>
            <li><a href="#"><img src="resources/home/img/logout.png" alt="logout">로그아웃</a></li>
            <li><a href="#"><img src="resources/home/img/settings.png" alt="settings">설정</a></li>
        </ul>
    </div>
    <!--동영상 있는 페이지-->
    <div id="wrap" class="visible">
    <h2>맞춤동영상</h2>
    <c:forEach var="video" items="${videoList}">
        <%--<fmt:formatDate var="CREATEDAT" value="${video.CREATEDAT}" pattern="yyyy.MM-dd"/>--%>
        <article class="video">
            <div class="youtube"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/xshwpKs2RNA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            <div class="info">
                <div class="info_img"><img src="resources/home/img/tido.png" alt="piano"></div>
                <div class="info2">
                    <p class="title">${video.VFILENAME}</p>
                </div>

                <div class="info3">
                    <br />
                    <p class="maker">${video.CREATOR}</p>
                    <p class="time">조회수 ${video.VIEWCNT}회·</p>
                </div>
            </div>
        </article>
    </c:forEach>
    </div>
    <!-- 보관함 눌렀을 때 나타나는 페이지 -->
    <div class="box_page none" id="boxPage">
        <div class="record">
            <div class="record_title"><p><img src="resources/home/img/countdown.png" alt="record"> 기록</p>
                <div class="all"><a href="#">모두 보기</a></div>
            </div>
            <div class="box_video">
                <div class="youtube"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/uw_elzX7Oo4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                <div class="box_info1">
                    <p class="title">공부할때 듣는 음악 모음♬ (집중력 높이는 음악) |아련한, 슬픈, 잔잔한 음악 1시간</p>
                </div>
                <div class="box_info2">
                    <p class="maker">Tido Kang</p>
                    <p class="time">조회수 515만회·1년 전</p>
                </div>
            </div>
        </div>
        <div class="later">
            <div class="record_title"><p><img src="resources/home/img/clock.png" alt="later"> 나중에 볼 동영상</p>
                <div class="all"><a href="#">모두 보기</a></div>
            </div>
            <div class="box_video">
                <div class="youtube"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/uw_elzX7Oo4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                <div class="box_info1">
                    <p class="title">공부할때 듣는 음악 모음♬ (집중력 높이는 음악) |아련한, 슬픈, 잔잔한 음악 1시간</p>
                </div>
                <div class="box_info2">
                    <p class="maker">Tido Kang</p>
                    <p class="time">조회수 515만회·1년 전</p>
                </div>
            </div>
        </div>
        <div class="play_list">
            <div class="record_title"><p><img src="resources/home/img/open-menu.png" alt="list"> 재생목록</p>
                <div class="all"><a href="#">모두 보기</a></div>
            </div>
            <div class="box_video">
                <div class="youtube"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/uw_elzX7Oo4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                <div class="box_info1">
                    <p class="title">공부할때 듣는 음악 모음♬ (집중력 높이는 음악) |아련한, 슬픈, 잔잔한 음악 1시간</p>
                </div>
                <div class="box_info2">
                    <p class="maker">Tido Kang</p>
                    <p class="time">조회수 515만회·1년 전</p>
                </div>
            </div>
        </div>
        <div class="like">
            <div class="record_title"><p><img src="resources/home/img/like.png" alt="like"> 좋아요 표시한 동영상</p>
                <div class="all"><a href="#">모두 보기</a></div>
            </div>
            <div class="box_video">
                <div class="youtube"><iframe width="100%" height="100%" src="https://www.youtube.com/embed/uw_elzX7Oo4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                <div class="box_info1">
                    <p class="title">공부할때 듣는 음악 모음♬ (집중력 높이는 음악) |아련한, 슬픈, 잔잔한 음악 1시간</p>
                </div>
                <div class="box_info2">
                    <p class="maker">Tido Kang</p>
                    <p class="time">조회수 515만회·1년 전</p>
                </div>
            </div>
        </div>
    </div>
    <div id="user_info" class="none">
        <div class="user">
            <img src="resources/home/img/users.png" alt="user">
            <p>Hong Gil Dong</p>
            <ul>
                <li>구독</li>
                <li>업로드</li>
                <li>좋아요</li>
            </ul>
        </div>
    </div>
</section>


<script src="resources/home/js/jquery-3.4.1.min.js"></script>
<script src="resources/home/js/script.js"></script>

</body>
</html>