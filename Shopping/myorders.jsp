<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="model.Product" %>
<%@ page import="model.Cart" %>
<%@ page import="model.Customer" %>
<%
	//System.out.println("Total :"+request.getAttribute("total"));
	System.out.println("Customer :"+session.getAttribute("customer"));
	System.out.println("total :"+session.getAttribute("total"));
	System.out.println("total :"+session.getAttribute("cart"));
	double total = (Double)session.getAttribute("total");
	Customer customer = (Customer)session.getAttribute("customer");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order History</title>
<link rel="stylesheet" href="Scripts/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="Scripts/css/myorders.css"></link>
<script src="Scripts/js/validation/myorders.js"></script>

<script src="Scripts/jquery-1.11.x.min.js"></script>
<script src="Scripts/js/bootstrap.min.js"></script>
<script src="Scripts/js/jquery.validate.min.js"></script>

</head>
<body>
<!-- Header -->
<div>
	<h1 class="page-header">Order History</h1>
</div>
<!-- Body -->
	<div class="container-fluid" style="width:85%">
		<h3>My Account<br />
	        <small>My Orders</small>
	    </h3>
	    <br />
	    <div class="row">
	        <div class="col-md-3">
	            <nav class="nav-sidebar">
	                <ul class="nav">
	                    <li class="active"><a href="javascript:;">Orders</a></li>
	                    <li><a href="#tab0">Receipt #: 34522679W</a></li>
	                    <li><a href="#tab1">Receipt #: 13453534W</a></li>
	                    <li><a href="#tab2">Receipt #: 24535756W</a></li>
	                    <li><a href="#tab3">Receipt #: 24534664W</a></li>
	                    <li><a href="#tab4">Receipt #: 23523423W</a></li>
	                    <li><a href="#tab5">Receipt #: 34123177W</a></li>
	                    <li><a href="#tab6">Receipt #: 24532477W</a></li>
	                </ul>
	            </nav>
	        </div>
	        <div class="col-md-9">
	        
	        <div id="tab1">
			        	 <div class="row">
				                <div class="col-xs-6 col-sm-6 col-md-6">
				                    <address>
						                        <strong>Mr. John Smith111</strong><br>
						                        <strong>Email : user1@tcs.com</strong><br>
						                        <strong>Phone : 202-555-5456</strong>
						                        <br>123 Cherry Street<br>GA New York<br>USA, Pin : 30606
						            </address>
				                </div>
				                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
				                	<p id="receiptdate">
				                		Wed, 24 Aug 2016 4:35:40 GMT
				                    </p>
				                    <p>
				                        <em>Receipt #: 34522679W</em>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-warning">Invoice</button>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-info">Details</button>
				                    </p>
				                </div>
				            </div>
				            
				            <div class="row">
				                <table class="table table-hover">
				                    <thead>
				                        <tr>
				                            <th>Product</th>
				                            <th>#</th>
				                            <th class="text-center">Price</th>
				                            <th class="text-center">Total</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                    	 <c:choose>
											<c:when test="${cart.size() != 0 }">
												<c:forEach var="current" items="${cart}" varStatus="loop">
													<tr>
							                            <td class="col-md-9"><em>${current.name}</em></td>
							                            <td class="col-md-1" style="text-align: center"> ${current.quantity }  </td>
							                            <td class="col-md-1 text-center">$${current.price }</td>
							                            <td class="col-md-1 text-center">$${current.getTotal()}</td>
							                        </tr>
												</c:forEach>
					                    	</c:when>
					                    </c:choose>	
					                    		<tr>
							                            <td></td><td></td>
							                            <td class="text-right">
								                            <p><strong>Subtotal:</strong></p>
								                            <p><strong>Tax: </strong></p>
								                        </td>
							                            <td class="text-center">
								                            <p><strong>$0.0</strong></p>
								                            <p><strong>$<%=total %></strong></p>
							                            </td>
							                        </tr>
							                        <tr>
							                            <td></td><td></td>
							                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
							                            <td class="text-center text-danger"><h4><strong>$<%=total %></strong></h4></td>
							                        </tr>
				                    </tbody>
				                </table>
				            </div>
						    <div class="order-tracking">
				                	<div class="row">
					        				<div class="col-md-1">
					        					<div><strong>PLACED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DISPATCHED</strong></div>  
					        					<div>
					        							<span class="round-tab" style="background: darkgray;">
							                                <i class="glyphicon glyphicon" style="top: 17px;"></i>
							                            </span>
							                    </div> 
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DELIVERED</strong></div>  
					        					<div>
					        							<span class="round-tab" style="background: darkgray;">
							                                <i class="glyphicon glyphicon" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
				            		</div>
			        		</div>
				    <br></br><br></br><br></br>
				    <hr style="background-color: currentColor;height: 5px;"></hr>  
				    <br></br><br></br>  		
			    </div>	
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
		        <div id="tab1">
			        	 <div class="row">
				                <div class="col-xs-6 col-sm-6 col-md-6">
				                    <address>
						                        <strong>Mr. John Smith</strong><br>
						                        <strong>Email : user1@tcs.com</strong><br>
						                        <strong>Phone : 202-555-5456</strong>
						                        <br>123 Cherry Street<br>GA New York<br>USA, Pin : 30606
						            </address>
				                </div>
				                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
				                	<p>
				                		Wed, 2 Jul 2016 10:05:40 GMT
				                    </p>
				                    <p>
				                        <em>Receipt #: 13453534W</em>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-warning">Invoice</button>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-info">Details</button>
				                    </p>
				                </div>
				            </div>
				            
				            <div class="row">
				                <table class="table table-hover">
				                    <thead>
				                        <tr>
				                            <th>Product</th>
				                            <th>#</th>
				                            <th class="text-center">Price</th>
				                            <th class="text-center">Total</th>
				                        </tr>
				                    </thead>
				                    <tbody>
										<tr>
				                            <td class="col-md-9"><em>HTML Shirt</em></td>
				                            <td class="col-md-1" style="text-align: center"> 1 </td>
				                            <td class="col-md-1 text-center">$15.0</td>
				                            <td class="col-md-1 text-center">$15.0</td>
				                        </tr>
				                       	<tr>
				                            <td></td><td></td>
				                            <td class="text-right">
					                            <p><strong>Subtotal:</strong></p>
					                            <p><strong>Tax: </strong></p>
					                        </td>
				                            <td class="text-center">
					                            <p><strong>$0.0</strong></p>
					                            <p><strong>$15.0</strong></p>
				                            </td>
				                        </tr>
				                        <tr>
				                            <td></td><td></td>
				                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
				                            <td class="text-center text-danger"><h4><strong>$15.0</strong></h4></td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
						    <div class="order-tracking">
				                	<div class="row">
					        				<div class="col-md-1">
					        					<div><strong>PLACED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DISPATCHED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div> 
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DELIVERED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
				            		</div>
			        		</div>
				    <br></br><br></br><br></br>
				    <hr style="background-color: currentColor;height: 5px;"></hr>  
				    <br></br><br></br>  		
			    </div>	
	        	<div id="tab2">
			        	 <div class="row">
				                <div class="col-xs-6 col-sm-6 col-md-6">
				                    <address>
						                        <strong>Mr. John Smith</strong><br>
						                        <strong>Email : user1@tcs.com</strong><br>
						                        <strong>Phone : 202-555-5456</strong>
						                        <br>123 Cherry Street<br>GA New York<br>USA, Pin : 30606
						            </address>
				                </div>
				                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
				                	<p>
				                		Wed, 11 May 2016 7:05:40 GMT
				                    </p>
				                    <p>
				                        <em>Receipt #: 24535756W</em>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-warning">Invoice</button>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-info">Details</button>
				                    </p>
				                </div>
				            </div>
				            
				            <div class="row">
				                <table class="table table-hover">
				                    <thead>
				                        <tr>
				                            <th>Product</th>
				                            <th>#</th>
				                            <th class="text-center">Price</th>
				                            <th class="text-center">Total</th>
				                        </tr>
				                    </thead>
				                    <tbody>
										<tr>
				                            <td class="col-md-9"><em>HTML Shirt</em></td>
				                            <td class="col-md-1" style="text-align: center"> 1 </td>
				                            <td class="col-md-1 text-center">$15.0</td>
				                            <td class="col-md-1 text-center">$15.0</td>
				                        </tr>
				                        <tr>
				                            <td class="col-md-9"><em>Glasses</em></td>
				                            <td class="col-md-1" style="text-align: center"> 2 </td>
				                            <td class="col-md-1 text-center">$7.5</td>
				                            <td class="col-md-1 text-center">$15.0</td>
				                        </tr>
				                        <tr>
				                            <td class="col-md-9"><em>Soccerball</em></td>
				                            <td class="col-md-1" style="text-align: center"> 1 </td>
				                            <td class="col-md-1 text-center">$20.0</td>
				                            <td class="col-md-1 text-center">$20.0</td>
				                        </tr>
				                       	<tr>
				                            <td></td><td></td>
				                            <td class="text-right">
					                            <p><strong>Subtotal:</strong></p>
					                            <p><strong>Tax: </strong></p>
					                        </td>
				                            <td class="text-center">
					                            <p><strong>$0.0</strong></p>
					                            <p><strong>$50.0</strong></p>
				                            </td>
				                        </tr>
				                        <tr>
				                            <td></td><td></td>
				                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
				                            <td class="text-center text-danger"><h4><strong>$50.0</strong></h4></td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
						    <div class="order-tracking">
				                	<div class="row">
					        				<div class="col-md-1">
					        					<div><strong>PLACED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DISPATCHED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div> 
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DELIVERED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
				            		</div>
			        		</div>
			        		<br></br><br></br><br></br>
						    <hr style="background-color: currentColor;height: 5px;"></hr>  
						    <br></br><br></br>  
	        	</div>
	        	<div id="tab3">
		        	 <div class="row">
			                <div class="col-xs-6 col-sm-6 col-md-6">
			                    <address>
					                        <strong>Mr. John Smith</strong><br>
					                        <strong>Email : user1@tcs.com</strong><br>
					                        <strong>Phone : 202-555-5456</strong>
					                        <br>123 Cherry Street<br>GA New York<br>USA, Pin : 30606
					            </address>
			                </div>
			                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
			                	<p>
			                		Wed, 16 Mar 2016 19:07:28 GMT
			                    </p>
			                    <p>
			                        <em>Receipt #: 24534664W</em>
			                    </p>
			                    <p>
			                        <button type="button" class="btn btn-warning">Invoice</button>
			                    </p>
			                    <p>
				                        <button type="button" class="btn btn-info">Details</button>
				                </p>
			                </div>
			            </div>
			            
			            <div class="row">
			                <table class="table table-hover">
			                    <thead>
			                        <tr>
			                            <th>Product</th>
			                            <th>#</th>
			                            <th class="text-center">Price</th>
			                            <th class="text-center">Total</th>
			                        </tr>
			                    </thead>
			                    <tbody>
									<tr>
			                            <td class="col-md-9"><em>Banana</em></td>
			                            <td class="col-md-1" style="text-align: center"> 10 </td>
			                            <td class="col-md-1 text-center">$0.5</td>
			                            <td class="col-md-1 text-center">$5.0</td>
			                        </tr>
			                       	<tr>
			                            <td></td><td></td>
			                            <td class="text-right">
				                            <p><strong>Subtotal:</strong></p>
				                            <p><strong>Tax: </strong></p>
				                        </td>
			                            <td class="text-center">
				                            <p><strong>$0.0</strong></p>
				                            <p><strong>$5.0</strong></p>
			                            </td>
			                        </tr>
			                        <tr>
			                            <td></td><td></td>
			                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
			                            <td class="text-center text-danger"><h4><strong>$5.0</strong></h4></td>
			                        </tr>
			                    </tbody>
			                </table>
			            </div>
					    <div class="order-tracking">
				                	<div class="row">
					        				<div class="col-md-1">
					        					<div><strong>PLACED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DISPATCHED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div> 
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DELIVERED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
				            		</div>
		        		</div>
	        			<br></br><br></br><br></br>
					    <hr style="background-color: currentColor;height: 5px;"></hr>  
					    <br></br><br></br>  
	        	</div>
	        	<div id="tab4">
		        	 <div class="row">
			                <div class="col-xs-6 col-sm-6 col-md-6">
			                    <address>
					                        <strong>Mr. John Smith</strong><br>
					                        <strong>Email : user1@tcs.com</strong><br>
					                        <strong>Phone : 202-555-5456</strong>
					                        <br>123 Cherry Street<br>GA New York<br>USA, Pin : 30606
					            </address>
			                </div>
			                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
			                	<p>
			                		Wed, 10 Feb 2016 18:05:40 GMT
			                    </p>
			                    <p>
			                        <em>Receipt #: 23523423W</em>
			                    </p>
			                    <p>
			                        <button type="button" class="btn btn-warning">Invoice</button>
			                    </p>
			                    <p>
				                        <button type="button" class="btn btn-info">Details</button>
				                </p>
			                </div>
			            </div>
			            
			            <div class="row">
			                <table class="table table-hover">
			                    <thead>
			                        <tr>
			                            <th>Product</th>
			                            <th>#</th>
			                            <th class="text-center">Price</th>
			                            <th class="text-center">Total</th>
			                        </tr>
			                    </thead>
			                    <tbody>
									<tr>
			                            <td class="col-md-9"><em>HTML Shirt</em></td>
			                            <td class="col-md-1" style="text-align: center"> 1 </td>
			                            <td class="col-md-1 text-center">$15.0</td>
			                            <td class="col-md-1 text-center">$15.0</td>
			                        </tr>
			                        <tr>
			                            <td class="col-md-9"><em>Soccerball</em></td>
			                            <td class="col-md-1" style="text-align: center"> 1 </td>
			                            <td class="col-md-1 text-center">$20.0</td>
			                            <td class="col-md-1 text-center">$20.0</td>
			                        </tr>
			                       	<tr>
			                            <td></td><td></td>
			                            <td class="text-right">
				                            <p><strong>Subtotal:</strong></p>
				                            <p><strong>Tax: </strong></p>
				                        </td>
			                            <td class="text-center">
				                            <p><strong>$0.0</strong></p>
				                            <p><strong>$35.0</strong></p>
			                            </td>
			                        </tr>
			                        <tr>
			                            <td></td><td></td>
			                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
			                            <td class="text-center text-danger"><h4><strong>$35.0</strong></h4></td>
			                        </tr>
			                    </tbody>
			                </table>
			            </div>
				    	<div class="order-tracking">
			                	<div class="row">
				        				<div class="col-md-1">
				        					<div><strong>PLACED</strong></div>  
				        					<div>
				        							<span class="round-tab">
						                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
						                            </span>
						                    </div>    
				        				</div>
				        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
				        				<div class="col-md-1">
				        					<div><strong>DISPATCHED</strong></div>  
				        					<div>
				        							<span class="round-tab">
						                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
						                            </span>
						                    </div> 
				        				</div>
				        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
				        				<div class="col-md-1">
				        					<div><strong>DELIVERED</strong></div>  
				        					<div>
				        							<span class="round-tab">
						                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
						                            </span>
						                    </div>    
				        				</div>
			            		</div>
		        		</div>
		        		<br></br><br></br><br></br>
					    <hr style="background-color: currentColor;height: 5px;"></hr>  
					    <br></br><br></br>  
		        	</div>
	        	<div id="tab5">
			        	 <div class="row">
				                <div class="col-xs-6 col-sm-6 col-md-6">
				                    <address>
						                        <strong>Mr. John Smith</strong><br>
						                        <strong>Email : user1@tcs.com</strong><br>
						                        <strong>Phone : 202-555-5456</strong>
						                        <br>123 Cherry Street<br>GA New York<br>USA, Pin : 30606
						            </address>
				                </div>
				                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
				                	<p>
				                		Wed, 6 Jan 2016 15:05:40 GMT
				                    </p>
				                    <p>
				                        <em>Receipt #: 34123177W</em>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-warning">Invoice</button>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-info">Details</button>
				                    </p>
				                </div>
				            </div>
				            
				            <div class="row">
				                <table class="table table-hover">
				                    <thead>
				                        <tr>
				                            <th>Product</th>
				                            <th>#</th>
				                            <th class="text-center">Price</th>
				                            <th class="text-center">Total</th>
				                        </tr>
				                    </thead>
				                    <tbody>
										<tr>
				                            <td class="col-md-9"><em>iPhone 6</em></td>
				                            <td class="col-md-1" style="text-align: center"> 1 </td>
				                            <td class="col-md-1 text-center">$750.0</td>
				                            <td class="col-md-1 text-center">$750.0</td>
				                        </tr>
				                       	<tr>
				                            <td></td><td></td>
				                            <td class="text-right">
					                            <p><strong>Subtotal:</strong></p>
					                            <p><strong>Tax: </strong></p>
					                        </td>
				                            <td class="text-center">
					                            <p><strong>$0.0</strong></p>
					                            <p><strong>$750.0</strong></p>
				                            </td>
				                        </tr>
				                        <tr>
				                            <td></td><td></td>
				                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
				                            <td class="text-center text-danger"><h4><strong>$750.0</strong></h4></td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
						    <div class="order-tracking">
				                	<div class="row">
					        				<div class="col-md-1">
					        					<div><strong>PLACED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DISPATCHED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div> 
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DELIVERED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
				            		</div>
			        		</div>
		        		<br></br><br></br><br></br>
					    <hr style="background-color: currentColor;height: 5px;"></hr>  
					    <br></br><br></br>  
		        	</div>
		        <div id="tab6">
			        	 <div class="row">
				                <div class="col-xs-6 col-sm-6 col-md-6">
				                    <address>
						                        <strong>Mr. John Smith</strong><br>
						                        <strong>Email : user1@tcs.com</strong><br>
						                        <strong>Phone : 202-555-5456</strong>
						                        <br>123 Cherry Street<br>GA New York<br>USA, Pin : 30606
						            </address>
				                </div>
				                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
				                	<p>
				                		Wed, 7 Oct 2015 10:05:40 GMT
				                    </p>
				                    <p>
				                        <em>Receipt #: 24532477W</em>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-warning">Invoice</button>
				                    </p>
				                    <p>
				                        <button type="button" class="btn btn-info">Details</button>
				                    </p>
				                </div>
				            </div>
				            
				            <div class="row">
				                <table class="table table-hover">
				                    <thead>
				                        <tr>
				                            <th>Product</th>
				                            <th>#</th>
				                            <th class="text-center">Price</th>
				                            <th class="text-center">Total</th>
				                        </tr>
				                    </thead>
				                    <tbody>
										<tr>
				                            <td class="col-md-9"><em>Painting</em></td>
				                            <td class="col-md-1" style="text-align: center"> 1 </td>
				                            <td class="col-md-1 text-center">$50.0</td>
				                            <td class="col-md-1 text-center">$50.0</td>
				                        </tr>
				                       	<tr>
				                            <td></td><td></td>
				                            <td class="text-right">
					                            <p><strong>Subtotal:</strong></p>
					                            <p><strong>Tax: </strong></p>
					                        </td>
				                            <td class="text-center">
					                            <p><strong>$0.0</strong></p>
					                            <p><strong>$50.0</strong></p>
				                            </td>
				                        </tr>
				                        <tr>
				                            <td></td><td></td>
				                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
				                            <td class="text-center text-danger"><h4><strong>$50.0</strong></h4></td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
						    <div class="order-tracking">
				                	<div class="row">
					        				<div class="col-md-1">
					        					<div><strong>PLACED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DISPATCHED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div> 
					        				</div>
					        				<div class="col-md-4"><hr style="background-color: aqua;height: 5px;margin-top: 47px;"></hr> </div>
					        				<div class="col-md-1">
					        					<div><strong>DELIVERED</strong></div>  
					        					<div>
					        							<span class="round-tab">
							                                <i class="glyphicon glyphicon glyphicon-ok" style="top: 17px;"></i>
							                            </span>
							                    </div>    
					        				</div>
				            		</div>
			        		</div>
		        		<br></br><br></br><br></br>
					    <hr style="background-color: currentColor;height: 5px;"></hr>  
					    <br></br><br></br>  
			        </div>
		        </div>
			</div>
</body>
</html>