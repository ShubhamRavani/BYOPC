Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_MRecipe
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim uid As String
        uid = Request.QueryString("i_id")
        If ((Not (IsPostBack)) And Request.QueryString("ed_com") = "") Then


            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
            con.Open()

            Dim query As String




            query = "select * from  recipeinfo"

            Dim cmd As New SqlCommand(query, con)
            Dim da As SqlDataAdapter
            da = New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            da.Fill(dt)

            If (dt.Rows.Count > 0) Then

                GridView1.DataBind()
            End If



            con.Close()

        Else

            If (uid <> "" And Request.QueryString("ed_com") <> "" And Session("ed") = "") Then


                Dim con As SqlConnection
                con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
                con.Open()

                Dim query As String


                Session("ed") = "ok"


                query = "select * from recipeinfo  where i_id=" + uid


                Dim cmd As New SqlCommand(query, con)
                Dim da As SqlDataAdapter
                da = New SqlDataAdapter(cmd)
                Dim dt As New DataTable
                da.Fill(dt)

                If (dt.Rows.Count > 0) Then
                    txtcuisine.Text = dt.Rows(0)(1)
                    txtrtype.Text = dt.Rows(0)(2)
                    txtrname.Text = dt.Rows(0)(3)
                    txtspecialing.Text = dt.Rows(0)(5)
                    txtcmning.Text = dt.Rows(0)(6)

                End If



                con.Close()


                query = "select * from recipeinfo"

                cmd = New SqlCommand(query, con)

                da = New SqlDataAdapter(cmd)
                dt = New DataTable
                da.Fill(dt)

                If (dt.Rows.Count > 0) Then

                    GridView1.DataBind()
                End If

                con.Close()

            End If
        End If
    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        Dim r_name As String
        r_name = e.CommandName
        Dim id As String

        id = e.CommandArgument

        If (r_name = "DE") Then
            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
            con.Open()

            Dim query As String




            query = "delete from recipeinfo where i_id=" + id

            Dim cmd As New SqlCommand(query, con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("MRecipe.aspx")

        Else
            Dim que_st As String
            que_st = "MRecipe.aspx?ed_com=UP&&i_id=" + id

            Response.Redirect(que_st)

        End If
    End Sub
    Protected i1 As String
    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim hfc As HttpFileCollection = Request.Files
        If (hfc.Count - 1 < 6) Then

            Dim db_img(6) As String

            For i As Integer = 0 To hfc.Count - 1


                Dim hpf As HttpPostedFile = hfc(i)
                '            ' Random number code
                Dim stor_no As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
                Dim random_no As New Random
                Dim sb As New StringBuilder
                For ii As Integer = 1 To 14
                    Dim idx As Integer = random_no.Next(0, 35)
                    sb.Append(stor_no.Substring(idx, 1))
                Next
                Dim new_path As String
                new_path = sb.ToString()

                hpf.SaveAs(Server.MapPath("~/Admin/images/RecipeImg/") + new_path + hpf.FileName)

                Dim db_path As String
                db_path = "Admin/images/RecipeImg/" + new_path + hpf.FileName
                db_img(i) = db_path.ToString()

            Next

            If (db_img(0) = "") Then
                i1 = ""
            Else
                i1 = db_img(0)
            End If


        Else
            MsgBox("Please Select Image < 6")
        End If

        Dim con As SqlConnection
        con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
        con.Open()

        Dim query As String

        query = "Update recipeinfo set cuisine=@cuisine,r_type=@rtype,r_name=@rname,img1=@img1,special_ing=@spling,cmn_ing=@cmning where i_id=" + Request.QueryString("i_id")

        Dim cmd As New SqlCommand(query, con)

        cmd.Parameters.AddWithValue("@cuisine", txtcuisine.Text)
        cmd.Parameters.AddWithValue("@rtype", txtrtype.Text)
        cmd.Parameters.AddWithValue("@rname", txtrname.Text)
        cmd.Parameters.AddWithValue("@img1", i1)
        cmd.Parameters.AddWithValue("@spling", txtspecialing.Text)
        cmd.Parameters.AddWithValue("@cmning", txtcmning.Text)

        cmd.ExecuteNonQuery()
        con.Close()

        Session("ed") = ""

        MsgBox("Data Updated.. ", vbOKOnly)
        Response.Redirect("MRecipe.aspx")
    End Sub
End Class
