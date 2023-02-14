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
    <script src="js/make_calendar.js" defer></script>
    <script src="js/signup.js"></script>
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
              style="width: 300px"
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

          <div class="input-group mb-3 justify-content-around">
            <!--가격설정하는 폼-->
            <form action="" class="d-flex">
              <input
                type="text"
                class="form-control"
                style="height: 30px; width: 150px; border: 2.5px solid #f5af19"
              />
              &nbsp;~&nbsp;
              <input
                type="text"
                class="form-control"
                style="height: 30px; width: 150px; border: 2.5px solid #f5af19"
              />
              <button
                class="priceBtn"
                type="button"
                id="button-addon2"
                style="height: 30px; width: 70px"
              >
                설정
              </button>
            </form>
            <!--주소 설정하는 폼-->
            <select id="sido_name" name="input_sido_name" class="adress">
              <option>시/도</option>
              <c:forEach var="sido_name" items="${sido_names}">
                <option value="${sido_name}">${sido_name}</option>
              </c:forEach>
            </select>
            <select id="sigungu_name" name="input_sigungu_name" class="adress">
              <option>군/구</option>
            </select>
            <select id="dong_name" name="input_dong_name" class="adress">
              <option>동</option>
            </select>
          </div>

          <form action="" class="d-flex">
            &nbsp;작성일&nbsp;
            <div class="input-group mb-3" style="width: 250px">
              <input
                type="text"
                class="form-control"
                style="height: 30px; border: 2.5px solid tomato"
              />
              <button
                type="button"
                class="btn"
                data-bs-toggle="modal"
                data-bs-target="#exampleModal"
                style="height: 30px; width: 70px; border: 2.5px solid darkgreen"
              ></button>
              <!-- Modal -->
              <div
                class="modal fade"
                id="exampleModal"
                tabindex="-1"
                aria-labelledby="exampleModalLabel"
                aria-hidden="true"
              >
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h1 class="modal-title fs-5" id="exampleModalLabel">
                        작성시작일을 선택하세요
                      </h1>
                      <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                      ></button>
                    </div>
                    <div class="modal-body">
                      <section id="sect" class="d-flex justify-content-center">
                        <table id="calendar">
                          <thead>
                            <tr>
                              <td>
                                <label onclick="prevCalendar()">&lt;</label>
                              </td>
                              <td id="calendar_YM" colspan="5">yyyy년 m월</td>
                              <td>
                                <label onclick="nextCalendar()">&gt;</label>
                              </td>
                            </tr>
                            <tr>
                              <td>일</td>
                              <td>월</td>
                              <td>화</td>
                              <td>수</td>
                              <td>목</td>
                              <td>금</td>
                              <td>토</td>
                            </tr>
                          </thead>

                          <tbody></tbody>
                        </table>
                        <!-- calendar -->
                      </section>
                      <!-- sect -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
            &nbsp;~&nbsp;
            <div class="input-group mb-3" style="width: 250px">
              <input
                type="text"
                class="form-control"
                style="height: 30px; border: 2.5px solid tomato"
              />
              <button
                type="button"
                class="btn"
                data-bs-toggle="modal"
                data-bs-target="#exampleModal2"
                style="height: 30px; width: 70px; border: 2.5px solid darkgreen"
              ></button>
              <!-- Modal -->
              <div
                class="modal fade"
                id="exampleModal2"
                tabindex="-1"
                aria-labelledby="exampleModalLabel"
                aria-hidden="true"
              >
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h1 class="modal-title fs-5" id="exampleModalLabel">
                        작성 마지막일을 선택하세요
                      </h1>
                      <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                      ></button>
                    </div>
                    <div class="modal-body">
                      <section id="sect" class="d-flex justify-content-center">
                        <table id="calendar2">
                          <thead>
                            <tr>
                              <td>
                                <label onclick="prevCalendar2()">&lt;</label>
                              </td>
                              <td id="calendar_YM2" colspan="5">yyyy년 m월</td>
                              <td>
                                <label onclick="nextCalendar2()">&gt;</label>
                              </td>
                            </tr>
                            <tr>
                              <td>일</td>
                              <td>월</td>
                              <td>화</td>
                              <td>수</td>
                              <td>목</td>
                              <td>금</td>
                              <td>토</td>
                            </tr>
                          </thead>

                          <tbody id="c2TBODY"></tbody>
                        </table>
                        <!-- calendar -->
                      </section>
                      <!-- sect -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
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
