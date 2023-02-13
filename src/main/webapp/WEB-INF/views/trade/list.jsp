<%@ page language="java" contentType="text/html;charset=utf-8"
pageEncoding="utf-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
  <head>
    <title>거래게시판</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" type="text/css" href="css/tradeList.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body>
    <header>
      <jsp:include page="../template/header.jsp" />
    </header>
    <div class="container tradeCon">
      <h3>거래 게시판</h3>
      <!--검색창 폼-->
      <form action="" method="GET">
        <div
          class="mx-quto input-group mt-3 d-flex justify-content-center"
          id="search"
        >
          <mx-auto>
            <input
              name="query"
              type="text"
              class="form-control"
              placeholder="검색어 입력"
              aria-label="search"
              aria-describedby="button-addon2"
            />
          </mx-auto>

          <button class="btn btn-success" type="submit" id="button-addon2">
            검색
          </button>
        </div>
      </form>
      <!--라디오 버튼 그룹-->
      <div class="d-flex justify-content-center">
        <ul class="list-group checkUl">
          <li class="list-group-item d-flex justify-content-around checkLi">
            <div>
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="Checkbox1"
              />
              <label class="form-check-label" for="Checkbox1"
                >카테고리1번</label
              >
            </div>

            <div>
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="Checkbox2"
              />
              <label class="form-check-label" for="Checkbox2"
                >카테고리2번</label
              >
            </div>
            <div>
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="Checkbox3"
              />
              <label class="form-check-label" for="Checkbox3"
                >카테고리3번</label
              >
            </div>
            <div>
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="Checkbox4"
              />
              <label class="form-check-label" for="Checkbox4"
                >카테고리4번</label
              >
            </div>
          </li>
          <li class="list-group-item d-flex justify-content-around checkLi">
            <div>
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="Checkbox5"
              />
              <label class="form-check-label" for="Checkbox5"
                >카테고리5번</label
              >
            </div>

            <div>
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="Checkbox6"
              />
              <label class="form-check-label" for="Checkbox6"
                >카테고리6번</label
              >
            </div>
            <div>
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="Checkbox7"
              />
              <label class="form-check-label" for="Checkbox7"
                >카테고리7번</label
              >
            </div>
            <div>
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="Checkbox8"
              />
              <label class="form-check-label" for="Checkbox8"
                >카테고리8번</label
              >
            </div>
          </li>
        </ul>
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
