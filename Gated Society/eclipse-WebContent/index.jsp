<!DOCTYPE html>
<html lang="en">

<head>
	
<script>
history.pushState(null, null, document.URL);
window.addEventListener('popstate', function () {
    history.pushState(null, null, document.URL);
});
</script>
	<script src="https://kit.fontawesome.com/yourcode.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>R.S.R.V.Brindavanam</title>

    <!-- Bootstrap Core CSS -->
    <link href="asset/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    
    
    <!-- Animate CSS -->
    <link href="css/animate.css" rel="stylesheet" >
    
    <!-- Owl-Carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" >
    <link rel="stylesheet" href="css/owl.theme.css" >
    <link rel="stylesheet" href="css/owl.transitions.css" >

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="css/color/green.css">
    
    
    
    <!-- Colors CSS -->
    <link rel="stylesheet" type="text/css" href="css/color/green.css" title="green">
    <link rel="stylesheet" type="text/css" href="css/color/light-red.css" title="light-red">
    <link rel="stylesheet" type="text/css" href="css/color/blue.css" title="blue">
    <link rel="stylesheet" type="text/css" href="css/color/light-blue.css" title="light-blue">
    <link rel="stylesheet" type="text/css" href="css/color/yellow.css" title="yellow">
    <link rel="stylesheet" type="text/css" href="css/color/light-green.css" title="light-green">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    
    
    <!-- Modernizer js -->
    <script src="js/modernizr.custom.js"></script>

    
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="index">
    
    
    <!-- Styleswitcher
================================================== -->
        <div class="colors-switcher">
            <a id="show-panel" class="hide-panel"><i class="fa fa-tint"></i></a>        
                <ul class="colors-list">
                    <li><a title="Light Red" onClick="setActiveStyleSheet('light-red'); return false;" class="light-red"></a></li>
                    <li><a title="Blue" class="blue" onClick="setActiveStyleSheet('blue'); return false;"></a></li>
                    <li class="no-margin"><a title="Light Blue" onClick="setActiveStyleSheet('light-blue'); return false;" class="light-blue"></a></li>
                    <li><a title="Green" class="green" onClick="setActiveStyleSheet('green'); return false;"></a></li>
                    
                    <li class="no-margin"><a title="light-green" class="light-green" onClick="setActiveStyleSheet('light-green'); return false;"></a></li>
                    <li><a title="Yellow" class="yellow" onClick="setActiveStyleSheet('yellow'); return false;"></a></li>
                    
                </ul>

        </div>  
