<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/ASite.master" AutoEventWireup="false" CodeFile="AHome.aspx.vb" Inherits="Admin_AHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>HOME</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <form runat="server">

    <!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="Home.aspx">
					<img src="" alt="BYOP-C" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="AHome.aspx">Home</a></li>
                        <%     
                            If (Session("A_id") <> "") Then
                                %>
                        <li class="nav-item"><a class="nav-link" href="AAccount.aspx">Account</a></li>
						
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="Recipes.aspx" id="dropdown-a" data-toggle="dropdown">Recipes</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="recipetype.aspx">Add Recipes</a>
								<a class="dropdown-item" href="MRecipe.aspx">Manage Recipe</a>
							</div>
						</li>
	
						<li class="nav-item"><a class="nav-link" href="MContact.aspx">Manage Contact</a></li>
                       
                        <li class="nav-item"><a href="ALogout.aspx"  class="nav-link">Log Out</a></li>
                          <%
                          Else
                          %>
                             <li class="nav-item"><a href="ALogin.aspx"  class="nav-link">Log In</a></li>
                         <%
                         End If
        
                        %> 
                        
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

         <!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-center">
				<img src="images/slider-01.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> BYOP-C</strong></h1>
							<p class="m-b-40">Be Your Own Personal Chef</p>
                           
                             <% If (Session("A_id") = "") Then%> 
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="ALogin.aspx">Log In</a></p>
                            <% End If %>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center">
				<img src="images/slider-02.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> BYOP-C</strong></h1>
							<p class="m-b-40">Be Your Own Personal Chef</p>
                           
                             <% If (Session("A_id") = "") Then%>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="ALogin.aspx">Log In</a></p>
                            <% End If %>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center">
				<img src="images/slider-03.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Welcome To <br> BYOP-C</strong></h1>
							<p class="m-b-40">Be Your Own Personal Chef</p>
                            
                             <% If (Session("A_id") = "") Then%> 
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="ALogin.aspx">Log In</a></p>
                            <% End If %>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End slides -->        
    </form>

</asp:Content>

