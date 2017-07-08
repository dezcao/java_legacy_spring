<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		
		<c:if test="${not empty param.error }">
		<h2>${SPRING_SECURITY_LAST_EXCEPTION.message }</h2>
		</c:if>
		
	  <c:url var="loginUrl" value="/login" />
      
      <form:form class="form-signin" id="loginForm" action="${loginUrl }" method="post">
		 
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		 
        <h2 class="form-signin-heading">Please sign in</h2>
        <!-- 
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
         -->
        
        <label for="inputName" class="sr-only">Email address</label>
        <input type="text" id="inputName" class="form-control" placeholder="Name" required="required" autofocus="autofocus" name="username">
        
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required" name="password">
        
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <a href="<c:url value="/signUp"/>">(회원이 아니신가요?) Sign up</a>
      </form:form>

    </div> <!-- /container -->
    
    <div id="google_id_login" style="text-align:center">
    	<a href="${google_url}">
    	<img alt="google login" src="https://raw.githubusercontent.com/googleplus/gplus-quickstart-java/master/mvn/static/signin_button.png" style=""/>
    	</a>
    </div>
    
	<div style="text-align:center">
	<c:if test="${not empty error}">
		<div class="error">${error}</div>
	</c:if>
	<c:if test="${not empty msg}">
		<div class="msg">${msg}</div>
	</c:if>
	</div>
</body>
</html>