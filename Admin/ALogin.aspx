<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/ASite.master" AutoEventWireup="false" CodeFile="ALogin.aspx.vb" Inherits="Admin_ALogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Admin Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">


    <form id="LoginForm" runat="server">

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
						<li class="nav-item"><a class="nav-link" href="AHome.aspx">Home</a></li>
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
                             <li class="nav-item active"><a href="ALogin.aspx"  class="nav-link">Log In</a></li>
                         <%
                         End If
        
                        %> 
                        
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

    <div class="reservation-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
                        <br />
                        <br />
                        
                        <h2>Login</h2>
                    </div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12">
                    <div class="contact-block">
					
						<div class="row">
								<div class="col-md-8">
                                    <div class="col-md-12">
					                <div class="form-group">
                               <asp:TextBox ID="txtmail" runat="server" placeholder="Email" class="form-control"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtmail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtmail" ErrorMessage="Invalid Email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                                 
                        <div class="col-md-12">
					<div class="form-group">
                      <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password" class="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        </div>
                       <div class="col-md-12">
					    <div class="form-group">
                        <asp:HyperLink ID="lbpass" runat="server" Text ="Forget Password?" NavigateUrl="~/Admin/Aforgetpass.aspx"></asp:HyperLink>
                        <asp:Label ID="errormsg" runat="server" ></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                            </div>
                           </div>
             
                        <div class="col-md-12">
					        <div class="form-group">
								<div class="submit-button text-center">
							    <asp:Button ID="btnLogin" runat="server" class="btn btn-common" Text="Login" />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BYOPCAdminConnectionString %>" SelectCommand="SELECT * FROM [ASignUp]"></asp:SqlDataSource>
                        
						</div>
                            </div>
						</div>
                        

                        </div>
                        </div>
					    </div>
                     
                </div>
				</div>
                </div>
            </div>
          
        </form>

</asp:Content>

