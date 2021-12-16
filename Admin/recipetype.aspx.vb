Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class Admin_recipetype
    Inherits System.Web.UI.Page

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click

        Dim str As String
        str = "select * from recipe"

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
        Dim cmd As New SqlCommand(str, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()

        da.Fill(dt)



        If dt.Rows.Count > 0 Then

            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Session("r_id") = dt.Rows(0)(0).ToString()
            Session("r_type") = ddlrtype.SelectedItem.Text

            Response.Redirect("AddRecipe.aspx")

        Else

        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("A_id") = "") Then
            Response.Redirect("ALogin.aspx")
        End If
    End Sub
End Class
