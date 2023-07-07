<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : Update Page</title>
 <%@include file="all_css_js.jsp" %>
</head>
<body>

 <div class="container-fluid p-0 m-0">
  <%@include file="navbar.jsp" %>
        <br>
        </div>
         <div class="container">
        <h1 class="text-uppercase text-center">Edit Notes Here</h1>
        <%
        int noteId=Integer.parseInt(request.getParameter("note_id").trim());
        Session s=FactoryProvider.getfactory().openSession();
        Note note=(Note)s.get(Note.class,noteId);
        
        %>
          <!--this is add form bootstrap -->
    
      <form action="UpdateServlet" method="post">
      <input name="noteId" value=<%= note.getId() %> type="hidden">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input 
     name="title"
     type="text"
     class="form-control"
     required
     id="title"
     aria-describedby="emailHelp"
     placeholder="Enter title"
     value="<%= note.getTitle()%>"/>
     
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
     ><%= note.getContent()%>
     </textarea>
  </div>
       <div class="container text-center">
       <button type="submit" class="btn btn-success">Save Note</button>
       </div>
</form>
        </div>

</body>
</html>