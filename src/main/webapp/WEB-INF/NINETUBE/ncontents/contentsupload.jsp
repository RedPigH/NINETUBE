<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/maincontents/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/maincontents/css/sb-admin-2.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/maincontents/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Search -->
                <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- Nav Item - Alerts -->


                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                            <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                Settings
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                Activity Log
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->


                <!-- Content Row -->
                <div class="row-contents-detail">
                    <!-- Earnings (Monthly) Card Example -->
                    <div class="custom-contents">
                        <div class="custom-contents-contents">
                            <form role="form" action="/save" method="post">
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">영상제목</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" class="form-control" id="VFILENAME" name="VFILENAME">
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">작성자</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" value='tester01' class="form-control" id="CREATOR" name="CREATOR">
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">카테고리</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select class="form-control selectric" id="CATEGORYOID" name="CATEGORYOID">
                                            <option>엔터테이먼트</option>
                                            <option>게임</option>
                                            <option>운동</option>
                                            <option>레저</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">설명</label>
                                    <div class="col-sm-12 col-md-7">
                                        <textarea class="form-control" id="NVIDEO_DESCRIPTION" name="NVIDEO_DESCRIPTION" style="resize: none; height: 200px"></textarea>
                                    </div>
                                </div>
                                <!--<div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">영상 업로드</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="file" name="videofile" id="videofile">
                                    </div>
                                </div>-->
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                        <input class="btn btn-primary" value="등록" type="submit">
                                    </div>
                                </div>
                            </form>

                        </div>
                        <!--댓글이 들어가버리는자리-->



                    <!-- Earnings (Monthly) Card Example -->
                    <div class="custom-thumbnail-nextcontentslist">
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h8 class="h3 mb-0 text-gray-800">맞춤 동영상</h8>
                        </div>

                        <div class="custom-thumbnail-box">
                            <img class="custom-thumbnail-img" src="${pageContext.request.contextPath}/resources/maincontents/img/thumbnail/hq720.jpg" alt="...">
                            <div class="caption">
                                <h8>[시나공 정보처리기사 실기 기본서] 토막강의</h8>
                                <p>길벗 시나공it</p>
                            </div>
                        </div>

                        <div class="custom-thumbnail-box">
                            <img class="custom-thumbnail-img" src="${pageContext.request.contextPath}/resources/maincontents/img/thumbnail/hq720 (1).jpg" alt="...">
                            <div class="caption">
                                <h8>어벤져스 엔드게임 최고의 명장면 TOP 10</h8>
                                <p>리뷰엉이</p>
                            </div>
                        </div>

                        <div class="custom-thumbnail-box">
                            <img class="custom-thumbnail-img" src="${pageContext.request.contextPath}/resources/maincontents/img/thumbnail/hq720 (2).jpg" alt="...">
                            <div class="caption">
                                <h8>10일간의 배부른 챌린지 기록</h8>
                                <p>신세경 sjkuksee</p>
                            </div>
                        </div>

                        <div class="custom-thumbnail-box">
                            <img class="custom-thumbnail-img" src="${pageContext.request.contextPath}/resources/maincontents/img/thumbnail/hq720 (3).jpg" alt="...">
                            <div class="caption">
                                <h8>여름 이야기가 시작한듯한 부드러운 음악</h8>
                                <p>BGM maker</p>
                            </div>
                        </div>

                        <div class="custom-thumbnail-box">
                            <img class="custom-thumbnail-img" src="${pageContext.request.contextPath}/resources/maincontents/img/thumbnail/hq720 (4).jpg" alt="...">
                            <div class="caption">
                                <h8>동거녀분이랑 택배까다나온USB...잘보겠습니다</h8>
                                <p>보겸 BK</p>
                            </div>
                        </div>

                        <div class="custom-thumbnail-box">
                            <img class="custom-thumbnail-img" src="${pageContext.request.contextPath}/resources/maincontents/img/thumbnail/hq720 (5).jpg" alt="...">
                            <div class="caption">
                                <h8>안 나가야 ~2 앵콜</h8>
                                <p>tvN</p>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- Pending Requests Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">

                </div>
            </div>

            <!-- Content Row -->

            <!-- End of Main Content -->
            <div style = "padding: 5px 1px 2px 3px;"></div>

            <!-- Footer -->
            <footer class="sticky-footer bg-white mb-4">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2019</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->
        </div>
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/maincontents/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/maincontents/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/maincontents/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/maincontents/js/sb-admin-2.min.js"></script>
    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/maincontents/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/maincontents/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/maincontents/js/demo/chart-pie-demo.js"></script>

</body>

</html>
