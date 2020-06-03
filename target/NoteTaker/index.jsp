<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>Note Taker : Home Page</title>
	<%@include file="all_js_css.jsp"%>
</head>
<body>
	<!-- <div class="container-fluid p-0 m-0"> -->
	<div class="container">

		<%@include file="navbar.jsp"%>
		<br>
		
		<div class="card py-5">
		<img alt="" class="img-fluid mx-auto" style="width:300px;" src="img/notepad.png">
		<h1 class=" text-primary text-uppercase text-center mt-3"> Star taking your notes</h1>
		<div class="container text-center" >
		<!-- <button  class="btn btn-outline-primary text-center">Start here</button> -->
	 	<a href="all_notes.jsp"  class="btn btn-outline-primary text-center">Start here</a>
	 		<!-- <a href="all_notes.jsp"  class="btn btn-primary text-center">Start here</a> -->
	 	
		</div>
		</div>
	</div>
</body>
</html>