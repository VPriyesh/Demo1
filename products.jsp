<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Product" %>
<%@ page import="model.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%
	// @author: Conner McKeeth
	Cart cart = null;
	String errorMessage = (String)request.getAttribute("errorMessage");	

	if(session.getAttribute("cart") !=null && session.getAttribute("cart") instanceof Cart)
	{
		cart = (Cart)session.getAttribute("cart");
	}
	else if(session.getAttribute("cart") !=null && session.getAttribute("cart") instanceof ArrayList)
	{
		ArrayList<Product> cartProducts = (ArrayList<Product>) session.getAttribute("cart");
		cart = new Cart(cartProducts);
	}
	ArrayList<Product> inventory = (ArrayList<Product>)session.getAttribute("inventory");
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Select Products to Purchase</title>
	<link rel="stylesheet" href="Scripts/css/bootstrap.min.css"></link>
	<link rel="stylesheet" href="style.css"></link>
	<style>
		  .carousel-inner > .item > img,
		  .carousel-inner > .item > a > img {
		      width: 80%;
		      height: 450px;
		      margin: auto;
		  }
	 </style> 
</head>
<body>
	<!-- Title -->
	
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">Product Shopper</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="#">Home</a></li>
	      <li><a href="#">Today's Deal</a></li>
	      <li><a href="#">Customer Service</a></li> 
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="registerform.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	      <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Sing out</a></li>
	    </ul>
	  </div>
	</nav>
	
	<!-- Body -->
	<div class="container" style="width:80%; text-align: center; margin:0 auto;">
		
	
	<div>
			<div class="row">
				<div class="col-md-9">
					<div class="row">
						<div class="col-md-1"></div>
				 		<div class="col-md-8">
					 		<div class="input-group">
						      <div class="input-group-btn">
						        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All <span class="caret"></span></button>
						        <ul class="dropdown-menu">
						          <li><a href="#">All Categories</a></li>
						          <li><a href="#">Electronics</a></li>
						          <li><a href="#">Furniture</a></li>
						          <li><a href="#">Books</a></li>
						          <li><a href="#">Clothing</a></li>
						        </ul>
						      </div><!-- /btn-group -->
						      <input type="text" class="form-control" aria-label="...">
						    </div><!-- /input-group -->
					 	</div>
					 	<div class="col-md-2"></div>
					</div>
				</div>
				
				<div class="col-md-1" style="text-align: right;">
					<a class="btn btn-default btn-md" style="background-color:yellow;" role="button" href="cart" >
						<span class="glyphicon glyphicon-shopping-cart"></span> My Cart
						<%
							if(cart!=null && cart.getProducts()!= null)
							{
								if(cart.getProducts().size() > 0)
									out.println("<span class=\"badge\">" + cart.getProducts().size() + "</span>");
							}
						%>
					</a>
				</div>
				<div class="col-md-2" style="text-align: left;">
					<a class="btn btn-default btn-md" style="background-color:yellow;" role="button" href="orders">
						<span class="glyphicon glyphicon glyphicon-briefcase"></span> My Orders
						<span class="badge">6</span>
					</a>
				</div>
			</div>		
		</div>	
		
		
		
		
		
		
	<div class="row">
			<br>
			<div class="col-md-3" style="text-align:left;">
			
			
			<ul class="nav nav-pills nav-stacked">
			    <li class="active"><a href="#">All Offers</a></li>
			    <li><a href="#">Mobiles & Tablets</a></li>
			    <li><a href="#">Computers</a></li>
			    <li><a href="#">Electronics</a></li>
			    
			    <li><a href="#">Women's Fashion</a></li>
			    <li><a href="#">Men's Fashion</a></li>
			    <li><a href="#">Kid's Toys & Fashion</a></li>
			    
			    <li><a href="#">Home & Kitchen</a></li>
			    <li><a href="#">Sports Accessories</a></li>
			    <li><a href="#">Books</a></li>
			    <li><a href="#">Music</a></li>
			    <li><a href="#">Gift Cards</a></li>
			</ul>
			
			
			</div>
	 		<div class="col-md-6">
				  <div id="myCarousel" class="carousel slide" data-ride="carousel">
				    Indicators
				    <ol class="carousel-indicators">
				      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				      <li data-target="#myCarousel" data-slide-to="1"></li>
				      <li data-target="#myCarousel" data-slide-to="2"></li>
				      <li data-target="#myCarousel" data-slide-to="3"></li>
				    </ol>
				
				    Wrapper for slides
				    <div class="carousel-inner" role="listbox">
				      <div class="item active">
				        <img src="images/banana.png" alt="Chania" width="460" height="50">
				      </div>
				
				      <div class="item">
				        <img src="images/glasses.png" alt="Chania" width="460" height="50">
				      </div>
				    
				      <div class="item">
				        <img src="images/iphone6.png" alt="Flower" width="460" height="50">
				      </div>
				
				      <div class="item">
				        <img src="images/painting.png" alt="Flower" width="460" height="50">
				      </div>
				    </div>
				
				    Left and right controls
				    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				      <span class="sr-only">Previous</span>
				    </a>
				    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				      <span class="sr-only">Next</span>
				    </a>
				  </div>
			 </div>
		 	<div class="col-md-3"></div> 
		</div>
		</br>
			
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
			<div class="alert alert-danger col-md-4" role="alert" style="margin:10px auto;">
  				<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><span><%=errorMessage %></span>
			</div>
			<br>
			<%
				} 
			%>
			<div class="col-md-4"></div>
		</div>
		
		<c:forEach var="current" items="${inventory}" varStatus="loop">
			<c:if test="${current.getQuantity() >= 0 }">
				<c:choose>
					<c:when test="${(loop.index+1) % 3 == 1}">
						<form class="productForm" action="addProduct" method=POST> 
							<div class="col-md-4 product">
								<h2>${current.name}</h2>
								<div><img class="productImage" src="images/${current.url}"></div>
								<div class="productDetails1">
									<h3>Price: <small> $${current.price }</small></h3>
									<h3>Remaining Items: <small>${current.quantity}</small></h3>
									<c:choose>
										<c:when test="${current.quantity == 0 }">
											<h3>Out of Stock</h3>
										</c:when>
										<c:otherwise>
											<h3>Quantity: </h3>
											<input class="form-control qInput" type=text name="quantity">
											<input class="form-control" type=hidden name="id" value=${current.id }>
											<button type="submit" class="btn btn-default">Add to Cart</button>
											<button type="submit" class="btn btn-default">Add to Wish List</button>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</form>
					</c:when>
					
					<c:when test="${(loop.index+1) % 3 == 2}">
						<form class="productForm" action="addProduct" method=POST> 
							<div class="col-md-4 product">
								<h2>${current.name}</h2>
								<div><img class="productImage" src="images/${current.url}"></div>
								<div class="productDetails1">
									<h3>Price: <small>$${current.price }</small></h3>
									<h3>Remaining Items: <small>${current.quantity}</small></h3>
									<c:choose>
										<c:when test="${current.quantity == 0 }">
											<h3>Out of Stock</h3>
										</c:when>
										<c:otherwise>
											<h3>Quantity: </h3>
											<input class="form-control qInput" type=text name="quantity">
											<input class="form-control" type=hidden name="id" value=${current.id }>
											<button type="submit" class="btn btn-default">Add to Cart</button>
											<button type="submit" class="btn btn-default">Add to Wish List</button>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</form>
					</c:when>
					
					<c:when test="${(loop.index+1) % 3 == 0}">
						<form class="productForm" action="addProduct" method=POST> 
							<div class="col-md-4 product">
								<h2>${current.name}</h2>
								<div><img class="productImage" src="images/${current.url}"></div>
								<div class="productDetails1">
									<h3>Price: <small>$${current.price }</small></h3>
									<h3>Remaining Items: <small>${current.quantity}</small></h3>
									<c:choose>
										<c:when test="${current.quantity == 0 }">
											<h3>Out of Stock</h3>
										</c:when>
										<c:otherwise>
											<h3>Quantity: </h3>
											<input class="form-control qInput" type=text name="quantity">
											<input class="form-control" type=hidden name="id" value=${current.id }>
											<button type="submit" class="btn btn-default">Add to Cart</button>
											<button type="submit" class="btn btn-default">Add to Wish List</button>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</form>
					</c:when>
				</c:choose>
			</c:if>
		</c:forEach>
	</div>
	<!-- Footer -->
	<div>
	</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="Scripts/jquery-1.11.x.min.js"></script>
<script src="Scripts/js/bootstrap.min.js"></script>
<script src="Scripts/js/jquery.validate.min.js"></script>
<script src="Scripts/js/validation/products.js"></script>
</body>
</html>