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
            <link rel="stylesheet" type="text/css" href="css/main_page.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        </head>

        <body>
            <header>
                <jsp:include page="template/header.jsp" />
            </header>
            <div class="container-fluid nav">
                <div class="container-fluid main">
                    <div class="row">
                        <div class="col sellCol">
                            <span class="h5">Sell</span>

                        </div>
                    </div>
                    <div class="row">
                        <table class="table table-hover selTable">

                            <thead class="table-light selTableHead">
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">작성자</th>
                                    <th scope="col">작성일</th>
                                    <th scope="col">조회수</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <tr>
                                    <th scope="row">1</th>
                                    <td>제목자리1</td>
                                    <td>작성자자리</td>
                                    <td>작성일자리</td>
                                    <td>조회수자리</td>

                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>제목자리</td>
                                    <td>작성자자리</td>
                                    <td>작성일자리</td>
                                    <td>조회수자리</td>

                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>제목자리</td>
                                    <td>작성자자리</td>
                                    <td>작성일자리</td>
                                    <td>조회수자리</td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row sellMorerow">
                        <div class="col sellMoreCol">
                            <a href="#" class="btn btn-outline-dark sellMore" tabindex="-1" role="button"
                                aria-disabled="true">더보기</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col buyCol">
                            <span class="h5">Buy</span>
                        </div>
                    </div>
                    <div class="row">
                        <table class="table table-hover buyTable">

                            <thead class="table-light buyTableHead">
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">작성자</th>
                                    <th scope="col">작성일</th>
                                    <th scope="col">조회수</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <tr>
                                    <th scope="row">1</th>
                                    <td>제목자리</td>
                                    <td>작성자자리</td>
                                    <td>작성일자리</td>
                                    <td>조회수자리</td>

                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>제목자리</td>
                                    <td>작성자자리</td>
                                    <td>작성일자리</td>
                                    <td>조회수자리</td>

                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>제목자리</td>
                                    <td>작성자자리</td>
                                    <td>작성일자리</td>
                                    <td>조회수자리</td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row buymorerow">
                        <div class="col buyMoreCol">
                            <a href="#" class="btn btn-outline-dark buyMore" tabindex="-1" role="button"
                                aria-disabled="true">더보기</a>
                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <jsp:include page="template/footer.jsp" />
            </footer>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                crossorigin="anonymous"></script>
        </body>

        </html>