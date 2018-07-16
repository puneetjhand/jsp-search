
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %> 
<%@ page import="javax.servlet.jsp.*" %> 
<%!String nn=null;%>
    


<!DOCTYPE html>
<html>
    <head id="head1" prefix="og: https://ogp.me/ns# fb: https://ogp.me/ns/fb# product: https://ogp.me/ns/product#">
       <meta charset="utf-8" />
       <meta http-equiv="X-UA-Compatible" content="IE=edge" />
       <title>College</title>
       <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
       
       <link rel="stylesheet" href="css/popup.css" />
       <script src="js/v4/jquery.min.js"></script>
       <link rel="manifest" href="https://cdn.yellowpages.in/js/v4/manifest.json" />
       
      
       <meta property='article:publisher' content='https://www.facebook.com/Yellowpagesin-718593851493856/' />
       
       <link rel="stylesheet" href="https://cdn.yellowpages.in/css/v6/yp-search.css">
       <script src="https://cdn.yellowpages.in/js/v4/ct2.js"></script>
       
       <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Flat Trendy Signup Forms Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="css/v6/login.css" rel='stylesheet' type='text/css' />

<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="css/animate.min.css">

	<!-- Font Icons
   ================================================== -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/et-line-font.css">

	<!-- Nivo Lightbox CSS
   ================================================== -->
	<link rel="stylesheet" href="css/nivo-lightbox.css">
	<link rel="stylesheet" href="css/nivo_themes/new/default.css">

	<!-- Owl Carousel CSS
   ================================================== -->
   	<link rel="stylesheet" href="css/owl.theme.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
        
        <link rel="stylesheet" href="css/sample.css">
        
          <style>
      #map {
        height: 350px;
        width:auto;
        
        
       }
    </style>
        
   </head>
   <body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">


<!-- Preloader section
================================================== -->
<section  class="preloader">

	<div class="sk-rotating-plane"></div>

</section>


<!-- Navigation section
================================================== -->
<section class="navbar navbar-fixed-top custom-navbar" role="navigation">
	<div class="container">

		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="#home" class="smoothScroll navbar-brand">EDU-HUB</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
                           
            
			<li><a href="index.jsp" class="smoothScroll">HOME</a></li>
                
				<li><a href="#work" class="smoothScroll">STUDENT CENTER</a></li>
				<li><a href="#about" class="smoothScroll">ABOUT</a></li>
                                <li><a href="#contact" class="smoothScroll">CONTACT US</a></li>
                                <li><a href="signin.html" class="smoothScroll">SIGN IN</a></li>
                                <li><a href="signup.html" class="smoothScroll">SIGN UP</a>
                                      
                                            
                                    </ul>
                              
		</div>

	</div>