<!-- Styleswitcher End
================================================== -->

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">RSRV BRINDAVANAM</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about-us">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#service">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#pricing">Pricing</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#latest-news">Overview</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#testimonial">Testimonials</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    
    
    
    <!-- Start Home Page Slider -->
    <section id="page-top">
        <!-- Carousel -->
        <div id="main-slide" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#main-slide" data-slide-to="0" class="active"></li>
                <li data-target="#main-slide" data-slide-to="1"></li>
                <li data-target="#main-slide" data-slide-to="2"></li>
            </ol>
            <!--/ Indicators end-->

            <!-- Carousel inner -->
            <div class="carousel-inner">
                <div class="item active">
                    <img class="img-responsive" src="images/apt4.jpg" alt="slider" style="opacity:0.8;filter:alpha(opacity=80);">
                    <div class="slider-content">
                        <div class="col-md-12 text-center">
                            <h1 class="animated3">
                                <span><strong>Welcome to</strong> Seshadri</span>
                                <p class="animated2">2BHK</p>
                            </h1>
                        </div>
                    </div>
                </div>
                
                <!--/ Carousel item end -->
                
                <div class="item">
                    <img class="img-responsive" src="images/apt1.jpg" alt="slider" style="opacity:0.8;filter:alpha(opacity=80);">
                    
                    <div class="slider-content">
                        <div class="col-md-12 text-center">
                            <h1 class="animated1">
                    		  <span>Welcome to <strong>Venkatadri</strong></span>
                    	    </h1>
                            <p class="animated2">3BHK</p>
                        </div>
                    </div>
                </div>
                <!--/ Carousel item end -->
                
                <div class="item">
                    <img class="img-responsive" src="images/apt2.jpg" alt="slider" style="opacity:0.8;filter:alpha(opacity=80);">
                    <div class="slider-content">
                        <div class="col-md-12 text-center">
                            <h1 class="animated2">
                                <span>Welcome to <strong>Narayanadri</strong></span>  
                                </h1>
                            <p class="animated2">4BHK</p>
                        </div>
                    </div>
                </div>
                <!--/ Carousel item end -->
            </div>
            <!-- Carousel inner end-->

            <!-- Controls -->
            <a class="left carousel-control" href="#main-slide" data-slide="prev">
                <span><i class="fa fa-angle-left"></i></span>
            </a>
            <a class="right carousel-control" href="#main-slide" data-slide="next">
                <span><i class="fa fa-angle-right"></i></span>
            </a>
        </div>
        <!-- /carousel -->
    </section>
    <!-- End Home Page Slider -->


    
    <!-- Start About Us Section -->
    <section id="about-us" class="about-us-section-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="section-title text-center">
                            <h3>Login Forms</h3>
                            <p></p>
                        </div>
                </div>
            </div>
            <div class="row">
                
                <div class="col-md-4">
                    <div class="welcome-section text-center">
                        <img src="images/admin.png" class="img-responsive" alt="..">
                        <a href="ad_login.jsp"><h4>Admin Login</h4></a>
                     </div>
                </div>
                
                <div class="col-md-4">
                    <div class="welcome-section text-center">
                        <img src="images/user.png" class="img-responsive" alt="..">
                        <a href="u_login.jsp"><h4>Resident Login</h4></a>
                     </div>
                </div>
                
                <div class="col-md-4">
                    <div class="welcome-section text-center">
                        <img src="images/watchman.jpg" class="img-responsive" alt="..">
                        <a href="w_login.jsp"><h4>Watchman Login</h4></a>
                    </div>
                </div>
                
            </div><!-- /.row -->            
            
        </div><!-- /.container -->
    </section>
    <!-- End About Us Section -->

    <!-- Start Feature Section -->
        <section id="service" class="services-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title text-center">
                            <h3>Our Services</h3>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="feature-2">
                            <div class="media">
                                <div class="pull-left">
                                    <i class="glyphicon glyphicon-home"></i>
                                    <div class="border"></div>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">Interior Design</h4>
                                    <p>We have the best Interior Designers</p>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="feature-2">
                            <div class="media">
                                <div class="pull-left">
                                    <i class="fa fa-smile-o"></i>
                                    <div class="border"></div>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">Swimming Pool</h4>
                                    <p>Temperature controlled Swimming pool</p>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.col-md-4 -->
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="feature-2">
                            <div class="media">
                                <div class="pull-left">
                                    <i class="fa fa-google"></i>
                                    <div class="border"></div>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">Indoor Gym</h4>
                                    <p>Indoor Gym with Professional Trainers</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                </div><!-- /.row -->
            
            </div><!-- /.container -->
        </section>
        <!-- End Feature Section -->
    
    


    <!-- Start Pricing Table Section -->
    <div id="pricing" class="pricing-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-12">
                        <div class="section-title text-center">
                            <h3>Our Pricing Plan</h3>
                            <p class="white-text">Prices are not constant.<br>For complete details contact corresponding Head of the block</p>
                        </div>
                    </div>
                </div>
            </div>
                    
            <div class="row">
                        
                <div class="pricing">
                        
                        <div class="col-md-12">
                            <div class="pricing-table">
                                <div class="plan-name">
								    <h3>Seshadri</h3>
                                </div>
                                <div class="plan-price">
                                    <div class="price-value">Rs 25,000<span>.00</span></div>
                                    <div class="interval">per month</div>
                                </div>
                                <div class="plan-list">
                                    <ul>
                                        <li>2BHK</li>
                                        <li>Swimming Pool Facility</li>
                                        <li>Great Interiors</li>
                                        <li>Indoor Gym Facility</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-12">
                            <div class="pricing-table">
                                <div class="plan-name">
								    <h3>Venkatadri</h3>
                                </div>
                                <div class="plan-price">
                                    <div class="price-value">Rs 40,000<span>.00</span></div>
                                    <div class="interval">per month</div>
                                </div>
                                <div class="plan-list">
                                    <ul>
                                        <li>3BHK</li>
                                        <li>Swimming Pool Facilities</li>
                                        <li>Great Interiors</li>
                                        <li>Indoor Gym Facility</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="pricing-table">
                                <div class="plan-name">
								    <h3>Narayanadri</h3>
                                </div>
                                <div class="plan-price">
                                    <div class="price-value">Rs 50,000<span>.00</span></div>
                                    <div class="interval">per month</div>
                                </div>
                                <div class="plan-list">
                                    <ul>
                                        <li>4BHK</li>
                                        <li>Swimming Pool Facilities</li>
                                        <li>Great Interiors</li>
                                        <li>Indoor Gym Facility</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                       
                    </div>
						
						
            </div>
        </div>
    </div>
    <!-- End Pricing Table Section -->
    
    
    
    <!-- Start Latest News Section -->
    <section id="latest-news" class="latest-news-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3>Overview </h3>
                        <p>Get an overview and get amazed</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="latest-news">
                    <div class="col-md-12">
                        <div class="latest-post">
                            <img src="images/apt-1.jpg" class="img-responsive" alt="">
                            <h4>Seshadri Block </h4>
                            <div class="post-details">
                                <span class="date"><strong>SB</strong></span>
                                
                            </div>
                            <p>2BHK<br>Head of Seshadri Block: R.Harshita<br>Constructor: P.Karthik<br>President: P.Tulasiram<br></p>
                          
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="latest-post">
                            <img src="images/apt-2.jpg" class="img-responsive" alt="">
                            <h4>Venkatadri Block</h4>
                            <div class="post-details">
                                <span class="date"><strong>VB</strong></span>
                                
                            </div>
                            <p>3BHK<br>Head of Seshadri Block: P.Chinmayee<br>Constructor: P.Karthik<br>President: P.Haranadh<br></p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="latest-post">
                            <img src="images/apt-3.jpg" class="img-responsive" alt="">
                            <h4>Narayanadri Block</h4>
                            <div class="post-details">
                                <span class="date"><strong>NB</strong></span>
                                
                            </div>
                            <p>4BHK<br>Head of Seshadri Block: G.Harsha Vardhan<br>Constructor: P.Karthik<br>President: N.Sravya<br></p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="latest-post">
                            <img src="images/inter-1.jpg" class="img-responsive" alt="">
                            <h4>Seshadri Block Interiors</h4>
                            <div class="post-details">
                                <span class="date"><strong>SB</strong></span>
                                
                            </div>
                            <p>Interior designer: K.Pavan Kalyan<br></p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="latest-post">
                            <img src="images/inter-2.jpg" class="img-responsive" alt="">
                            <h4>Venkatadri Block Interiors</h4>
                            <div class="post-details">
                                <span class="date"><strong>VB</strong></span>
                                
                            </div>
                            <p>Interior designer: K.Chiranjeevi<br></p>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="latest-post">
                            <img src="images/inter-3.jpg" class="img-responsive" alt="">
                            <h4>Narayanadri Block Interiors</h4>
                            <div class="post-details">
                                <span class="date"><strong>NB</strong></span>
                                
                            </div>
                            <p>Interior designer: K.V.Girish Kumar<br></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Latest News Section -->



    
    
    
    <!-- Start Testimonial Section -->
    <div id="testimonial" class="testimonial-section">
        <div class="container">
            <!-- Start Testimonials Carousel -->
            <div id="testimonial-carousel" class="testimonials-carousel">
                <!-- Testimonial 1 -->
                <div class="testimonials item">
                    <div class="testimonial-content">
                        <img src="images/testimonial/face_1.png" alt="" >
                        <div class="testimonial-author">
                            <div class="author">Harsha Garlapati</div>
                            <div class="designation">Organization Founder</div>
                        </div>
                        <p>Founder of RSRV.</p>
                    </div>
                </div>
                <!-- Testimonial 2 -->
                <div class="testimonials item">
                    <div class="testimonial-content">
                        <img src="images/testimonial/face_2.png" alt="" >
                        <div class="testimonial-author">
                            <div class="author">Chinmayee Pendyala</div>
                            <div class="designation">Lead Developer</div>
                        </div>
                        <p>Developer of the Residential Complex Web Interface.</p>
                    </div>
                </div>
                <!-- Testimonial 3 -->
                <div class="testimonials item">
                    <div class="testimonial-content">
                        <img src="images/testimonial/face_3.png" alt="" >
                        <div class="testimonial-author">
                            <div class="author">Harshita Rudraraju</div>
                            <div class="designation">Head of Interior Designers</div>
                        </div>
                        <p>Interior Designer for all the blocks in RSRV.</p>
                    </div>
                </div>
            </div>
            <!-- End Testimonials Carousel -->
        </div>
    </div>
    <!-- End Testimonial Section -->
    
   
    <section id="contact" class="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <h3>Contact With Us</h3>
                        <p class="white-text">Duis aute irure dolor in reprehenderit in voluptate</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-primary">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="footer-contact-info">
                        <h4>Contact info</h4>
                        <ul>
                            <li><strong>E-mail :</strong> harsha.garlapati@mail.com</li>
                            <li><strong>Phone :</strong> +919856321478</li>
                        </ul>
                    </div>
                </div>
      
            </div>
        </div>
        <footer class="style-1">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <span class="copyright">Copyright &copy; <a href="http://guardiantheme.com">GuardinTheme</a> 2015</span>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="footer-social text-center">
                            <ul>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12">
                        <div class="footer-link">
                            <ul class="pull-right">
                                <li><a href="#">Privacy Policy</a>
                                </li>
                                <li><a href="#">Terms of Use</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </section>


    <div id="loader">
        <div class="spinner">
            <div class="dot1"></div>
            <div class="dot2"></div>
        </div>
    </div>

    

    <!-- jQuery Version 2.1.1 -->
    <script src="js/jquery-2.1.1.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="asset/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/count-to.js"></script>
    <script src="js/jquery.appear.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>
    <script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.fitvids.js"></script>
	<script src="js/styleswitcher.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/script.js"></script>

</body>

</html>
