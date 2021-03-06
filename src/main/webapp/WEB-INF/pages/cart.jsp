<%-- 
    Document   : cart
    Created on : Nov 23, 2020, 10:57:30 AM
    Author     : my
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="include/css-header.jsp" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/cart.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/cart_responsive.css"/>"/>
    </head>
    <body>
<<<<<<< HEAD
        <jsp:include page="include/menu1.jsp" />

        <div class="home">
            <div class="home_container">
                <div class="home_background" style="background-image:url(${pageContext.request.contextPath}/resources/images/cart.jpg)"></div>
                <div class="home_content_container">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="home_content">
                                    <div class="breadcrumbs">
                                        <ul>
                                            <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                                            <li><a href="${pageContext.request.contextPath}/listCategory">Categories</a></li>
                                            <li>Shopping Cart</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Cart Info -->

        <div class="cart_info">
            <div class="container">
                
                <div class="row cart_items_row">
                    <div class="col">

                        <!-- Cart Item -->
                        <div class="cart_item d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
                            <!-- Name -->
                            <div class="cart_item_product d-flex flex-row align-items-center justify-content-start">
                                <div class="cart_item_image">
                                    <div><img src="<c:url value="/resources/images/cart_1.jpg"/>" alt=""></div>
                                </div>
                                <div class="cart_item_name_container">
                                    <div class="cart_item_name"><a href="#">Smart Phone Deluxe Edition</a></div>
                                    <div class="cart_item_edit"><a href="#">Edit Product</a></div>
                                </div>
                            </div>
                            <!-- Price -->
                            <div class="cart_item_price">$790.90</div>
                            <!-- Quantity -->
                            <div class="cart_item_quantity">
                                <div class="product_quantity_container">
                                    <div class="product_quantity clearfix">
                                        <span>Qty</span>
                                        <input id="quantity_input" type="text" pattern="[0-9]*" value="1">
                                        <div class="quantity_buttons">
                                            <div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
                                            <div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Total -->
                            <div class="cart_item_total">$790.90</div>
                        </div>

                    </div>
                </div>
                <div class="row row_cart_buttons">
                    <div class="col">
                        <div class="cart_buttons d-flex flex-lg-row flex-column align-items-start justify-content-start">
                            <div class="button continue_shopping_button"><a href="#">Continue shopping</a></div>
                            <div class="cart_buttons_right ml-lg-auto">
                                <div class="button clear_cart_button"><a href="#">Clear cart</a></div>
                                <div class="button update_cart_button"><a href="#">Update cart</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row_extra">
                    <div class="col-lg-4">

                        <!-- Delivery -->
                        <div class="delivery">
                            <div class="section_title">Shipping method</div>
                            <div class="section_subtitle">Select the one you want</div>
                            <div class="delivery_options">
                                <label class="delivery_option clearfix">Next day delivery
                                    <input type="radio" name="radio">
                                    <span class="checkmark"></span>
                                    <span class="delivery_price">$4.99</span>
                                </label>
                                <label class="delivery_option clearfix">Standard delivery
                                    <input type="radio" name="radio">
                                    <span class="checkmark"></span>
                                    <span class="delivery_price">$1.99</span>
                                </label>
                                <label class="delivery_option clearfix">Personal pickup
                                    <input type="radio" checked="checked" name="radio">
                                    <span class="checkmark"></span>
                                    <span class="delivery_price">Free</span>
                                </label>
                            </div>
                        </div>

                        <!-- Coupon Code -->
                        <div class="coupon">
                            <div class="section_title">Coupon code</div>
                            <div class="section_subtitle">Enter your coupon code</div>
                            <div class="coupon_form_container">
                                <form action="#" id="coupon_form" class="coupon_form">
                                    <input type="text" class="coupon_input" required="required">
                                    <button class="button coupon_button"><span>Apply</span></button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 offset-lg-2">
                        <div class="cart_total">
                            <div class="section_title">Cart total</div>
                            <div class="section_subtitle">Final info</div>
                            <div class="cart_total_container">
                                <ul>
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="cart_total_title">Subtotal</div>
                                        <div class="cart_total_value ml-auto">$790.90</div>
                                    </li>
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="cart_total_title">Shipping</div>
                                        <div class="cart_total_value ml-auto">Free</div>
                                    </li>
                                    <li class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="cart_total_title">Total</div>
                                        <div class="cart_total_value ml-auto">$790.90</div>
                                    </li>
                                </ul>
                            </div>
                            <div class="button checkout_button"><a href="#">Proceed to checkout</a></div>
                        </div>
                    </div>
                </div>
            </div>		
        </div>
        <jsp:include page="include/footer.jsp" />
        
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/styles/bootstrap4/popper.js"/>"></script>
<script src="<c:url value="/resources/styles/bootstrap4/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/TweenMax.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/TimelineMax.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/scrollmagic/ScrollMagic.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/animation.gsap.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/greensock/ScrollToPlugin.min.js"/>"></script>
<script src="<c:url value="/resources/plugins/easing/easing.js"/>"></script>
<script src="<c:url value="/resources/plugins/parallax-js-master/parallax.min.js"/>"></script>
        <script src="<c:url value="/resources/js/cart.js"/>"></script>
        <jsp:include page="include/js-page.jsp" />
=======
      
>>>>>>> c38c236f503e92ca1d9c0175949cac35bc31bd86
    </body>
</html>
