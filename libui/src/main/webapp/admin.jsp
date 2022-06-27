<!DOCTYPE html>
<%@page import="com.nagarro.training.libraryui.dao.BooksDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%-- <%@page import="com.nagarro.training.libraryui.dao.BooksDao"%> --%>
<%@page import="com.nagarro.training.libraryui.entities.Books"%>
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
<style><%@include file="css/admin.css"%></style>
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
    
    <div class="table-wrapper">
        <div class="table-header">
         <div>&nbsp;</div>
            <div class="it2"><h4>Book Listing</h4></div>
            
          <div class="it3">
              
                  <input  type="hidden" name="" id="">
               <button onclick="location.href='add.jsp';" class="addBtn btn btn-primary">Add a Book</button>
               
          </div>
        </div> 
        <br> 
        <table>
            <tr>
              <th>Book Code</th>
              <th>Book Name</th>
              <th>Author</th>
              <th>Date added</th>
              <th>Actions</th>
            </tr>
        <%
        List<Books> books= BooksDao.getallBooks();
         
        	for (Books book : books) {
        
        %>
            <tr>
                <td><%= book.getBookId() %></td>
                <td><%= book.getBookName() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getDate() %></td>
                <td class="lst-colm">
                    <div>
                        <form action="" method="post">
                            <input type="hidden" name="code" value=" code id">
                        <button type="button" onclick="location.href='edit.jsp?bookId=<%=book.getBookId() %>';" class="btn btn-outline-secondary">Edit</button>
                        </form>
                    </div>
                    
                    &nbsp;
                    <div>
                        
                            <input type="hidden" name="code" value="data here..">
                        <button type="submit" onclick="location.href='delete.jsp?bookId=<%=book.getBookId() %>';" class="btn btn-outline-danger">delete</button>
                    
                    </div>
                   
                </td>

            </tr>
       <%} %>
            </table>
    </div>
    <div class="site-footer">
        <p class="footer-contents">XYZ Central Library </p>
    </div>
    </div>
</body>
</html>


