<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

      <html>

      <head>
        <title>내작성글</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/myarticle.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      </head>

      <body>
        <header>
          <jsp:include page="../template/header.jsp" />
        </header>
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="dropdown">
                <a class="btn btn-secondary dropdown-toggle" role="button" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  거래게시판
                </a>

                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">거래게시판</a></li>
                  <li><a class="dropdown-item" href="#">공지사항게시판</a></li>
                  <li><a class="dropdown-item" href="#">Q&A게시판</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action">
                  거래게시글
                </a>
                <a href="#" class="list-group-item list-group-item-action">1번 게시글</a>
                <a href="#" class="list-group-item list-group-item-action">2번 게시글</a>
                <a href="#" class="list-group-item list-group-item-action">3번 게시글</a>
                <a href="#" class="list-group-item list-group-item-action">4번 게시글</a>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <nav aria-label="Page navigation example">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
          crossorigin="anonymous"></script>
      </body>

      </html>