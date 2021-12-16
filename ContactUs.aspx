<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Contact Us</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <form id="contactForm" runat="server">

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
						
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="Recipes.aspx" id="dropdown-a" data-toggle="dropdown">Recipes</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="Breakfast.aspx">Breakfast</a>
								<a class="dropdown-item" href="Lunch.aspx">Lunch/Dinner</a>
								<a class="dropdown-item" href="Dessert.aspx">Dessert</a>
                                <a class="dropdown-item" href="Sweets.aspx">Sweets</a>
							</div>
						</li>
						<!--<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-b" data-toggle="dropdown">Blog</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="blog.html">blog</a>
								<a class="dropdown-item" href="blog-details.html">blog Single</a>
							</div>
						</li>-->
						<li class="nav-item active"><a class="nav-link" href="ContactUs.aspx">Contact</a></li>
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

    <!--Start Contact-->
	<div class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
                        <br />
                        <br />
						<h2>Contact</h2>
						<p ><strong>Feel free to Contact Us. Thank You!</strong></p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<asp:TextBox ID="txtname" runat="server" placeholder="Name*" class="form-control"></asp:TextBox>
						            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
								</div>                                 
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<asp:TextBox ID="txtmail" runat="server" placeholder="Email*" TextMode="Email" class="form-control"></asp:TextBox>
	                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Email" ControlToValidate="txtmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
								</div> 
							</div>
							<div class="col-md-12">
								<div class="form-group"> 
									<asp:TextBox ID="txtmsg" runat="server" placeholder="Message*" TextMode="MultiLine" class="form-control"></asp:TextBox>
					                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmsg" ErrorMessage="Please Write your Message" ForeColor="Red"></asp:RequiredFieldValidator>	   
								</div>
                            </div>
                            <div class="col-md-12">
					        <div class="form-group">
								<div class="submit-button text-center">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Class="btn btn-common" Height="49px" UseSubmitBehavior="False" /> 
                                   
								</div>
							</div>
                            </div>
						</div>            
				    </div>
                 <div class="col-lg-4">
       	            <h3><strong> Contact information</strong></h3>
		            <p class="lead">ADYPU, Pune, Maharashtra, India, 412105</p>
		            <p class="lead"><a href="#">+00 0000 00 0000</a></p>
		            <p><a href="#"> shubham.ravani@adypu.edu.in</a></p>
                </div>
			</div>
		</div>
    </div>
    </form>

</asp:Content>

