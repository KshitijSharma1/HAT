<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hawaii Airplane Tyres</title>

<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<link rel="stylesheet" type="text/css" href="resources/css/Style.css">
<link rel="icon" href="<c:url value="/resources/images/icon.ico"/>">

<!--<link rel="stylesheet" href="C:\Users\kcom\Desktop\Project\Bootstrap\css\bootstrap.min.css" >
    <script src="C:\Users\kcom\Desktop\Project\Bootstrap\js\bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">-->



<!-- Angular Js -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>


<!-- JQuery -->
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
footer {
	background: #333;
	color: #eee;
	font-size: 11px;
	padding: 20px;
	width: device-width;
}

ul.unstyled {
	list-style: none;
	padding: 0;
}
</style>
</head>
<body>

<div class="navbar-wrapper">
      

        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index">HAWAII AIRPLANE TYRES</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
               <li class="active"><a href="<c:url value="/index"/>"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                <li><a href="<c:url value="/aboutus"/>"><span class="glyphicon glyphicon-info-sign"></span> About</a></li>
                <li><a href="<c:url value="/contactus"/>"><span class="glyphicon glyphicon-phone"></span> Contact</a></li>
               	
               	
               	 <c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> 
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">ADD <span class="caret"></span></a>  
								<ul class="dropdown-menu">
									
									<li><a href="<c:url value="/admin/addProduct" />">Add
											Product</a></li>
									<li><a href="<c:url value="/addCategory" />">Add
											Category</a></li>
									<li><a href="<c:url value="/addSupplier" />">Add
											Supplier</a></li>
								</ul></li>
					

						
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">VIEW <span class="caret"></span></a>
							<ul class="dropdown-menu">
							
								<li><a href="<c:url value="/suplist" />">View all
										Suppliers</a></li>
								<li><a href="<c:url value="/catlist" />">View all
										Categories</a></li>
							</ul></li>
								</c:if>
                
              </ul>
			  <ul class="nav navbar-nav navbar-right">
			  
			  <c:if test="${pageContext.request.userPrincipal.name != null}">
							<li><a>Welcome:
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>

							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
								<li><a href="<c:url value="/admin"/>">Admin</a></li>
							</c:if>
						</c:if>
						
						<c:if test="${pageContext.request.userPrincipal.name == null}">
				<li><a href="<c:url value="/login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="<c:url value="/SignUpmodal"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			  </c:if>
			  </ul>
			  
            </div>
          </div> 
        </nav>
	  
    </div>
</br>
</br>
</br>