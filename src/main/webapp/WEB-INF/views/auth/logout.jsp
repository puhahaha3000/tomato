<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>로그인 페이지</title>
</head>

<body onload="document.f.id.focus();">
<%
  //1.session scope에 "id"라는 키값으로 저장된 값을 삭제한다.
	session.removeAttribute("id");
    //2. 응답(특정페이지로 요청을 다시 하라는 리다이렉트로 응답)
    String cPath = request.getContextPath();
    response.sendRedirect(cPath+"/index.jsp");
%>
</body>
</html>