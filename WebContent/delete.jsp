<%@page import="com.douzon.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzon.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String no_string = request.getParameter("no");
	Long no = Long.parseLong(no_string);
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	
	vo.setNo(no);
	vo.setPassword(password);
	
	new GuestbookDao().delete(vo);
	
	response.sendRedirect("/guestbook1");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1> <%=vo.getNo() %>이 삭제되었습니다.</h1>
</body>
</html>