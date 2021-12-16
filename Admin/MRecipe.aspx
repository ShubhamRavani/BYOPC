<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/ASite.master" AutoEventWireup="false" CodeFile="MRecipe.aspx.vb" Inherits="Admin_MRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>MANAGE RECIPE</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <form id="MRecipe" runat="server">

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
                        
                        <h2>Manage Recipe</h2>
                    </div>
				</div>
			</div>
            <div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12">
                    <div class="contact-block">
					
						<div class="row">
                            <div class="col-md-6">
                        <%
                            If (Request.QueryString("i_id") <> "") Then
                         %>
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

							        <asp:Button ID="btnSubmit" runat="server" class="btn btn-common" Text="Update" Height="49px" />
                                    
                                <%
                                End If
                                %>
                                    
                                </div>
                            </div>
                            </div>

                            </div>
                        </div>

                        <br />
                        <div class="text-center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="i_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" BorderStyle="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="i_id" HeaderText="i_id" InsertVisible="False" ReadOnly="True" SortExpression="i_id" />
                                <asp:BoundField DataField="cuisine" HeaderText="cuisine" SortExpression="cuisine" />
                                <asp:BoundField DataField="r_type" HeaderText="r_type" SortExpression="r_type" />
                                <asp:BoundField DataField="r_name" HeaderText="r_name" SortExpression="r_name" />
                               <%-- <asp:BoundField DataField="img1" HeaderText="img1" SortExpression="img1" />--%>
                                <asp:BoundField DataField="special_ing" HeaderText="special_ing" SortExpression="special_ing" />
                                <asp:BoundField DataField="cmn_ing" HeaderText="cmn_ing" SortExpression="cmn_ing" />
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />

                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="btnupdate" runat="server" class="btn btn-common" Text="Update" CommandName="UP" CommandArgument='<%#Eval("i_id")%>' />
                                        <asp:Button ID="btndelete" runat="server" class="btn btn-common" Text="Delete" CommandName="DE" CommandArgument='<%#Eval("i_id")%>' />

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BYOP_CConnectionString %>" DeleteCommand="DELETE FROM [recipeinfo] WHERE [i_id] = @original_i_id AND [cuisine] = @original_cuisine AND [r_type] = @original_r_type AND [r_name] = @original_r_name AND (([img1] = @original_img1) OR ([img1] IS NULL AND @original_img1 IS NULL)) AND [special_ing] = @original_special_ing AND [cmn_ing] = @original_cmn_ing AND [status] = @original_status" InsertCommand="INSERT INTO [recipeinfo] ([cuisine], [r_type], [r_name], [img1], [special_ing], [cmn_ing], [status]) VALUES (@cuisine, @r_type, @r_name, @img1, @special_ing, @cmn_ing, @status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [recipeinfo]" UpdateCommand="UPDATE [recipeinfo] SET [cuisine] = @cuisine, [r_type] = @r_type, [r_name] = @r_name, [img1] = @img1, [special_ing] = @special_ing, [cmn_ing] = @cmn_ing, [status] = @status WHERE [i_id] = @original_i_id AND [cuisine] = @original_cuisine AND [r_type] = @original_r_type AND [r_name] = @original_r_name AND (([img1] = @original_img1) OR ([img1] IS NULL AND @original_img1 IS NULL)) AND [special_ing] = @original_special_ing AND [cmn_ing] = @original_cmn_ing AND [status] = @original_status">
                            <DeleteParameters>
                                <asp:Parameter Name="original_i_id" Type="Int32" />
                                <asp:Parameter Name="original_cuisine" Type="String" />
                                <asp:Parameter Name="original_r_type" Type="String" />
                                <asp:Parameter Name="original_r_name" Type="String" />
                                <asp:Parameter Name="original_img1" Type="String" />
                                <asp:Parameter Name="original_special_ing" Type="String" />
                                <asp:Parameter Name="original_cmn_ing" Type="String" />
                                <asp:Parameter Name="original_status" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cuisine" Type="String" />
                                <asp:Parameter Name="r_type" Type="String" />
                                <asp:Parameter Name="r_name" Type="String" />
                                <asp:Parameter Name="img1" Type="String" />
                                <asp:Parameter Name="special_ing" Type="String" />
                                <asp:Parameter Name="cmn_ing" Type="String" />
                                <asp:Parameter Name="status" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="cuisine" Type="String" />
                                <asp:Parameter Name="r_type" Type="String" />
                                <asp:Parameter Name="r_name" Type="String" />
                                <asp:Parameter Name="img1" Type="String" />
                                <asp:Parameter Name="special_ing" Type="String" />
                                <asp:Parameter Name="cmn_ing" Type="String" />
                                <asp:Parameter Name="status" Type="Int32" />
                                <asp:Parameter Name="original_i_id" Type="Int32" />
                                <asp:Parameter Name="original_cuisine" Type="String" />
                                <asp:Parameter Name="original_r_type" Type="String" />
                                <asp:Parameter Name="original_r_name" Type="String" />
                                <asp:Parameter Name="original_img1" Type="String" />
                                <asp:Parameter Name="original_special_ing" Type="String" />
                                <asp:Parameter Name="original_cmn_ing" Type="String" />
                                <asp:Parameter Name="original_status" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form>
</asp:Content>

