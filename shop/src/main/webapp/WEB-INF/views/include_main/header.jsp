            <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>            
				
            <h3><c:out value="${sessionScope.admin}"/></h3>
            <h3><c:out value="${pageContext.request.contextPath}"/></h3>
            <style>
            	.header-site-icon{padding-top:22px;}
            	.login-join{margin-top:21px; text-align:right; color:gray;}
            	.lg-btn{font-size:13px;}
            	.lg-btn:hover{opacity:0.5; transition:.3s;}
            	.header-cart button span{background-color:black;}
            	.login-register-tab-list.nav a.active h4{color:silver;}
            	.login-form button{background-color:black} 	
            	.main-menu ul li{padding:0 13px;}
            	.main-menu ul li:hover > a,
            	.banner-content-style2 h2 > span,
            	.product-tab-list a.active h4,
            	.slider-content h2 span{color:#389bb1;}
            	
            	.banner-border::before{border:1px solid #389bb1;}
            	.banner-border-2::before{border:1px solid #389bb1;}
            	#scrollUp{background:#389bb1 none repeat scroll 0 0}
            	.main-best{margin-bottom:35px;}
            	.main-menu nav ul li ul > li > a::before{background:#389bb1 none repeat scroll 0 0;}
            	.same-style button:hover, .same-style a:hover{color:#389bb1;}
            </style>
            <!-- header start -->
            <header>
                <div class="header-area transparent-bar">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-sm-5 col-5">
                                <div class="language-currency">
                                    <div class="language">
                                        <select class="select-header orderby">
                                            <option value="">ENGLISH</option>
                                            <option value="">BANGLA </option>
                                         <c:if test="${sessionScope.admin eq 'admin' }">
												<option value="">ADMIN</option>                                         
                                         </c:if>    
                                          <c:if test="${empty sessionScope.admin  }">                                        
                                            <option value="">HINDI</option>
                                            </c:if>
                                        </select>
                                    </div>
                                    <div class="currency">
                                        <select class="select-header orderby">
                                            <option value="">USD</option>                                            
                                            <option value="">US </option>
                                            <option value="">EURO</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="sticky-logo">
                                    <a href="index.html"><img src="assets/img/logo/logo.png" style="width:72px" alt="" /></a>
                                </div>
                                <div class="logo-small-device">
                                    <a href="index.html"><img alt="" src="assets/img/logo/logo.png"></a>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-8 d-none d-md-block">
                                <div class="logo-menu-wrapper text-center">
                                    <div class="logo">
                                        <a href="/GH"><img src="assets/img/logo/logo.png" alt="" /></a>
                                    </div>
                                    <div class="main-menu">
                                        <nav>
                                            <ul>
                                                <li><a href="#">BEST</a>
                                                </li>
                                                <li><a href="#">TOP<i class="ion-ios-arrow-down"></i></a>
                                                    <ul>
                                                        <li><a href="#">반팔</a></li>
                                                        <li><a href="#">긴팔</a></li>
                                                        <li><a href="#">맨투맨/후드</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">OUTER<i class="ion-ios-arrow-down"></i></a>
                                                    <ul>
                                                        <li><a href="#">자켓</a></li>
                                                        <li><a href="#">코트/블레이져</a></li>
                                                        <li><a href="#">가디건/조끼</a></li>
                                                        <li><a href="#">패딩</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">PANTS<i class="ion-ios-arrow-down"></i></a>
                                                    <ul>
                                                        <li><a href="#">반바지</a></li>
                                                        <li><a href="#">슬랙스</a></li>
                                                        <li><a href="#">청바지</a></li>
                                                        <li><a href="#">면바지</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">SHOES<i class="ion-ios-arrow-down"></i></a>
                                                    <ul>
                                                        <li><a href="#">운동화/스니커즈</a></li>
                                                        <li><a href="#">구두/로퍼</a></li>
                                                        <li><a href="#">샌들/슬리퍼</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">공지사항 & 리뷰<i class="ion-ios-arrow-down"></i></a>
                                                    <ul>
                                                        <li><a href="#">공지사항</a></li>
                                                        <li><a href="#">QnA</a></li>
                                                        <li><a href="#">리뷰</a></li>
                                                    </ul>
                                                </li>
                                                <!-- <li><a href="contact.html">contact us</a></li> -->                                                                                               
                                                 <c:if test="${sessionScope.admin eq 'admin' }">												
												<li><a href="#">관리자모드</a>
                                                <ul>
                                                    <li><a href="shopAdd.admin">상품등록</a></li>
                                                    <li><a href="shopList.admin">상품리스트</a></li>
                                                    <li><a href="selectAll.admin">회원관리</a></li>
                                                </ul>
                                            </li>                                         
                                         		</c:if>    
                                          <c:if test="${empty sessionScope.admin  }">                                        
                                            <li><a href="contact.html">contact us</a></li>
                                            </c:if>
                                                
                                                
                                                
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-7 col-7">
                            	<div class="login-join">
                            		<c:if test="${empty id}">
                            			<a href="login" class="lg-btn">로그인</a> / <a href="join" class="lg-btn">회원가입</a>
                            		</c:if>
                            		<c:if test="${!empty id}">
                            			<span>${id}님 환영합니다.</span>
                            			<a href="#">로그아웃</a>
                            		</c:if>
                            	</div>
                                <div class="header-site-icon">
                                    <div class="header-search same-style">
                                        <button class="sidebar-trigger-search">
                                            <span class="ti-search"></span>
                                        </button>
                                    </div>
                                    <div class="header-login same-style">
                                        <a href="">
                                            <span class="ti-user"></span>
                                        </a>
                                    </div>
                                    <div class="header-cart same-style">
                                        <button class="sidebar-trigger">
                                            <i class="ti-shopping-cart"></i>
                                            <span class="count-style">00</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="mobile-menu-area col-12">
                                <div class="mobile-menu">
                                    <nav id="mobile-menu-active">
                                        <ul class="menu-overflow">
                                            <li><a href="#">HOME</a>
                                                <ul>
                                                    <li><a href="index.html">home version 1</a></li>
                                                    <li><a href="index-2.html">home version 2</a></li>
                                                    <li><a href="index-3.html">home version 3</a></li>
                                                    <li><a href="index-4.html">home version 4</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">pages</a>
                                                <ul>
                                                    <li><a href="about-us.html">about us</a></li>
                                                    <li><a href="cart.html">cart page</a></li>
                                                    <li><a href="checkout.html">checkout</a></li>
                                                    <li><a href="wishlist.html">wishlist</a></li>
                                                    <li><a href="login-register.html">login</a></li>
                                                    <li><a href="contact.html">contact</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">shop</a>
                                                <ul>
                                                    <li><a href="#">shop grid</a>
                                                        <ul>
                                                            <li><a href="shop-grid-2-col.html"> grid 2 column</a></li>
                                                            <li><a href="shop-grid-3-col.html"> grid 3 column</a></li>
                                                            <li><a href="shop.html"> grid 4 column</a></li>
                                                            <li><a href="shop-grid-6-col.html"> grid 6 column</a></li>
                                                            <li><a href="shop-grid-box.html"> grid box style</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">shop list</a>
                                                        <ul>
                                                            <li><a href="shop-list.html"> list 1 column</a></li>
                                                            <li><a href="shop-list-2-col.html"> list 2 column</a></li>
                                                            <li><a href="shop-list-3-col.html"> list 3 column</a></li>
                                                            <li><a href="shop-list-box.html"> list box style</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="shop-grid-view-5-col.html">product details</a>
                                                        <ul>
                                                            <li><a href="product-details.html">tab style</a></li>
                                                            <li><a href="product-details-sticky.html">sticky style</a></li>
                                                            <li><a href="product-details-gallery.html">gallery style</a></li>
                                                            <li><a href="product-details-fixed-img.html">fixed image style</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="#">BLOG</a>
                                                <ul>
                                                    <li><a href="blog-masonry.html">Blog Masonry</a></li>
                                                    <li><a href="#">Blog Standard</a>
                                                        <ul>
                                                            <li><a href="blog-left-sidebar.html">left sidebar</a></li>
                                                            <li><a href="blog-right-sidebar.html">right sidebar</a></li>
                                                            <li><a href="blog-no-sidebar.html">no sidebar</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Post Types</a>
                                                        <ul>
                                                            <li><a href="blog-details-standerd.html">Standard post</a></li>
                                                            <li><a href="blog-details-audio.html">audio post</a></li>
                                                            <li><a href="blog-details-video.html">video post</a></li>
                                                            <li><a href="blog-details-gallery.html">gallery post</a></li>
                                                            <li><a href="blog-details-link.html">link post</a></li>
                                                            <li><a href="blog-details-quote.html">quote post</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html"> Contact us</a></li>
                                        </ul>
                                    </nav>                          
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>