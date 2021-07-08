<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='java.util.List'%>
<%@ page import='com.javaex.dao.GuestBookDao'%>
<%@ page import='com.javaex.vo.GuestBookVo'%>
<%

	GuestBookDao guestDao = new GuestBookDao();
	List<GuestBookVo> guestList = guestDao.guestList();
	int guestNo = Integer.parseInt(request.getParameter("no"));
	System.out.println(guestNo);
	
	GuestBookVo guestVo = guestDao.getGuest(guestNo);
	System.out.println(guestVo);
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
		<input type="hidden" name="no" value="<%=guestVo.getNo()%>">
		<button type="submit">확인</button><br>
		<a href="./addList.jsp">메인으로 돌아가기</a>
	</form>
</body>
</html>