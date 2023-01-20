<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

            <html>

            <head>
                <title>ID찾기</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous">
                <link rel="stylesheet" type="text/css" href="css/init_password.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="https://code.jquery.com/jquery-latest.min.js"></script>
            </head>

            <body>
                <header>
                    <jsp:include page="../template/header.jsp" />
                </header>

                <div class="container-fluid searchPWCon" style="height: 300px;">
                    <div class="searchTable d-flex justify-content-center mt-5">
                        <form class="searchPWForm row mt-3" style="display: block;" action="" method="post">
                            <div>
                                <div class="col-12"style="margin-left: 115px;">
                                    <label for="nameInput" class="form-label">이름</label>
                                    <input type="text" class="form-control" id="nameInput">
                                </div>
                            </div>
                            <div class="row align-items-end"style="margin-left: 100px;">
                                <div class="col-11 mt-2">
                                    <label for="EmailInput" class="form-label">이메일</label>
                                    <input type="email" class="form-control" id="EmailInput">
                                    
                                </div>
                                <div class="col-1">
                                    <input class="btn" id="emailCheck" type="button" value="인증">
                            </div>
                            </div>
                            <div class="d-grid gap-2 col-12 align-items-center justify-content-center mt-5">
                                <button type="submit" class="Sbtn">
                                    비밀번호 찾기</button>
                            </div>
                        </form>
                    </div>
                </div>
                <footer>
                    <jsp:include page="../template/footer.jsp" />
                </footer>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>
            </body>

            </html>