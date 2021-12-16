Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_AddRecipe
    Inherits System.Web.UI.Page

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

        Dim data As Boolean
        data = True

        Dim str As String
        str = "Insert into recipeinfo values(@cuisine,@rtype,@rname,@img1,@spling,@cmning,@status)"

        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@cuisine", txtcuisine.Text)
        cmd.Parameters.AddWithValue("@rtype", txtrtype.Text)
        cmd.Parameters.AddWithValue("@rname", txtrname.Text)
        cmd.Parameters.AddWithValue("@img1", i1)
        cmd.Parameters.AddWithValue("@spling", txtspecialing.Text)
        cmd.Parameters.AddWithValue("@cmning", txtcmning.Text)
        cmd.Parameters.AddWithValue("@status", Data)


        cmd.ExecuteNonQuery()
        con.Close()

        MsgBox("Data Inserted..", vbOKOnly)
        Response.Redirect("MRecipe.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Not (IsPostBack)) Then


            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
            con.Open()

            Dim query As String

            query = "select * from recipe where r_id=" & Session("r_id")

            Dim cmd1 As New SqlCommand(query, con)
            Dim da As SqlDataAdapter
            da = New SqlDataAdapter(cmd1)
            Dim dt As New DataTable
            da.Fill(dt)


            If dt.Rows.Count > 0 Then

                txtrtype.Text = Session("r_type")



            End If
            con.Close()


        End If

    End Sub
End Class
