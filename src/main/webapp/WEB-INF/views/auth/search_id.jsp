<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

            <html>

            <head>
                <title>ID찾기</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous">
                <link rel="stylesheet" type="text/css" href="../css/search_id.css">
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
                <div class="container-fluid searchIdCon">
                    <div class="searchTable d-flex justify-content-center">
                    <table>
                        <form class="searchIdForm" action="" method="post">
                            <tr>
                                <td>아이디</td>
                                <td><input class="inputIdCheck" type="text" name=""></td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td><input class="inputEmailCheck" type="text" name=""></td>
                            </tr>
                        </form>
                    </table>
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