<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/ASite.master" AutoEventWireup="false" CodeFile="AddRecipe.aspx.vb" Inherits="Admin_AddRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>ADD RECIPE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <form id="AddRecipe" runat="server">

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
						
						<li class="nav-item active dropdown">
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
                        
                        <h2>Add Recipe</h2>
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

                                <asp:FileUpload ID="fileupload" runat="server" AllowMultiple="false" />

                            </div>
                            </div>

                            <div class="col-md-12">
                            <div class="form-group">

                                <asp:TextBox ID="txtcuisine" runat="server" placeholder="Cuisine*" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                 ControlToValidate="txtcuisine" ErrorMessage="Please Enter Cuisine"
                                 ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            </div>

                            <div class="col-md-12">
                            <div class="form-group">

                                <asp:TextBox ID="txtrtype" runat="server" placeholder="Recipe Type*" class="form-control"></asp:TextBox>
                                <br />

                            </div>
                            </div>

                            <div class="col-md-12">
                            <div class="form-group">

                                <asp:TextBox ID="txtrname" runat="server" placeholder="Recipe Name*" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtrname" ErrorMessage="Pease Enter Name of Recipe." ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            </div>

                            <div class="col-md-12">
                            <div class="form-group">

                                <asp:TextBox ID="txtspecialing" runat="server" placeholder="Special Ingredient*" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="txtspecialing" ErrorMessage="Pease Enter Special Ingredient." ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            </div>

                            <div class="col-md-12">
                            <div class="form-group">

                                <asp:TextBox ID="txtcmning" runat="server" placeholder="Common Ingredient*" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="txtcmning" ErrorMessage="Pease Enter Common Ingredient." ForeColor="Red"></asp:RequiredFieldValidator>

                            </div>
                            </div>

                            <div class="col-md-12">
                            <div class="form-group">
                                <div class="submit-button text-center">

							        <asp:Button ID="btnSubmit" runat="server" class="btn btn-common" Text="Submit" Height="49px" />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo]"></asp:SqlDataSource>
                                    
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

