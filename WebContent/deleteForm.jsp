<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int guestNo = Integer.parseInt(request.getParameter("no"));
	System.out.println(guestNo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		비밀번호 <input type="text" name="password" value="">
		<input type="hidden" name="no" value="<%=guestNo%>">
		<button type="submit">확인</button><br>
		<a href="./addList.jsp">메인으로 돌아가기</a>
	</form>
</body>
</html>