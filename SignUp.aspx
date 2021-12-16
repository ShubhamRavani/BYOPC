<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="SignUp.aspx.vb" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>SignUp</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    
    <form id="SignUpForm" runat="server">

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

    
    <!--Start Sign Up-->
       <div class="reservation-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
                        <br />
                        <br />
                        
                        <h2>Sign Up</h2>
                    </div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12">
                    <div class="contact-block">
						<div class="row">
								<div class="col-md-6">
                                <div class="col-md-12">
								<div class="form-group">

                                User Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtuname" runat="server" placeholder="User Name" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtuname" ErrorMessage="Please Enter User Name" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>                                 
							  </div>
                        <div class="col-md-12">
								<div class="form-group">
				             First Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtfirst" runat="server" placeholder="First Name" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtfirst" ErrorMessage="Please Enter Your First Name" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                </div> 
				        </div>
                        <div class="col-md-12">
								<div class="form-group">
                               Last Name  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtlast" runat="server" placeholder="Last Name" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtlast" ErrorMessage="Pease Enter Your Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div> 
				         </div>
                        </div>
                    
                 <div class="col-md-6">
                     <div class="col-md-12">
					<div class="form-group">
                                    
                          Email Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtemail" runat="server" placeholder="Email" class="form-control"></asp:TextBox>					
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Invalid Email ID" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div> 
				  </div>
                   <div class="col-md-12">
                       <div class="form-group">
                            Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtpass" 
                            runat="server" placeholder="Password" TextMode="Password" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div> 
				  </div>
                  <div class="col-md-12">
					<div class="form-group">
                            Confirm Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                            ID="txtcompass" runat="server" placeholder="Confirm password" 
                            TextMode="Password" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtcompass" ErrorMessage="Please Re-enter Your Password" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtpass" ControlToValidate="txtcompass" 
                            ErrorMessage="Password Not Matched" ForeColor="Red"></asp:CompareValidator>
                        </div> 
					</div>
                </div>
                       <div class="col-md-12">
                        <asp:Label ID="errormsg" runat="server"></asp:Label>
                        
                                 <div class="submit-button text-center">
                                <asp:Button class="btn btn-common" ID="Btnsubmit" runat="server" Text="Submit" Height="49px"></asp:Button>
								     <div class="clearfix"></div> 
								   </div>
                           </div>  								     
								     <br>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [SignUp]" ></asp:SqlDataSource>

								     								     
							
						
					</div>
                </div>
				</div>
                </div>
            </div>
        </div>
    </form>            
					
</asp:Content>

