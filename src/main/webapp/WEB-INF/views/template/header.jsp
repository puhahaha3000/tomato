<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

            <html>

            <head>
                <title></title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous">
                <link rel="stylesheet" type="text/css" href="../css/main_page.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container-fluid header">
                    <div class="row headerrow">
                        <div class="col-2 tomatoCol">
                            <a href="/tomato/"><img src="../img/tomatoLogo.jpg" class="img-rounded tomatologo" alt="토마토"
                                    width="80px" height="80px"></a>
                        </div>
                        <div class="col-8 searchCol">


                            <form class="d-flex" role="search">
                                <input class="form-control me-2 searchWrite" type="search" placeholder="입력해주세요"
                                    aria-label="Search">
                                <button class="btn btn-outline-success searchButton" type="submit">검색</button>
                            </form>


                        </div>

                        <div class="col-1 myMarketCol">
                            <a href="#" class="link-success myMarket">내상점</a>

                        </div>
                        <div class="col-1 LoginCol">
                            <a href="http://localhost:8282/tomato/auth/login"
                                class="btn btn-outline-success btn-sm Login" tabindex="-1" role="button"
                                aria-disabled="true">로그인/회원가입</a>
                        </div>
                    </div>
                    <div class="row navrow">
                        <div class="col-6 navCol">
                            <div class="btn-group BoardMenu">
                                <a href="#" class="reportBtn">공지사항</a>&nbsp;&nbsp;
                                <a href="#" class="qnaBtn">QnA</a> &nbsp;&nbsp;
                                <a href="#" class="tradeBtn">거래게시판</a>
                            </div>
                        </div>

                        <div class="col-3 emptySpace">

                        </div>
                        <div class="col-1 writeLog">
                            <a href="#"><img src="../img/writeIcon.png" class="img-fluid" alt="쓰기"></a>
                        </div>
                        <div class="col-1 chatLogo">
                            <a href="#"><img src="../img/chatIcon.png" class="img-fluid" alt="채팅"></a>

                        </div>
                        <div class="col-1 heartLogo">
                            <a href="#"><img src="../img/heartIcon.png" class="img-fluid" alt="찜"></a>
                        </div>

                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>
            </body>

            </html>