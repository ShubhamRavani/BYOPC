<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Dinner.aspx.vb" Inherits="Dinner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Dinner</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <form id="DinnerForm" runat="server">
    
    <!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="Home.aspx">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="Home.aspx">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="AboutUs.aspx" type="button">About</a></li>
                        <%     
                            If (Session("u_id") <> "") Then
                                %>
                        <li class="nav-item"><a class="nav-link" href="uaccount.aspx">Account</a></li>
                        <%
                               
                            End If
                        %>
						<!--<li class="nav-item"><a class="nav-link" href="menu.html">Menu</a></li>-->
						
						<li class="nav-item active dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Recipes</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="Breakfast.aspx">Breakfast</a>
								<a class="dropdown-item" href="Lunch.aspx">Lunch</a>
								<a class="dropdown-item" href="Dinner.aspx">Dinner</a>
							</div>
						</li>
						<!--<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-b" data-toggle="dropdown">Blog</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="blog.html">blog</a>
								<a class="dropdown-item" href="blog-details.html">blog Single</a>
							</div>
						</li>-->
						<li class="nav-item"><a class="nav-link" href="ContactUs.aspx">Contact</a></li>
                        <%
                            If (Session("u_id") <> "") Then
                         %>
                              <li class="nav-item"><a href="Logout.aspx"  class="nav-link">Log Out</a></li>
                          <%
                          Else
                          %>
                             <li class="nav-item"><a href="Login.aspx"  class="nav-link">Log In</a></li>
                         <%
                         End If
        
                        %> 
                        
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

    <!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
                        <br />
                        <br />
						<h2>Dinner</h2>
					</div>
				</div>
			</div>
            <nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbars-dinner">
                    <div class="text-center">
                        <div class="button-group filter-button-group">    
					        <!--<ul class="navbar-nav ml-auto">
                                <li class="nav-item"><button data-filter="*"><a class="nav-link" href="#gj" >Gujarati</a></button></li>
                                <li class="nav-item"><button data-filter="*"><a class="nav-link" href="#pb" >Punjabi</a></button></li>
                                <li class="nav-item"><button data-filter="*"><a class="nav-link" href="#bh" >Bihari</a></button></li>
                                <li class="nav-item"><button data-filter="*"><a class="nav-link" href="#rj" >Rajsthani</a></button></li>
                                <li class="nav-item"><button data-filter="*"><a class="nav-link" href="#mh">Marathi</a></button></li>
					        </ul>-->
                            <button data-filter="*"><a class="nav-link" href="#gj">Gujarati</a></button>
                            <button data-filter="*"><a class="nav-link" href="#pb">Punjabi</a></button>
                            <button data-filter="*"><a class="nav-link" href="#bh">Bihari</a></button>
                            <button data-filter="*"><a class="nav-link" href="#rj">Rajastani</a></button>
                            <button data-filter="*"><a class="nav-link" href="#mh">Marathi</a></button>
                            <button data-filter="*"><a class="nav-link" href="#bg">Bengali</a></button>
                            <!--<button data-filter=".gj">Gujarati</button>
                            <button data-filter=".pb">Punjabi</button>
                            <button data-filter=".bh">Bihari</button>
                            <button data-filter=".rj">Rajsthani</button>
                            <button data-filter=".mh">Marathi</button>-->
                        </div>
                    </div>
				</div>
			</div>
		</nav>
		
    <!--Start GJ Dinner-->
        <section id="gj" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <hr />
                            <h4><strong>Gujarati Dinner Recipes</strong></h4>
                            <hr />
                            </div>
                        </div>
                    </div>
                </div>

              <div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-01.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-02.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-03.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
            </div>
            </div>
            </section>
    <!--End GJ Dinner-->
    
    <!--Start PB Dinner-->

    <section id="pb" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <br />
                            <hr />
                            <h4><strong>Punjabi Dinner Recipes</strong></h4>
                            <hr />
                            </div>
                        </div>
                    </div>
                </div>

              <div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-01.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-02.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-03.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
            </div>
        </div>
    </section>
        
    <!--End PB Dinner-->
    

    <!--Start BH Dinner-->

    <section id="bh" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <br />
                            <hr />
                            <h4><strong>Bihari Dinner Recipes</strong></h4>
                            <hr />
                            </div>
                        </div>
                    </div>
                </div>

              <div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-01.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-02.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-03.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
            </div>
        </div>
    </section>
        
    <!--End BH Dinner-->

    <!--Start RJ Dinner-->
        <section id="rj" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <hr />
                            <h4><strong>Rajasthani Dinner Recipes</strong></h4>
                            <hr />
                            </div>
                        </div>
                    </div>
                </div>

              <div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-01.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-02.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-03.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
            </div>
            </div>
            </section>
    <!--End RJ Dinner-->
    
    <!--Start MH Dinner-->

    <section id="mh" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <br />
                            <hr />
                            <h4><strong>Marathi Dinner Recipes</strong></h4>
                            <hr />
                            </div>
                        </div>
                    </div>
                </div>

              <div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-01.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-02.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-03.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
            </div>
        </div>
    </section>
        
    <!--End MH Dinner-->
    

    <!--Start BG Dinner-->

    <section id="bg" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <br />
                            <hr />
                            <h4><strong>Bengali Dinner Recipes</strong></h4>
                            <hr />
                            </div>
                        </div>
                    </div>
                </div>

              <div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-01.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-02.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<img src="images/img-03.jpg" class="img-fluid" alt="Image">
						
					</div>
				</div>
            </div>
        </div>
    </section>
        
    <!--End BG Dinner-->
				</div>
			</div>
		
	<!-- End Gallery -->
    </form>

</asp:Content>

