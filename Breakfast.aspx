<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Breakfast.aspx.vb" Inherits="Breakfast" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Breakfast</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <form id="BreakForm" runat="server">
    
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

						<li class="nav-item active dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Recipes</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="Breakfast.aspx">Breakfast</a>
								<a class="dropdown-item" href="Lunch.aspx">Lunch/Dinner</a>
								<a class="dropdown-item" href="Dessert.aspx">Dessert</a>
                                <a class="dropdown-item" href="Sweets.aspx">Sweets</a>
							</div>
						</li>
			
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
						<h2>BreakFast</h2>
					</div>
				</div>
			</div>
            <nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbars-breakfast">
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
		
    <!--Start GJ Break-->
        <section id="gj" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <hr />
                            <h4><strong>Gujarati Breakfast Recipes</strong></h4>
                            <hr />
                            </div>
                        </div>
                    </div>
                </div>

              <div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<%--<img src="images/GJ/gjb_biscuit_khakhra.jpg" class="img-fluid" alt="Image">--%>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <asp:Image ID="img1" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Plain Khakhra" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
						
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<asp:DataList ID="DataList2" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <asp:Image ID="img2" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Masala Khakhra" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
						
					</div>
				</div>
				
                <div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<asp:DataList ID="DataList3" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource3">
                            <ItemTemplate>
                                <asp:Image ID="img3" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Biscuit Khakhra" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<asp:DataList ID="DataList4" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource4">
                            <ItemTemplate>
                                <asp:Image ID="img4" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Palak Khakhra" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<asp:DataList ID="DataList5" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource5">
                            <ItemTemplate>
                                <asp:Image ID="img5" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Mug Khakhra" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<asp:DataList ID="DataList6" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource6">
                            <ItemTemplate>
                                <asp:Image ID="img6" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Chakri" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					</div>
				</div>
                  <div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<asp:DataList ID="DataList7" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource7">
                            <ItemTemplate>
                                <asp:Image ID="img7" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Tikha Gathiya" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					</div>
				</div>
                  <div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<asp:DataList ID="DataList8" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource8">
                            <ItemTemplate>
                                <asp:Image ID="img8" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Tikha Papdi" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					</div>
				</div>
                  <div class="col-lg-4 col-md-6 special-grid pb">
					<div class="gallery-single fix">
						<asp:DataList ID="DataList9" runat="server" DataKeyField="i_id" DataSourceID="SqlDataSource9">
                            <ItemTemplate>
                                <asp:Image ID="img9" runat="server" ImageUrl='<%# Eval("img1")%>' Height="300" Width="350" />
                                <div class="why-text">
                                    <h4><asp:Label ID="r_nameLbl" runat="server" Text='<%# Eval("r_name")%>' Font-Bold="True" /></h4>
                                    
                                    <p><strong>Special Ingredient : </strong><asp:Label ID="spl_ingLbl" runat="server" Text='<%# Eval("special_ing")%>' Font-Bold="False" /></p>
                                   
                                    <p><strong>Common Ingredient : </strong<asp:Label ID="cmn_inglbl" runat="server" Text='<%# Eval("cmn_ing")%>' Font-Bold="False" /></p>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" SelectCommand="SELECT * FROM [recipeinfo] WHERE ([r_name] = @r_name)">
                            <SelectParameters>
                                <asp:Parameter Name="r_name" DefaultValue="Papdi" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					</div>
				</div>
            </div>
            </div>
            </section>
    <!--End GJ Break-->
    
    <!--Start PB Break-->

    <section id="pb" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <br />
                            <hr />
                            <h4><strong>Punjabi Breakfast Recipes</strong></h4>
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
        
    <!--End PB Break-->
    

    <!--Start BH Break-->

    <section id="bh" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <br />
                            <hr />
                            <h4><strong>Bihari Breakfast Recipes</strong></h4>
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
        
    <!--End BH Break-->

    <!--Start RJ Break-->
        <section id="rj" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <hr />
                            <h4><strong>Rajasthani Breakfast Recipes</strong></h4>
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
    <!--End RJ Break-->
    
    <!--Start MH Break-->

    <section id="mh" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <br />
                            <hr />
                            <h4><strong>Marathi Breakfast Recipes</strong></h4>
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
        
    <!--End MH Break-->
    

    <!--Start BG Break-->

    <section id="bg" data-stellar-background-ratio="0.5">	
        <div class="container">
               <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                            <div class="text-center">
                            <br />
                            <hr />
                            <h4><strong>Bengali Breakfast Recipes</strong></h4>
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
        
    <!--End BG Break-->
				</div>
			</div>
		
	<!-- End Gallery -->
    </form>
</asp:Content>

