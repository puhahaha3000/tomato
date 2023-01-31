<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

            <html>

            <head>
                <title>마이페이지</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous">
                <link rel="stylesheet" type="text/css" href="css/mypage.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

            </head>

            <body>
                <header>
                    <jsp:include page="../template/header.jsp" />
                </header>
                <div class="container mypgCon d-flex justify-content-center">

                    <form id="signInForm" class="d-flex flex-column mt-5" action="join" method="post">
                        <div class="row justify-content-center flex-nowrap mt-4">
                            <div class="col-6 col-sm-3 text-lg-center">아이디</div>
                            <div class="col-6 col-sm-3 text-lg-center">${memberVO.nickname}</div>
                        </div>
                        <div class="row justify-content-center writeRow mt-4">
                            <div class="col text-lg-center">내가 쓴 글</div>
                            <div class="w-100"></div>
                            <div class="col-10 text-center myWritedList">작성글 아직 미구현
                                작성글 아직 미구현
                                작성글 아직 미구현
                                작성글 아직 미구현
                                작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직
                                미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글
                                아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현작성글 아직 미구현
                            </div>
                        </div>
                        <div class="row justify-content-center flex-nowrap mt-4">
                            <div class="col-6 col-sm-3 text-center">찜 개수</div>
                            <div class="col-6 col-sm-3 text-center">????개</div>
                        </div>
                        <div class="row justify-content-center flex-nowrap mt-4">
                            <div class="col-6 col-sm-3 text-center">참여중인 채팅</div>
                            <div class="col-6 col-sm-3 text-center">???개</div>
                        </div>
                        <div class="row justify-content-center flex-nowrap mt-4">
                            <div class="col-6 col-sm-3 text-center">내 동네</div>
                            <div class="col-6 col-sm-3 text-center">${addressVO.sidoName} ,${addressVO.sigunguName},
                                ${addressVO.dongName}</div>
                        </div>
                        <div class="row align-content-center mt-4">
                            <div class="col d-flex justify-content-center flex-nowrap mb-3">
                                <input id="modifyBtn" type="button" onclick="modifypage()" value="내정보수정">
                            </div>
                        </div>
                    </form>
                    <script>
                        //내정보 수정하는 페이지로 넘어가는 함수
                        function modifypage() {
                            location.href = 'modify';
                        }
                    </script>

                </div>
                <footer>
                    <jsp:include page="../template/footer.jsp" />
                </footer>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>
            </body>

            </html>