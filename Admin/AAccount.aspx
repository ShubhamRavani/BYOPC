﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/ASite.master" AutoEventWireup="false" CodeFile="AAccount.aspx.vb" Inherits="Admin_AAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Admin Account</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <form id="AdminAcc" runat="server">

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
                        <li class="nav-item active"><a class="nav-link" href="AAccount.aspx">Account</a></li>
						
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

     <div class="reservation-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
                        <br />
                        <br />
                        
                        <h2>Admin Account</h2>
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

                            <asp:TextBox ID="txtfirst" runat="server" placeholder="First Name" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtfirst" ErrorMessage="Please Enter Your First Name" 
                            ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            </div>

                            <div class="col-md-12">
                            <div class="form-group">                       
                                               
                            <asp:TextBox ID="txtlast" runat="server" placeholder="Last Name" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtlast" ErrorMessage="Pease Enter Your Last Name" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            </div>

                            <div class="col-md-12">
                            <div class="form-group">
                                                
                            <asp:TextBox ID="txtemail" runat="server" placeholder="Email" TextMode="Email" class="form-control"></asp:TextBox>					
                        
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Please Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Invalid Email Address" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                            </div>
                            </div>
                        </div>


                                               
                        <div class="col-md-6">                    

                            <div class="col-md-12">
                            <div class="form-group">
                            
                            <asp:TextBox ID="txtpass" runat="server" placeholder="New Password" TextMode="Password" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            </div>               

                            <div class="col-md-12">
                            <div class="form-group">

                            <asp:TextBox ID="txtcompass" runat="server" placeholder="Confirm password" TextMode="Password" class="form-control"></asp:TextBox>
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
                                <asp:Label ID="lblMessage" runat="server" />
                            <div class="submit-button text-center">
                                              
                              <asp:Button ID="Btnsubmit" runat="server" Text="Submit" class="btn btn-common"></asp:Button>

                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BYOPCAdminConnectionString %>" SelectCommand="SELECT * FROM [ASignUp]"></asp:SqlDataSource>

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

