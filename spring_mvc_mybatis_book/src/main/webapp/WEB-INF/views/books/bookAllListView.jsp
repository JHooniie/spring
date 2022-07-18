<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 도서 조회</title>
	</head>
		<body>
			<body>
			<h3>전체 도서 조회</h3>
			<table border="1">
				<tr><th>도서번호</th><th>도서명</th><th>저자</th>
				<th>출판일</th><th>가격</th><th>재고</th><th>사진</th></tr>
				<c:forEach var="book"  items="${bookList}">
				<tr>
					<td><a href="<c:url value='/books/bookDetailView/${book.bookNo}'/>">${book.bookNo }</a></td>
					<td>${book.bookName }</td>
					<td>${book.bookAuthor }</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${book.bookDate }" /></td>
					<td>${book.bookPrice }</td>
					<td>${book.bookStock }</td>
					<td><img src="<c:url value='/images/${book.bookNo }.png'/>" width="20" height="20"></td>
				</tr>
				</c:forEach>
			</table><br><br><br>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a> <br><br>
		</body>
</html>