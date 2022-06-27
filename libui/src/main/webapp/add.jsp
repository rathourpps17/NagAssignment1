<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.nagarro.training.libraryui.dao.Authorsdao"%>
<%@page import="com.nagarro.training.libraryui.entities.Authors"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>XYZ Central Library</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" origin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" origin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" origin="anonymous"></script>
    <%@ page isELIgnored="false" %>  
    <style><%@include file="css/other.css"%></style>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("username") == null) {
		response.sendRedirect("index.jsp");
	}
	%>
 
    <div class="site-wrapper">
        <div class="site-navbar">
            <div>&nbsp;</div>
                <div class="it2">
                  <h4 class="navbar-contents" >XYZ library</h4>
                 </div>
            <div class="it3">
                Welcome ${username}
                &nbsp;
                  <form action="Logout" method="post">
                    <input  type="hidden" name="" id="">
                   <button type="submit" class="logoutBtn btn btn-outline-primary">logout</button> 
                 </form>
                </div>
          </div> 
         
         
    <div class="form-wrapper">
        
        <h1> Add Book details</h1>
        <form action="addbooks" method="post">
            <div class="form-group">
                <label for="code">Book Code</label>
                <input type="text" class="form-control"  id="code" name="bookCode"  required>
              </div>
              <div class="form-group">
                <label for="name">Book Name</label> 
                <input type="text" class="form-control"  id="name" name="bookName"  required>
              </div>
              <div class="form-group">
                <label for="author">Author</label> 
                <select name="authors" id="author" required>
                <% List<Authors> authors= Authorsdao.getallAuthors();
                	for(Authors person:authors){		
                %>
                	<option value="<%=person.getName() %>"><%=person.getName() %></option>
                <%} %>
                </select>
                
              </div>
              <%  SimpleDateFormat dateFormat = new SimpleDateFormat("dd MMM yyyy");
              	String date= dateFormat.format(new Date());	
              %>
              <div class="form-group">
                <label for="email">Date</label> 
                <input type="text" class="form-control"  id="password" name="DateUpdated" readonly value="<%=date  %>" required>
              </div>
              <button type="submit" class=" btn btn-outline-primary">Add</button>
              &nbsp;
              <button onclick="location.href='admin.jsp';" class="btn btn-outline-danger">Cancel</button>
          </form>
    </div>
    <div class="site-footer">
        <p class="footer-contents">XYZ Central Library </p>
    </div>
    </div>
</body>
</html>