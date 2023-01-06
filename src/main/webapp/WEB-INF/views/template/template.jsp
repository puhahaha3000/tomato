<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title></title>
</head>
<jsp:include page="header.jsp" />
<body>
<section>
    <jsp:include page="${pageName}" />
</section>
</body>
<jsp:include page="footer.jsp" />
</html>