<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reviews</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="../css/CustomerReviewsCSS.css">


<!-- Jquery cdn -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- Font by google -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>


	<sql:setDataSource var="UserReview" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/cs3220stu76"
     user="cs3220stu76"  password="abcd"/>

	<sql:query dataSource="${UserReview}" var="result">
	SELECT * from Review;
	</sql:query>

<section id="header">
	<h1 align="center">See What The Customers Are Saying!</h1>
</section>





<div class = "hold">
<div class="container">

	
    <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                    class="icon-bar"></span><span class="icon-bar"></span>
            </button>
            <!--<a class="navbar-brand" href="#">Brand</a>-->
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="../ChickenPages/index"><span class="glyphicon glyphicon-home"></span>Home</a></li>
                <li><a href="../chickenPages/AboutUs"><span class="glyphicon glyphicon-book"></span>About Us</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-list-alt"></span>Farms <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="../Farms/FarmController">Dixon Farm</a></li>
                        <li><a href="../Farms/Farm2Controller">Hesperia Farm</a></li>
                        <li><a href="../Farms/Farm3Controller">Westwick Rooke Farm</a></li>
                        <li class="divider"></li>
                        <li><a href="../Review/CustomerReviews">Reviews</a></li>
                    </ul>
                </li>
                <li class=""><a href="../ContactUs/ContactUsModule"><span class="glyphicon glyphicon-pencil"></span>Contact Us</a></li>
                
            </ul>
            <ul class="nav navbar-nav navbar-right">
                
                
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-cog"></span>Sign Up
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Login/Registration"><!--  <span class="label label-warning">4:00 AM</span> -->Register Now!</a></li>
                        <li><a href="../Login/Signin"><!--  <span class="label label-warning">4:30 AM</span> --> Login</a></li>
                        <!--  <li><a href="#"><span class="label label-warning">5:00 AM</span>Subscriber focused email
                            design</a></li>
                        <li class="divider"></li>-->
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-user disabled"></span>User 
	                    <c:forEach items="${UserList}" var="entry">
						  <tr>
						    <td>${entry.username}</td>
						    
						    
						  </tr>
						</c:forEach>
                    <b class="caret"></b></a> <!-- ADD JSP HERE THAT REFLECTS USER STATUS AND/OR NAME -->
                    <ul class="dropdown-menu">
                        <li><a href="../chickenPages/Profile"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
                        
                        <c:forEach items="${UserList}" var="entry">
						  	<tr>
							<li><a href="../Farms/OrderHistory"><span class="glyphicon glyphicon-time"></span>Order History</a></li>
							</tr>
						</c:forEach>
                        
                        <li class="divider"></li>
                        <li><a href="../chickenPages/Logout"><span class="glyphicon glyphicon-off"></span>Logout</a></li>
                    </ul>
                </li>
                
                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
               
               	<!-- How to add a label next to cart. MAY BE USEFUL WHEN IMPLEMENTING CART!!!!!!!!!!!!
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-envelope"></span>Inbox <span class="label label-info">32</span>
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="label label-warning">4:00 AM</span>Favourites Snippet</a></li>
                        <li><a href="#"><span class="label label-warning">4:30 AM</span>Email marketing</a></li>
                        <li><a href="#"><span class="label label-warning">5:00 AM</span>Subscriber focused email
                            design</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="text-center">View All</a></li>
                    </ul>
                </li>
                 -->
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
</div>
</div>





    <section class="Reviews" id="Reviews">
        <h3 class="text-center">Real Customers, Real Reviews</h3><br>       
        <div class="container">
        
            <div class="row">        
      			  <c:forEach var="row" items="${result.rows}">
	                <div class="col-md-6" >
	                
	                    <blockquote>
	                        
	                            <h2>Name:</h2> ${row.name}<br>
	                            <h2>Farm Name:</h2> ${row.farm}<br>
	                            <h2>Review:</h2> ${row.comment}<br>
	                            <h2>Date:</h2> ${row.date}
	                        
	                    </blockquote>
	                    
	                </div>
					</c:forEach>
            </div>
        </div>
    </section>
</body>
</html>