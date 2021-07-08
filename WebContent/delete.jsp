<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='java.util.List'%>
<%@ page import='com.javaex.dao.GuestBookDao'%>
<%@ page import='com.javaex.vo.GuestBookVo'%>
<%
	GuestBookDao guestDao = new GuestBookDao();
	List<GuestBookVo> guestList = guestDao.guestList();
	int guestNo = Integer.parseInt(request.getParameter("no"));
	GuestBookVo guestVo = guestDao.getGuest(guestNo);
	if((guestList.get(guestNo).getPassword()).equals(request.getParameter("password"))) {
		guestDao.guestDelete(guestNo);
	} else {
		System.out.println("비밀번호가 틀렸습니다.");
	}
	
	response.sendRedirect("./addList.jsp");
%>