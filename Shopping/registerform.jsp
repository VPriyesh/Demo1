<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String errorMessage = null;
if(request.getAttribute("errorMessage")!=null){
	errorMessage = (String)request.getAttribute("errorMessage");
}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<link rel="stylesheet" href="Scripts/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="style.css"></link>
</head>
<body>
<!-- Header -->
<div>
	<h1 class="page-header">Product Shopper</h1>
</div>
<!-- Body -->
<div class="container">
	<div class="row">
		<div class="col-md-4"></div>
	 	<div class="col-md-12 user-form">
			<form id="registerForm" class="navbar-form" action="register" method="POST">
				<h2>Register</h2>
				</br>
				<div class="input-group">
				<span class="input-group-addon">First Name:</span>
				<input class="form-control" type=text name=fName value="User1" placeholder="Ex: John">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">Last Name:</span>
				<input class="form-control" type=text name=lName value="Smith" placeholder="Ex: Smith">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">Email:</span>
				<input class="form-control" type=text name=email value="user2@tcs.com" placeholder="user2@tcs.com">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">Address:</span>
				<input class="form-control" type=text name=address value="123 Cherry Street" placeholder="Ex: 123 Cherry Street">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">City:</span>
				<input class="form-control" type=text name=city value="Athens" placeholder="Ex: Athens">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">State:</span>
				<input class="form-control" type=text name=state value="GA or Georgia" placeholder="Ex: GA or Georgia">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">Zipcode:</span>
				<input class="form-control" type=text name=zip value="30606" placeholder="Ex: 30606">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">Country:</span>
				<input class="form-control" type=text name=country value="30606" placeholder="Ex: 30606">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">Username:</span>
				<input class="form-control" type=text name=uName value="user2" placeholder="Ex: user2">
				</div>
				<br>
				<div class="input-group">
				<span class="input-group-addon">Password:</span>
				<input class="form-control" type=password name=password placeholder="">
				</div>
				<br>
				<div class="input-group" style="margin-top:10px">
				<input class="form-control" type=submit name=submit value="Submit">
				</div>
				<br>
			</form>
		</div>
		<div class="col-md-4"></div>
	</div>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 messageBox alert alert-danger" style="display:none"></div>
		<div class="col-md-4"></div>
	</div>
	<div class="row">
		<div class="col-md-4"></div>
		<%
			if(errorMessage != null)
			{
		%>
		<div class="alert alert-danger col-md-4" role="alert" style="margin-top:5px;">
			<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><span><%=errorMessage %></span>
		</div>
		<br>
		<%
			} 
		%>
		<div class="col-md-4"></div>
	</div>
</div>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="Scripts/jquery-1.11.x.min.js"></script>
<script src="Scripts/js/bootstrap.min.js"></script>
<script src="Scripts//js/jquery.validate.min.js"></script>
<script src="Scripts/js/validation/register.js"></script>
</html>