<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 정보 수정</title>
	</head>
		<body>
			<h3>상품 정보 수정</h3>
			<form method="post" action="/book/books/updateBook">
			<table>
				<tr><td>도서번호</td><td><input type="text" name="bookNo" value="${book.bookNo }" readonly></td></tr>
				<tr><td>도서명</td><td><input type="text" name="bookName" value="${book.bookName }"></td></tr>
				<tr><td>저자</td><td><input type="text" name="bookAuthor" value="${book.bookAuthor }"></td></tr>
				<tr><td>출판일</td><td><input type="text" name="bookDate" value="<fmt:formatDate pattern='yyyy-MM-dd' value='${book.bookDate }' />"></td></tr>
				<tr><td>가격</td><td><input type="text" name="bookPrice" value="${book.bookPrice }"></td></tr>
				<tr><td>재고</td><td><input type="text" name="bookStock" value="${book.bookStock }"></td></tr>
				<tr><td colspan="2">
				<input type="submit" value="완료">
				<input type="reset" value="취소">
				</td></tr>			
			</table><br><br>
			
			</form>
			
			<a href="<c:url value='/'/>">메인 화면으로 이동</a> <br><br>
			<a href="<c:url value='/books/bookAllList'/>">전체 도서 조회</a> <br><br>
		</body>
</html>