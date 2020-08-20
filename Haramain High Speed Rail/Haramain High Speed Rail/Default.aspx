<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Haramain_High_Speed_Rail.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>Haramain High Speed Rail</title>

		<link href="css/bootstrap.min.css" rel="stylesheet"/>
		<link href="css/font-awesome/font-awesome.min.css" rel="stylesheet"/>
		<link href="css/simple-line-icons/simple-line-icons.css" rel="stylesheet"/>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'/>
		<link href="plugins/owl-carousel/owl.carousel.css" rel="stylesheet"/>
		<link href="plugins/owl-carousel/owl.theme.css" rel="stylesheet"/>
		<link href="plugins/magnific-popup/magnific-popup.css" rel="stylesheet"/>	
		<link href="css/animate/animate.css" rel="stylesheet"/>
		<link href="css/style.css" rel="stylesheet"/>	
		<link href="switcher/switcher.css" rel="stylesheet"/>
        <link rel="stylesheet" href="css/style1.css"/>			
        <style>
            MARQUEE {
            color: white;
            word-spacing: 20px;
            font-size: 1.2vw;
            left: 30px;
            right: 30px;
            top: 0%;
            width: auto;
            height: 30px;
            z-index: 2000000;
            margin-bottom: 30px;
            padding: 0px;
            position: absolute;
            pointer-events: none;
            box-sizing: border-box;
            border-width: 0px;
            border-style: none;
            background-color: rgba(0, 0, 0, 0.3);
            
        }
        </style>
	</head>
	<body class="slider-background">
		<form id="form1" runat="server">

		<div id="preloader">
			<div id="status">&nbsp;</div>
		</div>	
            
		<div id="bg_pattern"></div>	
            
		<a href="#" class="scrollToTop">
			<i class="fa fa-angle-up fa-2x"></i>
		</a>


