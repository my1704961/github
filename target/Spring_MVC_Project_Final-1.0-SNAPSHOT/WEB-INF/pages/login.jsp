<%-- 
    Document   : login
    Created on : Jun 20, 2019, 8:17:26 PM
    Author     : AnhLe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="include/css-header.jsp" />
        <link rel="stylesheet" href="<c:url value="resources/1/css/main.css"/>"/>
    </head>
    <body>
        <div class="super_container">
            <jsp:include page="include/menu1.jsp" />
            <!-- Start Banner Area -->
            <section class="banner-area organic-breadcrumb">
                <div class="container">
                    <div class="breadcrumb-banner d-flex flex-wrap align-items-center">
                        <div class="col-first">
                            <!--                            <h1>Shopping Cart</h1>
                                                        <nav class="d-flex align-items-center justify-content-start">
                                                            <a href="index.html">Home<i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                                            <a href="cart.html">Shopping Cart</a>
                                                        </nav>-->
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Banner Area -->

            <!-- Start My Account -->
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="login-form">
                            <h3 class="billing-title text-center">Login</h3>
                            <p class="text-center mt-80 mb-40">Welcome back! Sign in to your account </p>
                            <form action="j_spring_security_check" method="post">
                                <input type="text" name="email" placeholder="Email*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email*'" required class="common-input mt-20">
                                <input type="password" name="password" placeholder="Password*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password*'" required class="common-input mt-20">
                                <button class="view-btn color-2 mt-20 w-100"><span>Login</span></button>
                                <div class="mt-20 d-flex align-items-center justify-content-between">
                                    <div class="d-flex align-items-center"><input type="checkbox" class="pixel-checkbox" id="login-1"><label for="login-1">Remember me</label></div>
                                    <a href="#">Lost your password?</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="register-form">
                            <h3 class="billing-title text-center">Register</h3>
                            <p class="text-center mt-40 mb-30">Create your very own account </p>
                            <<mvc:form action="${pageContext.request.contextPath}/addUser" method="POST" modelAttribute="user">
                                <input type="text" id="fullName" name="fullName" value="${user.fullName}" placeholder="Full name*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Full name*'" required class="common-input mt-20">
                                <input type="email" id="email" name="email" value="${user.email}" placeholder="Email address*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address*'" required class="common-input mt-20">
                                <input type="text" id="phone" name="phone" value="${user.phone}" placeholder="Phone number*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone number*'" required class="common-input mt-20">
                                <input type="password" id="password" name="password" value="${user.password}" placeholder="Password*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password*'" required class="common-input mt-20">
                                <input type="address" id="address" name="address" value="${user.address}" placeholder="Address*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Adrress*'" required class="common-input mt-20">
                                <input type="birthDay" id="birthDay" name="birthDay" value="${user.birthDay}" placeholder="Birthdate*" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Birthdate*'" required class="common-input mt-20">
                                <button class="view-btn color-2 mt-20 w-100"><span>Register</span></button>
                            </mvc:form>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
        <script src="<c:url value="resources/js/main.js"/>"></script> 
        
    </body>
</html>
