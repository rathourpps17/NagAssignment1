<%@page import="com.nagarro.training.libraryui.dao.BooksDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("username") == null) {
		response.sendRedirect("index.jsp");
	}
	%>

	<%
	int id = Integer.parseInt(request.getParameter("bookId"));
	BooksDao.delete(id);
	response.sendRedirect("admin.jsp");
	%>
</body>
</html>