<%@ page language="java" contentType="text/html;charset=utf-8"
pageEncoding="utf-8" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %> <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
  <head>
    <title>내찜목록</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" type="text/css" href="css/favorite.css" />
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
    <div class="container favoriteCon">
      <h3 style="color: #f57328">내 찜목록</h3>
      <!--찜목록의 리스트를 테이블 형태로 나열하기-->
      <div class="position-relative">
        <div
          class="position-absolute top-50 start-50 translate-middle favoriteTable"
        >
          <div class="card mb-3 favoriteCard">
            <div class="row g-0">
              <div
                class="col-md-2 d-flex justify-content-center"
                style="width: 100px; height: 100px; margin-left: 20px"
              >
                <img
                  src="img/tomatoLogo.jpg"
                  class="img-fluid rounded-start"
                  alt="상품썸네일"
                />
              </div>
              <div class="col-md-10">
                <table
                  class="table table-borderless"
                  style="margin-bottom: 0px"
                >
                  <tbody class="favoriteTbody">
                    <tr>
                      <td colspan="3" class="tableTitle">
                        <a href="##">글 제목</a>
                      </td>
                      <td>가격</td>
                    </tr>
                    <tr>
                      <td>거래장소</td>
                      <td>작성자</td>
                      <td>판매상태</td>
                      <td>
                        <img id="darkHeart" src="img/darkheart.png" />
                        <img id="whiteHeart" src="img/whiteHeart.png" />
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
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
  <script
    src="https://code.jquery.com/jquery-3.5.1.js"
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
    crossorigin="anonymous"
  ></script>

  <script>
    $(document).ready(function () {
      /*웹페이지 열었을 때*/
      $("#darkHeart").show();
      $("#whiteHeart").hide();

      /*darkHaert를 클릭했을 때 whiteHeart를 보여줌*/
      $("#darkHeart").click(function () {
        $("#darkHeart").hide();
        $("#whiteHeart").show();
      });

      /*whiteHeart를 클릭했을 때 darkHeart를 보여줌*/
      $("#whiteHeart").click(function () {
        $("#darkHeart").show();
        $("#whiteHeart").hide();
      });
    });
  </script>
</html>
