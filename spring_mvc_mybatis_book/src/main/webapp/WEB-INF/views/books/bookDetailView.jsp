<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 상세 정보 조회</title>
	</head>
		<body>
			<h3>도서 상세 정보 조회</h3>
			
			<table border="1">
				<tr><td>도서번호</td><td>${book.bookNo }</td></tr>
				<tr><td>도서명</td><td>${book.bookName }</td></tr>
				<tr><td>저자</td><td>${book.bookAuthor }</td></tr>
				<tr><td>출판일</td><td><fmt:formatDate pattern='yyyy-MM-dd' value='${book.bookDate }' /></td></tr>
				<tr><td>가격</td><td>${book.bookPrice }</td></tr>
				<tr><td>재고</td><td>${book.bookStock }</td></tr>	
			</table><br><br>
			
			
			<a href="<c:url value='/'/>">메인 화면으로 이동</a> <br><br>
			<a href="<c:url value='/books/bookAllList'/>">전체 도서 조회</a> <br><br>
			
			<a href="<c:url value='/books/bookUpdateForm/${book.bookNo }'/>">도서 정보 수정</a> <br><br>
			<a href="javascript:deleteCheck();">상품 정보 삭제</a>
			<script>
			function deleteCheck(){
				var answer = confirm("삭제하시겠습니까?");
				if(answer){
					location.href="/book/books/deleteBook/${book.bookNo}";
				}
			}
			</script>
			<a href="<c:url value='/'/>">메인 화면으로 이동</a> <br><br>
			<a href="<c:url value='/books/bookAllList'/>">전체 도서 조회</a> <br><br>

		</body>
</html>