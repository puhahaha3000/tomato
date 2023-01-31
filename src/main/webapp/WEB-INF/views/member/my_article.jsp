<%@ page language="java" contentType="text/html;charset=utf-8"
pageEncoding="utf-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
  <head>
    <title>내작성글</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" type="text/css" href="css/myarticle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
      rel="stylesheet"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>

  <body>
    <header>
      <jsp:include page="../template/header.jsp" />
    </header>
    <div class="container myarticleCon">
      <div class="row dropdownRow mt-3">
        <div class="col dropdownCol d-flex justify-content-center">
          <!--게시판의 종류를 고르는 드롭다운메뉴-->
          <div class="dropdown">
            <a
              id="dropdonwBtn"
              class="btn btn-secondary dropdown-toggle"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              &emsp;&emsp;거래게시판 &emsp;
            </a>

            <ul class="dropdown-menu" id="dropdown-menu">
              <li>
                <a
                  class="dropdown-item list-group-item-action list-group-item-danger"
                  href="#"
                  >거래게시판</a
                >
              </li>
              <li>
                <a
                  class="dropdown-item list-group-item-action list-group-item-danger"
                  href="#"
                  >공지사항게시판</a
                >
              </li>
              <li>
                <a
                  class="dropdown-item list-group-item-action list-group-item-danger"
                  href="#"
                  >Q&A게시판</a
                >
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row mt-5">
        <div class="col">
          <!--게시판 리스트를 불러와서 표시해주는 화면
          어떤 목록들을 보여줄지는 아직 x-->
          <div class="list-group" id="boardListGroup">
            <a
              id="listGroupTitle"
              class="list-group-item group-item-action disabled"
            >
              글번호, 제목 등등의 카테고리가 들어가야 할 자리
            </a>
            <a href="#" class="list-group-item list-group-item-action"
              >no.1 토마토팝니다 김OO 2023.01.31 조회수</a
            >
            <a href="#" class="list-group-item list-group-item-action"
              >2번 게시글</a
            >
            <a href="#" class="list-group-item list-group-item-action"
              >3번 게시글</a
            >
            <a href="#" class="list-group-item list-group-item-action"
              >4번 게시글</a
            >
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <!--페이지 번호를 선택하는 기능-->
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center mt-5" id="pageNext">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <!--화살표 태그-->
                  <span aria-hidden="true" class="pageChange">&laquo;</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true" class="pageChange">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    <footer>
      <jsp:include page="../template/footer.jsp" />
    </footer>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
