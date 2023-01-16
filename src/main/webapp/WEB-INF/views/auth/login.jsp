<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <title>로그인 페이지</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous">
                <link rel="stylesheet" type="text/css" href="../css/login.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            </head>

            <body onload="document.f.id.focus();">

                <div class="container-fluid LoginCon d-flex justify-content-center">
                    <div class="row LoginRow">


                        <c:url value="/login" var="loginUrl" />


                        <!-- http://localhost:8282/login?error -->
                        <form:form name="f" action="${loginUrl}" method="POST" id="LoginForm">
                            <c:if test="${param.error != null}">
                                <p>아이디와 비밀번호가 잘못되었습니다.</p>
                            </c:if>
                            <c:if test="${param.logout != null}">
                                <p>로그아웃 하였습니다.</p>
                            </c:if>
                            <div class="mb-3">
                                <label for="username" class="form-label">아이디</label>
                                <input type="text" class="form-control" id="username" aria-describedby="emailHelp"
                                    name="ID" />
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">비밀번호</label>
                                <input type="password" class="form-control" id="exampleInputPassword1 password"
                                    name="PASSWORD" />
                            </div>
                            <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
                            <div class="searchID_PW"><a href="/tomato/auth/search_id"
                                    class="searchID_PWBtn">아이디/비밀번호찾기</a></div>
                            <div class="d-flex justify-content-center mt-4">
                                <button type="submit" class="loginBtn me-2">로그인</button>
                                <a href="/tomato/member/signup_view" style="text-decoration: none; cursor: pointer;">
                                    <div class="signupBtn text-center ms-2">회원가입</div>
                                </a>
                            </div>
                            <div class="d-flex justify-content-center">
                                <a class="btn btn-lg mt-4 kakaoLogin" id="kakaoLogin" href="#" role="button">카카오계정으로
                                    로그인</a>
                            </div>
                        </form:form>
                    </div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>
            </body>

            </html>