<%--Move par--%>
<marquee>Makkah-To-Madina-8:30AM     Madina-To-Makkah-10:30AM     Makkah-To-Jeddah-13:20PM     Jeddah-To-Makkah-17:00PM     Makkah-To-Madina-21:00PM</marquee>
        		 	
		<header id="header">
			<nav class="navbar navbar-inverse navbar-fixed-top" style=" top: 2px; height: 110px;">
			  <div class="container">
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-navbar" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
                   <%--Logo of the system--%>
				  <a class="navbar-brand" href="Default.aspx">
					<img src="img/logo1.png" alt="logo"/>
				  </a>
				</div>

                  <%--Login Button--%>
                <div style="float: right; width: 180px;">
                    <nav class="main-nav">                           
                         <a href="Login.aspx" style="font-size: 22px; border: 2px solid; margin: 15px 70px; padding: 0px 10px; background-color: rgba(0, 0, 0, 0.3);">Login</a>                        
                    </nav>
                </div>
				<%--Fixed header of menu--%>
				<div class="collapse navbar-collapse" id="collapse-navbar">
				 
				  <ul class="nav navbar-nav navbar-right" style="font-size: 22px;">                 
					<li><a data-scroll href="#services">Services</a></li>
					<li><a data-scroll href="#gallery">Stations</a></li>
					<li><a data-scroll href="#portfolio">Gallery</a></li>
					<li><a data-scroll href="#news">News</a></li>
					<li><a data-scroll href="#contact">Contact</a></li>		                   
				  </ul>                  
				</div>
			  </div>
			</nav>           
		</header>
				
		<!-- slider-banner -->	
		<section id="slider-banner" class="section wow fadeInUp">
			<div class="container">									
				<div id="slider" class="owl-carousel">
					<div class="item">	
						<i class="fa fa-train"></i>
						<h2>Haramain High Speed Rail</h2>
						<p style="font-size: 25px;">For the first time in the Kingdom of Saudi Arabia, Haramain High Speed Railway system is now available for tickets reservation.</p>																									
					</div>	
					<div class="item">	
						<i class="fa fa-info-circle"></i>
						<h2>About us</h2>
						<p style="font-size: 25px;">Haramain High Speed Rail aims to cater to passengers wishing to travel between the Holy Cities of Makkah and Madinah connecting them to KAEC, Jeddah and the Jeddah Airport.</p>																									
					</div>
					<div class="item">	
						<i class="fa fa-bolt"></i>
						<h2>Our values</h2>
						<p style="font-size: 25px;">The project consists of a high speed electrified passenger line, primarily designed to provide a fast, comfortable, reliable and safe mode of transport, between the holy cities while utilizing state-of-the-art technologies.</p>																									
					</div>                  
				</div>											
			</div>		
		</section>
			
		<!-- services -->
		<section id="services" class="section wow fadeInUp">
			<div class="container">				
				<div class="section-heading">
					<h2>Services</h2>
					<div class="separator"></div>	
				</div>				
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-android circle"></i>
							<h4>Login</h4>
							<p>The system allows the passsengers to login to the system</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-apple circle"></i>
							<h4>Ticket Reservation</h4>
							<p>The system allows the passengers to reserve a ticket</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-windows circle"></i>
							<h4>Updat a Ticket</h4>
							<p>The system allows the passengers to update the ticket</p>
						</div>
					</div>
				</div><!-- ./row -->
				
				<div class="row">
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-github circle"></i>
							<h4>Cancel a Ticket</h4>
							<p>The system allows the passengers to cancel a ticket</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-foursquare circle"></i>
							<h4>Ticket Payments</h4>
							<p>The system allows the user to pay a ticket</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services style2">
							<i class="fa fa-dropbox circle"></i>
							<h4>Send a Message</h4>
							<p>The system allows the passengers to send a message</p>
						</div>
					</div>
				</div><!-- ./row -->
			</div>
		</section>
		<!-- ./services -->

		<!-- stations-->
		<section id="gallery" class="section wow fadeInUp">
			<div class="container">	
			
				<div class="section-heading">
					<h2>Stations</h2>
					<div class="separator"></div>	
				</div>
				
				<div class="row">
					<div class="col-md-1"></div>			
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<figure><img src="img/mak2.jpg" alt="image" class="img-responsive"/></figure>
							<div class="overlay">								
								<a class="info circle popup-link" href="img/img1.jpg"><i class="fa fa-search"></i></a>
								<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<figure><img src="img/mad1.jpg" alt="image" class="img-responsive"/></figure>
							<div class="overlay">								
								<a class="info circle popup-link" href="img/img2.jpg"><i class="fa fa-search"></i></a>
								<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<figure><img src="img/jed2.jpg" alt="image" class="img-responsive"/></figure>
							<div class="overlay">								
								<a class="info circle popup-link" href="img/img3.jpg"><i class="fa fa-search"></i></a>
								<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<figure><img src="img/KAEC1.jpg" alt="image" class="img-responsive"/></figure>
							<div class="overlay">								
								<a class="info circle popup-link" href="img/img4.jpg"><i class="fa fa-search"></i></a>
								<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<figure><img src="img/KAIA1.jpg" alt="image" class="img-responsive"/></figure>
							<div class="overlay">								
								<a class="info circle popup-link" href="img/img5.jpg"><i class="fa fa-search"></i></a>
								<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
							</div>
						</div>
					</div>
                    <div class="col-md-1"></div>
				</div><!-- ./row -->
				
				<div class="row">
                    <div class="col-md-1"></div>			
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<h3>Makkah<br /></h3>						
						</div>
					</div>
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<h3>Maddina<br /></h3>
						</div>
					</div>
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<h3>Jeddah<br /></h3>
						</div>
					</div>
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<h3>KAEC<br /></h3>
						</div>
					</div>
					<div class="col-md-2 col-sm-6">
						<div class="gallery">
							<h3>KAIA<br /></h3>
						</div>
					</div>
                    <div class="col-md-1"></div>
				</div>
                
                <br />
                <br />
                <br />
                <br />
                <br />
																														
			</div>
		</section>
		<!-- ./stations -->

		<!-- gallery -->
		<section id="portfolio" class="section wow fadeInUp">
			<div class="container">
			
				<div class="section-heading">
					<h2>Gallery</h2>
					<div class="separator"></div>	
				</div>
			
				<div class="text-center padd-tb-10">
					<ul id="filter">
					  <li class="current"><a href="#">All</a></li>
					  <li><a href="#">Makkah</a></li>
					  <li><a href="#">Jeddah</a></li>
					  <li><a href="#">KAIA</a></li>
					  <li><a href="#">KAEC</a></li>
					  <li><a href="#">Madina</a></li>
					</ul>
				</div>
				
				<div class="row">
					<ul id="portfolio-filter">	
												  
						   <li class="makkah">
							<div class="col-sm-6 col-md-3">	
								<div class="gallery">
									<figure><img src="img/mak1.jpg" alt="image" class="img-responsive"/></figure>
									<div class="overlay">								
										<a class="info circle popup-link" href="img/mak1.jpg"><i class="fa fa-search"></i></a>
										<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
									</div>
								</div>
								
							</div> 
						  </li>
										
						  <li class="makkah">
							<div class="col-sm-6 col-md-3">	
								<div class="gallery">
									<figure><img src="img/mak2.jpg" alt="image" class="img-responsive"/></figure>
									<div class="overlay">								
										<a class="info circle popup-link" href="img/mak2.jpg"><i class="fa fa-search"></i></a>
										<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
									</div>
								</div>
							</div>  
						  </li>
						  
						   <li class="jeddah">
							<div class="col-sm-6 col-md-3">	
								<div class="gallery">
									<figure><img src="img/jed1.jpg" alt="image" class="img-responsive"/></figure>
									<div class="overlay">								
										<a class="info circle popup-link" href="img/jed1.jpg"><i class="fa fa-search"></i></a>
										<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
									</div>
								</div>
							</div>  
						  </li>
						  
						   <li class="jeddah">
							<div class="col-sm-6 col-md-3">		
								<div class="gallery">
									<figure><img src="img/jed2.jpg" alt="image" class="img-responsive"/></figure>
									<div class="overlay">								
										<a class="info circle popup-link" href="img/jed2.jpg"><i class="fa fa-search"></i></a>
										<a class="info circle" data-toggle="modal" data-target="#modal-popup" href="img/img1.jpg"><i class="fa fa-link"></i></a>
									</div>
								</div>
							</div>  
						  </li>
						  
						  <li class="kaec">
							<div class="col-sm-6 col-md-3">	
								<div class="gallery">
									<figure><img src="img/KAEC2.jpg" alt="image" class="img-responsive"/></figure>
									<div class="overlay">								
										<a class="info circle popup-link" href="img/KAEC2.jpg"><i class="fa fa-search"></i></a>
										<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
									</div>
								</div>
							</div>  
						  </li>
						  
						   <li class="kaia">
							<div class="col-sm-6 col-md-3">	
								<div class="gallery">
									<figure><img src="img/KAIA1.jpg" alt="image" class="img-responsive"/></figure>
									<div class="overlay">								
										<a class="info circle popup-link" href="img/KAIA1.jpg"><i class="fa fa-search"></i></a>
										<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
									</div>
								</div>
							</div>  
						  </li>
				
							<li class="madina">
							<div class="col-sm-6 col-md-3">	
								<div class="gallery">
									<figure><img src="img/mad2.jpg" alt="image" class="img-responsive"/></figure>
									<div class="overlay">								
										<a class="info circle popup-link" href="img/mad2.jpg"><i class="fa fa-search"></i></a>
										<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
									</div>
								</div>
							</div> 
						  </li>
										
						  <li class="madina">
							<div class="col-sm-6 col-md-3">	
								<div class="gallery">
									<figure><img src="img/mad3.jpg" alt="image" class="img-responsive"/></figure>
									<div class="overlay">								
										<a class="info circle popup-link" href="img/mad3.jpg"><i class="fa fa-search"></i></a>
										<a class="info circle" data-toggle="modal" data-target="#modal-popup"><i class="fa fa-link"></i></a>
									</div>
								</div>
							</div>  
						  </li>
						
					</ul>  
				</div>
			
			</div><!-- ./container -->				

		</section>
		<!-- ./gallery-->			
		
		<!-- news -->
		<section id="news" class="section wow fadeInUp">
			<div class="container">
			
				<div class="section-heading">
					<h2>News</h2>
					<div class="separator"></div>						
				</div>
				
				<!-- blog-carousel2 -->	
				<div id="blog-carousel2" class="owl-carousel">
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="img/mak1.jpg" alt="image" class="img-responsive"/>
								<ul>
									<li><i class="fa fa-calendar"></i> <span>Jan 3, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>180</span></li>
								</ul>
							</figure>
							<h4>The Opening of the Railway in Makkah</h4>
							<p> Haramain High Speed Rail in Makkah...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="img/mad2.jpg" alt="image" class="img-responsive"/>
								<ul>
									<li><i class="fa fa-calendar"></i> <span>Feb 16, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>16</span></li>
								</ul>
							</figure>
							<h4>The Opening of the Railway in Madina</h4>
							<p> Haramain High Speed Rail in Madina...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="img/jed1.jpg" alt="image" class="img-responsive"/>
								<ul>
									<li><i class="fa fa-calendar"></i> <span>March 8, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>280</span></li>
								</ul>
							</figure>
							<h4>The Opening of the Railway in Jeddah</h4>
							<p> Haramain High Speed Rail in Jeddah...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="img/KAEC2.jpg" alt="image" class="img-responsive"/>
								<ul>
									<li><i class="fa fa-calendar"></i> <span>April 11, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>95</span></li>
								</ul>
							</figure>
							<h4>The Opening of the Railway in KAEC</h4>
							<p> Haramain High Speed Rail in KAEC...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
					<div class="item">	
						<div class="blog-box2">
							<figure>
								<img src="img/KAIA1.jpg" alt="image" class="img-responsive"/>
								<ul>
									<li><i class="fa fa-calendar"></i> <span>May 18, 2016</span></li>
									<li><i class="fa fa-comment"></i> <span>35</span></li>
								</ul>
							</figure>
							<h4>The Opening of the Railway in KAIA</h4>
							<p> Haramain High Speed Rail in KAEC...</p>		
							<a href="blog-single.html" class="link">Read more...</a>	
						</div>	
					</div>
						

				</div>	
				<!-- ./blog-carousel2 -->	
					
			</div>
				
		</section>
		<!-- ./news -->		
		
		<!-- contact -->
		<section id="contact" class="section wow fadeInUp">
			<div class="container">
			
				<div class="section-heading">
					<h2>Contact Us</h2>
					<div class="separator"></div>	
				</div>
                
            <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="White" Font-Bold="True" Font-Size="Large" style="margin-left: 36%"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" ValidationGroup = "contact" style="margin-left: 7%"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
             ControlToValidate = "txtName"></asp:RequiredFieldValidator>
         
   
            <asp:Label ID="Label2" runat="server" Text="Subject" ForeColor="White" Font-Bold="True" Font-Size="Large" style="margin-left: 35%"></asp:Label>
        
            <asp:TextBox ID="txtSubject" runat="server" style="margin-left: 6%"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
             ControlToValidate = "txtSubject"></asp:RequiredFieldValidator>
    
 
            <asp:Label ID="Label3" runat="server" Text="Email" ForeColor="White" Font-Bold="True" Font-Size="Large" style="margin-left: 35%"></asp:Label>
    
            <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 7.5%"></asp:TextBox><br /><br />
            <asp:RegularExpressionValidator id="valRegEx" runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression=".*@.*\..*"
            ErrorMessage="*Invalid Email address."
            display="dynamic">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate = "txtEmail"></asp:RequiredFieldValidator>
 

            <asp:Label ID="Label4" runat="server" Text="Body" ForeColor="White" Font-Bold="True" Font-Size="Large" style="margin-left: 35%"></asp:Label>
     
            <asp:TextBox ID="txtBody" runat="server" TextMode = "MultiLine" style="margin-left: 7.9%"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
            ControlToValidate = "txtBody"></asp:RequiredFieldValidator>
   
     
            <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 36%"/><br /><br />
    
     
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" BorderColor="#0033CC" ForeColor="#0033CC" style="margin-left: 45%; width: 13%"/>
  
      
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor = "Green"></asp:Label>

					</div>
				
	
		</section>
		<!-- ./contact -->
				
		<!-- footer -->
		<footer id="footer">
			<div class="container">
				<ul class="list-inline">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-google"></i></a></li>
				</ul>
				<div class="copyright">&copy; 2019 Haramain High Speed Rail | <a href="http:/" target="_blank">Haramian Railway</a></div>
			</div>
		</footer>
		<!-- ./footer -->
		
		<div class="modal fade modal-theme" id="modal-popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Image Title</h4>
			  </div>
			  <div class="modal-body">
				<figure><img src="img/img1.jpg" alt="image" class="img-responsive text-center"/></figure>
				<h4>Description</h4>
				<p>Donec diam quam, sagittis nec velit condimentum, imperdiet tincidunt leo. Vivamus ullamcorper nibh ut purus mattis tempus. Praesent vel enim tincidunt, euismod urna vitae, ullamcorper felis. Morbi interdum, ex ut ornare aliquam, sapien tellus commodo neque, in convallis diam mi ut leo. Praesent id lectus porta, ultrices arcu quis, auctor orci. Mauris eget pharetra leo. Quisque eu sapien tortor. Pellentesque fringilla porta lectus, eu sollicitudin est imperdiet ut. Suspendisse at tortor sit amet turpis semper cursus. Aenean tortor est, blandit id turpis vel, placerat dictum risus.</p>			
				<a href="#">Sample Link</a>
			 </div>
			</div>
		  </div>
		</div>
		<!-- ./ modal-theme -->
	
		
    </form>
		<script src="js/jquery-1.11.3.min.js"></script>	
		<script src="js/bootstrap.min.js"></script>
		<script src="plugins/smooth-scroll/smooth-scroll.js"></script>
		<script src="plugins/backstretch/backstretch.min.js"></script>
		<script src="plugins/owl-carousel/owl.carousel.js"></script>
		<script src="plugins/wow/wow.js"></script>
		<script src="plugins/typed/typed.min.js"></script>
		<script src="plugins/magnific-popup/jquery.magnific-popup.js"></script>
		<script src="plugins/jqBootstrapValidation/jqBootstrapValidation.js"></script>
		<script type="text/javascript" src="switcher/switcher.js"></script> 					
		<script src="js/main.js"></script>
        <script src="js/script1.js"></script>
		
	</body>
    
</html>
