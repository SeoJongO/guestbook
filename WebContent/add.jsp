<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='java.util.List'%>
<%@ page import='com.javaex.dao.GuestBookDao'%>
<%@ page import='com.javaex.vo.GuestBookVo'%>
<%
	request.setCharacterEncoding("UTF-8");

	GuestBookDao guestDao = new GuestBookDao();
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	GuestBookVo guestVo = new GuestBookVo(name, password, content);
	guestDao.guestInsert(guestVo);
	
	response.sendRedirect("./addList.jsp");
%>