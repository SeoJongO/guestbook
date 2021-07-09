<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='com.javaex.dao.GuestBookDao'%>
<%
	GuestBookDao guestDao = new GuestBookDao();
	int guestNo = Integer.parseInt(request.getParameter("no"));
	String guestPassword = request.getParameter("password");

	int count = guestDao.guestDelete(guestNo, guestPassword);
	if(count>0) {
		System.out.println("삭제 완료");
	} else {
		System.out.println("삭제 실패");
	}
	response.sendRedirect("./addList.jsp");
%>