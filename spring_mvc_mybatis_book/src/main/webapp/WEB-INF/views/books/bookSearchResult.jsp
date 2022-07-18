<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 검색 결과 출력</title>
	</head>
	<body>		
		<table border="1" width="600px">
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>저자</th>	
				<th>출판일</th>
				<th>가격</th>
				<th>재고</th>		
				<th>사진</th>
			</tr>
			
			<c:choose>
				<c:when test="${empty bookList}">
					<tr align="center">
						<td colspan="7">찾는 도서가 없습니다</td>
					</tr>
				</c:when>
			
				<c:otherwise>
					<c:forEach var="book" items="${bookList}">
						<tr align="center">
							<td><a href="<c:url value='/books/bookDetailView/${book.bookNo }'/>">${book.bookNo }</a></td>
							<td>${book.bookName}</td>
							<td>${book.bookAuthor}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${book.bookDate}"/></td>
							<td>${book.bookPrice}</td>
							<td>${book.bookStock}</td>
							<td><img src="<c:url value='/images/${book.bookNo }.PNG'/>" width="30" height="20"></td>
						</tr>
					</c:forEach>
				</c:otherwise>			
			</c:choose>			
		</table>
	</body>
</html>