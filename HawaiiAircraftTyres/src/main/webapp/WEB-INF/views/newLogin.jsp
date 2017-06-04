<%@include file="./templates/Header.jsp"%>


<div class="hero-slide">
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1>
                    <b>Login</b> </h1>
            </div>
        </div>
    </div>
</div>
</div>

<div class="container-wrapper"> 
<div class="container">
<div class="well" >
<c:if test="${not empty msg}">
	<div class="msg">${msg}</div>
	</c:if > <!--j_spring_security_check"--> 
	
		<form name="loginForm" action="<c:url value= "/j_spring_security_check"/>" method="post">

	<c:if test="${not empty error}">
		<div class ="error"style="color: #ff0000;">${error}</div>
		</c:if> 
		<div class="form-group">
		 <label for="username"><span class="glyphicon glyphicon-user"></span> User:
		</label> 
		<input type ="text" id="username" name="username" class="form-control" placeholder="Enter your UserName"/>
		</div>
		<div class="form-group"> <label for="password"><span class="glyphicon glyphicon-eye-open"></span> Password:</label>
		<input type ="password" id="password" name="password"
			class="form-control" placeholder="Enter your Password"/>
		</div>
		<input type ="submit" value="Submit" class="btn btn-primary">
		<input type ="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		
		</div>
		</div>
		</div>

		<%@include file="./templates/Footer.jsp"%>