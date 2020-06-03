<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.* ,org.hibernate.*, com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<%@include file="all_js_css.jsp"%>
</head>
<body>
<!-- <div class="container-fluid p-0 m-0"> -->
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 class="text-primary">Edit your note</h1>

		<br>
		<%
			int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			Session s=FactoryProvider.getFactory().openSession();
			Note note=s.get(Note.class, noteId);
		%>
		
		<!--This Is add Form  -->
		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId()%>" name="noteId" type="hidden"/>
		 		<div class="form-group">
			    	<label for="title">Note Title</label>
			    	<input name="title" required type="text" 
			    	class="form-control"
			     	id="title" placeholder="Enter here Id" value="<%=note.getTitle() %>">
		   	 </div>
		    
			<div class="form-group">
		    	<label for="content">Note Content</label>	 
		    	<textarea name="content" required id="content"
		    	placeholder="Enter your content here"
		    	class="form-control"
		    	style="height:300px;"><%=note.getContent() %>
				</textarea>
			</div>
			
			<div class="container text-center">
			  <button type="submit" class="btn btn-primary">Save Your Notes</button>
			</div>
		</form>
	</div>

</body>
</html> 