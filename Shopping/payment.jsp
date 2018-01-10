<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="model.Product" %>
<%@ page import="model.Cart" %>
<%@ page import="model.Customer" %>
<%
	double total = (Double)session.getAttribute("total");
	Customer customer = (Customer)session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>

<script type='text/javascript' src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- 
<link rel="stylesheet" href="Scripts/css/bootstrap.min.css"></link>
<script src="Scripts/jquery-1.11.x.min.js"></script>
<script src="Scripts/js/bootstrap.min.js"></script>
<script src="Scripts/js/jquery.validate.min.js"></script> 
-->

<link rel="stylesheet" href="Scripts/css/payment.css"></link>
<script src="Scripts/js/validation/payment.js"></script>
</head>

<body>
<div id="maindiv" class="container wrapper">
            <div class="row cart-head">
                <div class="container">
                <div class="row">
                    <p></p>
                </div>
                <div class="row">
                    <div style="display: table; margin: auto;">
                        <span class="step step_complete"> <a href="#" class="check-bc">Cart</a> <span class="step_line step_complete"> </span> <span class="step_line backline"> </span> </span>
                        <span class="step step_complete"> <a href="#" class="check-bc">Checkout</a> <span class="step_line "> </span> <span class="step_line step_complete"> </span> </span>
                       <!--  <span class="step_thankyou check-bc step_complete">Thank you</span> -->
                    </div>
                </div>
                <div class="row">
                    <p></p>
                </div>
                </div>
            </div>    
            <div class="row cart-body">
                <form class="form-horizontal" method="post" action="">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                    <!--REVIEW ORDER-->
                    <div class="panel panel-info">
                    
					<div class="panel-heading"><span><i class="glyphicon glyphicon-lock"></i></span> Secure Payment</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12"><strong>Card Type:</strong></div>
                                <div class="col-md-12">
                                    <select id="CreditCardType" name="CreditCardType" class="form-control">
                                        <option value="5">Visa</option>
                                        <option value="6" selected="selected">MasterCard</option>
                                        <option value="7">American Express</option>
                                        <option value="8">Discover</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Credit Card Number:</strong></div>
                                <div class="col-md-12"><input type="text" class="form-control" name="car_number" value="3214564213136456" /></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Card CVV:</strong></div>
                                <div class="col-md-12"><input type="text" class="form-control" name="car_code" value="***" /></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <strong>Expiration Date</strong>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <select class="form-control" name="">
                                        <option value="">Month</option>
                                        <option value="01">01</option>
                                        <option value="02" selected="selected">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                </select>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <select class="form-control" name="">
                                        <option value="">Year</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018" selected="selected">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <span>Pay secure using your credit card.</span>
                                </div>
                                <div class="col-md-12">
                                    <ul class="cards">
                                        <li class="visa hand">Visa</li>
                                        <li class="mastercard hand">MasterCard</li>
                                        <li class="amex hand">Amex</li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <button type="button" id="placeorder" class="btn btn-primary btn-submit-fix">Place Order</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--REVIEW ORDER END-->
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <h4>Shipping Address</h4>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Country:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="country" value="<%=customer.getCountry()%>" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-xs-12">
                                    <strong>First Name:</strong>
                                    <input type="text" name="first_name" class="form-control" value="<%=customer.getfName()%>" />
                                </div>
                                <div class="span1"></div>
                                <div class="col-md-6 col-xs-12">
                                    <strong>Last Name:</strong>
                                    <input type="text" name="last_name" class="form-control" value="<%=customer.getlName()%>" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Address:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" value="<%=customer.getAddress()%>" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>City:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" value="<%=customer.getCity()%>" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>State:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="state" class="form-control" value="<%=customer.getState()%>" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Zip / Postal Code:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="zip_code" class="form-control" value="<%=customer.getZip()%>" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Phone Number:</strong></div>
                                <div class="col-md-12"><input type="text" name="phone_number" class="form-control" value="202-555-5456" /></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Email Address:</strong></div>
                                <div class="col-md-12"><input type="text" name="email_address" class="form-control" value="<%=customer.getEmail()%>" /></div>
                            </div>
                        </div>
                    </div>
                    <!--SHIPPING METHOD END-->
                    <!--CREDIT CART PAYMENT-->
                    <!--CREDIT CART PAYMENT END-->
                </div>
                </form>
            </div>
    </div>


	<div id="receiptDiv">
			</br></br></br></br>
			<div class="row">
				<div class="col-md-8"></div>
				<div class="col-md-4" style="text-align: left;">
					<a class="btn btn-default btn-md" style="background-color:yellow;" role="button" href="orders">
						<span class="glyphicon glyphicon glyphicon-briefcase"></span> My Orders
						<span class="badge">7</span>
					</a>
				</div>
			</div>	
			</br>
			<div class="row">
		        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
		            <div class="row">
		                <div class="col-xs-6 col-sm-6 col-md-6">
		                    <address>
		                        <strong>TCS</strong>
		                        <br>
		                        Phase 3, Hinjawadi Rajiv Gandhi Infotech Park
		                        <br>
		                        Hinjawadi, Pune
		                        <br>
		                        Pune, Maharashtra 411057
		                    </address>
		                </div>
		                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
		                	<p id="receiptdate">
		                    </p>
		                    <p>
		                        <em>Receipt #: 34522679W</em>
		                    </p>
		                </div>
		            </div>
		            <div class="row">
		                <div class="text-center">
		                    <h1>Receipt</h1>
		                </div>
		                <div class="row">
				            <div class="col-xs-6 col-sm-6 col-md-6">
				             		<address>
				                        <strong>Mr.<%=" "+customer.getfName()+" "+ customer.getlName()%></strong>
				                        <br>
				                        <%=customer.getAddress()%>
				                        <br>
				                        <%=customer.getState()+" "+ customer.getCity()%>
				                        <br>
				                        <%=customer.getCountry()+", Pin :"+ customer.getZip()%>
				                    </address>
				            </div>
				        </div>
		                
		                </span>
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
				                            <td class="col-md-9"><em>${current.name}</em></h4></td>
				                            <td class="col-md-1" style="text-align: center"> ${current.quantity } </td>
				                            <td class="col-md-1 text-center">$${current.price }</td>
				                            <td class="col-md-1 text-center">$${current.getTotal()}</td>
				                        </tr>
										
			                    		</c:forEach>
			                    	</c:when>
			                    	<c:otherwise>
										<div class="col-md-4"></div>
										<div class="col-md-4">
											<h2>You currently have no products!</h2>
										</div>
										<div class="col-md-4"></div>
									</c:otherwise>
			                    </c:choose>	
		                        
		                        <tr>
		                            <td>   </td>
		                            <td>   </td>
		                            <td class="text-right">
		                            <p>
		                                <strong>Subtotal: </strong>
		                            </p>
		                            <p>
		                                <strong>Tax: </strong>
		                            </p></td>
		                            <td class="text-center">
		                            <p>
		                                <strong>$<%=total %></strong>
		                            </p>
		                            <p>
		                                <strong>$<%=total %></strong>
		                            </p></td>
		                        </tr>
		                        <tr>
		                            <td>   </td>
		                            <td>   </td>
		                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
		                            <td class="text-center text-danger"><h4><strong>$<%=total %></strong></h4></td>
		                        </tr>
		                    </tbody>
		                </table>
		                <button type="button" class="btn btn-success btn-lg btn-block">
		                    !! Thank you for Shopping with us !!   
		                    <span class="glyphicon"></span>
	                	</button>
		            </div>
		        </div>
		    </div>
	</div>
	

</body>
</html>