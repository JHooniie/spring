<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 정보 등록</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/bookNoCheck.js'/>"></script>
	</head>
		<body>
			<h3>도서 정보 등록</h3>
			
			<form method="post" action="/book/books/insertBook">
			<table>
				<tr><td>도서번호</td><td  colspan="2"><input type="text" id="bookNo" name="bookNo"><button id="bookCheckBtn" name="bookCheckBtn">중복확인</button></td></tr>
				<tr><td>도서명</td><td><input type="text" name="bookName"></td></tr>
				<tr><td>저자</td><td><input type="text" name="bookAuthor"></td></tr>
				<tr><td>출판일</td><td><input type="text" name="bookDate"></td></tr>
				<tr><td>가격</td><td><input type="text" name="bookPrice"></td></tr>
				<tr><td>재고</td><td><input type="text" name="bookStock"></td></tr>
				<tr><td colspan="2">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
				</td></tr>			
			</table><br><br>
			</form>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a> <br><br>
			<a href="<c:url value='/books/bookAllList'/>">전체 도서 조회</a> <br><br>
		</body>
</html>