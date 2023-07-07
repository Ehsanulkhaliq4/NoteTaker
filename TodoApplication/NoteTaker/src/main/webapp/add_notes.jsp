<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : Add Note Page</title>
 <%@include file="all_css_js.jsp" %>
</head>
<body>
 <div class="container-fluid p-0 m-0">
        <%@include file="navbar.jsp" %>
        
        </div>
      <div class="container">
      <br>
      <!--this is add form bootstrap -->
      <h1>Fill Your Note Details Here</h1>
      <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input 
     name="title"
     type="text"
     class="form-control"
     required
     id="title"
     aria-describedby="emailHelp"
     placeholder="Enter title"/>
    <small id="titleHelp" class="form-text text-muted">Enter the title of your important notes</small>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea
     name="content"
     id="content" required
     placeholder="Enter your content here"
     class="form-control"
     style="height:250px"
     ></textarea>
  </div>
       <div class="container text-center">
       <button type="submit" class="btn btn-accent">Add Note</button>
       </div>
</form>
      
      </div>

</body>
</html>