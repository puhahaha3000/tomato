    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>tomato</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                crossorigin="anonymous">
            <link rel="stylesheet" type="text/css" href="css/main_page2.css">
        </head>

        <body>
            <div class="container-fluid header">
                <div class="row">
                    <div class="col-2">
                        <a href="#"><img src="img/tomatoLogo.jpg" class="img-rounded tomatologo" alt="토마토" width="80px"
                                height="80px"></a>
                    </div>
                    <div class="col-8">
                        

                            <form class="d-flex" role="search">
                                <input class="form-control me-2" type="search" placeholder="입력해주세요" aria-label="Search">
                                <button class="btn btn-outline-success searchButton" type="submit">검색</button>
                            </form>

                        
                    </div>

                    <div class="col-1" style="margin-top: 3vh;">
                        <div class="mt-3"><a href="#" class="link-success" style="text-decoration-line: none;">내상점</a>
                        </div>
                    </div>
                    <div class="col-1" style="margin-top: 2.5vh;">
                        <a href="http://localhost:8282/tomato/auth/login" class="btn btn-outline-success btn-sm"
                            tabindex="-1" role="button" aria-disabled="true">로그인/회원가입</a>
                    </div>
                </div>
            </div>
            <div class="container-fluid nav">
                ...
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                crossorigin="anonymous"></script>
        </body>

        </html>