</section>

       
   <section>
   <div id="map"></div>
   <script>
      // Note: This example requires that you consent to location sharing when
      // prompted by your browser. If you see the error "The Geolocation service
      // failed.", it means you probably did not give permission for the browser to
      // locate you.
      var map, infoWindow;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 6
        });
        infoWindow = new google.maps.InfoWindow;

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            infoWindow.open(map);
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOiNclsj8GnVMqvV-AOGFn-kZkUMDG_YU&callback=initMap">
    </script>

       </section>
      <%
       Connection con=null;
        
    String course =request.getParameter("search");
    try
    {
         Class.forName("com.mysql.jdbc.Driver");
                 
               con= DriverManager.getConnection("jdbc:mysql://localhost:3306/eduhub","root","9229");
           String q="select distinct * from college where course='"+course+"'";
           //out.print(q);
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery(q);
     
     while(rs.next())
     {
     
        String nn="uni/"+rs.getString("iname")+".jpg"; 
     
         %>
   
    
    <div class="wrapper">
        
        <section class="leftBigCol">
            <div class="column-sm-6">
                
            </div>
       <div class="businessListingBlock">
           <header class="hiddenTitle">Business Listing</header>
           <ul id="MainContent_ulFList" class="popularThisWeekList">
               <li>
<div class="eachPopular">
    <div class="eachPopularLeft">
        <div class="eachPopularImage">
            <a>
                <img width="170" height="170" src=<%=nn%> alt="">
            </a>
        </div>
        
        <div class="eachPopularTitleBlock">
            
            <div class="popularTitleTextBlock">
                
                <a href="/b/genie-tech-solutions-ameerpet-hyderabad/747254425" class="eachPopularTitle  hasOtherInfo"><%out.println(rs.getString("collegename")); %></a>
                
                <div class="eachPopularOtherActions">
                    
                    <span class="ypApproved"></span>
                    
                    <span class="certified aaP"></span>
                
                </div>
            
            </div>
            
            <div class="eachPopularRatingBlock">
                
                <span class="rating r0-0"></span>
                
                <a style="text-decoration:none;cursor:default" class="ratingCount">0 reviews</a>
            
            </div>
            
            <div class="openNow"><strong>Open</strong> - until 05:00PM</div>
            
            <ul class="eachPopularTagsList"> 
                
                <li>
                    
                  <%out.println(rs.getString("description")); %>
                
                </li>
            
            </ul>
            
            <div class="eachPopularLink">
                
                <a href="mailto:gopi@genietechsolutions.com" target="_blank">Email</a>
                
                <a href="www.ctgroup.in" target="_blank">Website</a>
            
            </div>
        
        </div>
    
    </div>
    
    <div class="eachPopularRight">
        
        <div class="addFav" onclick="setFav(this)" id="b747254425"></div>
        
        <a class="businessContact" href="tel:9030033688"><%out.println(rs.getString("phone")); %></a>
        
        <address class="businessArea"><strong><%out.println(rs.getString("director")); %></strong> <%out.println(rs.getString("city"));%></address> 
        
        <div class="directionsLocationsBlock">
            
            <a target="_blank" rel="nofollow" href="http://www.google.com/maps/place/17.4375,78.4483">Directions</a>
        
        </div>
    
    </div>

</div>
        
               </li>
                            
           </ul>
 

       
      
       </div>
    </div>
            
    
</section>    

        
    
                                  <%

%>
         
         <%
        
     }
%>
   
        
       <aside class="rightSmallCol">
           
           <div id="MainContent_divFea" class="rightFeatured" style="display:none;">
               
               <div class="rightFeaturedBlock">
                   
                   <h4 class="rightFeaturedHeading">Featured Business</h4>
                   
                   <ul id="MainContent_ulFeatured" class="featuredBusinessList"></ul>
               
               </div>
           
           </div>
           
           <div class="haveBusiness">
               
               <div class="haveBusinessAd" style="background-image:url(https://cdn.yellowpages.in/images/need_help.jpg);">
                   
                   <div class="havebusinessTitle">Need help in choosing business?</div>
                   
                   <div class="haveBusinessInfo">Let EDUHUB.in do that for you</div>
                   
                   <button type="button" class="addBusinessBtn">Get me best prices</button>
               
               </div>
           
           </div>
           
           <div class="rightColAdvt">
               
               <a href="/contact-us"><img src="https://cdn.yellowpages.in/images/cadvt.png" id="MainContent_imgAd"></a>
           
           </div>
           
           <div id="MainContent_divRev" class="rightRecentReviews">
               
               <div class="recentViewsBlock">
                   
                   <h3 class="thirdHeading">Recent Reviews</h3>
                   
                   <ul id="MainContent_ulReviews" class="recentReviewsList"><li>
                           
                           <div class="eachRR">
                               
                               <div class="eachRRPhotoRat">
                                   
                                   <div class="eachRRPhoto">
                                       
                                       <img src="https://cdn.yellowpages.in/assets//u/nophoto.jpg" alt="">
                                   
                                   </div>
                                   
                                   <div class="titleRating">
                                       
                                       <a class="reviewerName">Mohtashim Khan</a>
                                       
                                       <div class="reviewRating">
                                           
                                           <span class="rating r5-0"></span>
                                           
                                           <span class="ratingTime">11/05/2017 10:47</span>
                                       
                                       </div>
                                   
                                   </div>
                               
                               </div>
                               
                               <a href="/b/z-m-classes-kamatipura-hyderabad/650613092" class="eachRRTitle">Z. M. Classes</a>
                               
                               <p class="eachRRTitleInfo">This classes is available at Mumbai</p>
                           
                           </div>
                       
                       </li>
                   
                   </ul>
               
               </div>
           
           </div>
           
           <div class="rightSuggestBusiness">
               
               <div class="haveBusiness">
                   
                   <div class="haveBusinessAd" style="background-image:url(https://cdn.yellowpages.in/images/cityDrawing.png);">Didn't find what you are looking for?
<div class="eachFormElement">
    
    <br>
    
    <a href="/addbusiness" class="popupButton">Suggest a business</a>

</div>
                   </div>
               
               </div>
           
           </div>
       
       </aside>
       </div>
      
       
       <footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">

				<h2 class="wow bounceIn">EDU-HUB</h2>
				<ul class="social-icon">
					<li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
					<li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
					<li><a href="#" class="fa fa-dribbble wow fadeIn" data-wow-delay="0.9s"></a></li>
					<li><a href="#" class="fa fa-behance wow fadeIn" data-wow-delay="1s"></a></li>
					<li><a href="#" class="fa fa-github wow fadeIn" data-wow-delay="1.3s"></a></li>
					<li><a href="#" class="fa fa-tumblr wow fadeIn" data-wow-delay="1.6s"></a></li>
				</ul>
				<p>Copyright &copy; 2017 EDU-HUB 
                
                                    | Design: <a rel="nofollow" href="http://www.tooplate.com/free-templates" target="_parent">Edenization</a></p>

			</div>
		</div>
	</div>
       </div>
</footer>


<!-- Javascript 
================================================== -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/nivo-lightbox.min.js"></script>
<script src="js/jquery.easing-1.3.js"></script>
<script src="js/plugins.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>
<%
     }
    catch(Exception e)
    {
        out.print(e);
    }
  %>
       
   </body>
</html>

