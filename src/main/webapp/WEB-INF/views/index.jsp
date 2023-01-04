<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a:link{
		color: white;
		text-decoration: none;
	}
	a:visited{
		color: white;
		text-decoration: none;
	}
	html.body{
		margin: 0; padding: 0;
	}
	header{
		width: 100%; height: 15%; 
		background: white; text-align: center;
		font-size: 25px; color: white; 
		
	}
	nav{
		width: 100%; height: 15%; background: #A40000;
		color: white;font-size: 12px;padding-top: 10px;
	}
	section{
		width: 100%; height: 55%; 
		background: white;text-align: center;
		font-size: 20px; padding-top: 20px;
	}
	footer{
		width: 100%; height: 15%; background: #A40000; 
		text-align: center;color: white;font-size: 12px;
		padding-top: 10px;
	}
	#tomato{
		width:45px; height: 50px; 
		padding-right: 30px;
	}
	#search{
		height: 30px;
		margin-top: 10px;
	}
</style>
</head>
<body>
	<header>
		<img id="tomato" src="tomato_logo.jpg">
		<input type="text" value="" size="50" id="search">
	</header>
	<nav>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">공지사항</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">Q&A</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">거래게시판</a>
	</nav>
	<section>section</section>
	<footer>Copyright</footer>
</body>
</html>