<%-- 
    Document   : listProduct
    Created on : Nov 23, 2020, 11:23:24 AM
    Author     : my
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="include/css-header.jsp" />
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/categories.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/categories_responsive.css"/>"/>
    </head>
    <body>
        <div class="super_container">
            <jsp:include page="include/menu1.jsp" />
            <div class="home">
                <div class="home_container">
                    <div class="home_background" style="background-image:url(${pageContext.request.contextPath}/resources/images/categories.jpg)"></div>
                    <div class="home_content_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="home_content">
                                        <div class="home_title">Smart Phones<span>.</span></div>
                                        <div class="home_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a ultricies metus. Sed nec molestie eros. Sed viverra velit venenatis fermentum luctus.</p></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Products -->

            <div class="products">
                <div class="container">
                    <div class="row">
                        <div class="col">

                            <!-- Product Sorting -->
                            <div class="sorting_bar d-flex flex-md-row flex-column align-items-md-center justify-content-md-start">
                                <div class="results">Showing <span>12</span> results</div>
                                <div class="sorting_container ml-md-auto">
                                    <div class="sorting">
                                        <ul class="item_sorting">
                                            <li>
                                                <span class="sorting_text">Sort by</span>
                                                <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                                <ul>
                                                    <li class="product_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Default</span></li>
                                                    <li class="product_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
                                                    <li class="product_sorting_btn" data-isotope-option='{ "sortBy": "stars" }'><span>Name</span></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">

                            <div class="product_grid">
                                <c:forEach items="${products}" var="p">
                                    <!-- Product -->
                                    
                                        <div class="product">
                                            
                                            <div class="product_image"><img src="<c:url value='/resources/img/category/${p.namePicture}'/>" alt=""></div>
                                            
                                            <div class="product_content">
                                                <div class="product_title" style="text-align: center;"><a href="${pageContext.request.contextPath}/productDetail/${p.id}/${p.category.name}">${p.nameProduct}</a></div>
                                                <div class="product_price" style="text-align: center;">
                                                    <fmt:formatNumber value="${p.price}"
                                                                      pattern="###,###" type="number"/>đ
                                                </div>
                                            </div>
                                        </div>
                                    
                                </c:forEach>


                            </div>
                            <div class="product_pagination">
                                <ul>
                                    <li class="active"><a href="#">01.</a></li>
                                    <li><a href="#">02.</a></li>
                                    <li><a href="#">03.</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Icon Boxes -->

            <div class="icon_boxes">
                <div class="container">
                    <div class="row icon_box_row">

                        <!-- Icon Box -->
                        <div class="col-lg-4 icon_box_col">
                            <div class="icon_box">
                                <div class="icon_box_image"><img src="<c:url value="/resources/images/icon_1.svg"/>" alt=""></div>
                                <div class="icon_box_title">Free Shipping Worldwide</div>
                                <div class="icon_box_text">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a ultricies metus. Sed nec molestie.</p>
                                </div>
                            </div>
                        </div>

                        <!-- Icon Box -->
                        <div class="col-lg-4 icon_box_col">
                            <div class="icon_box">
                                <div class="icon_box_image"><img src="<c:url value="/resources/images/icon_2.svg"/>" alt=""></div>
                                <div class="icon_box_title">Free Returns</div>
                                <div class="icon_box_text">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a ultricies metus. Sed nec molestie.</p>
                                </div>
                            </div>
                        </div>

                        <!-- Icon Box -->
                        <div class="col-lg-4 icon_box_col">
                            <div class="icon_box">
                                <div class="icon_box_image"><img src="<c:url value="/resources/images/icon_3.svg"/>" alt=""></div>
                                <div class="icon_box_title">24h Fast Support</div>
                                <div class="icon_box_text">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a ultricies metus. Sed nec molestie.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Newsletter -->

            <div class="newsletter">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="newsletter_border"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <div class="newsletter_content text-center">
                                <div class="newsletter_title">Subscribe to our newsletter</div>
                                <div class="newsletter_text"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam a ultricies metus. Sed nec molestie eros</p></div>
                                <div class="newsletter_form_container">
                                    <form action="#" id="newsletter_form" class="newsletter_form">
                                        <input type="email" class="newsletter_input" required="required">
                                        <button class="newsletter_button trans_200"><span>Subscribe</span></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="include/footer.jsp" />
        </div>
        <jsp:include page="include/js-page.jsp" />
        <script src="<c:url value="/resources/js/categories.js"/>"></script>
    </body>
</html>
