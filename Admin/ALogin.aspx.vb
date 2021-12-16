Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class Admin_ALogin
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim str As String
        str = "SELECT * from ASignUp where email=@mail and password=@password and status=1 "

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOPCAdmin;Integrated Security=True")
        Dim cmd As New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@mail", txtmail.Text)
        cmd.Parameters.AddWithValue("@password", txtpass.Text)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()

        da.Fill(dt)



        If dt.Rows.Count > 0 Then

            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            MsgBox("Login Succeeded")
            Session("email") = dt.Rows(0)(3).ToString()
            Session("A_id") = dt.Rows(0)(0).ToString()
            Response.Redirect("AHome.aspx")

        Else

            MsgBox("Access Denied..")

            con.Close()
            Response.Redirect("ALogin.aspx")
        End If
    End Sub
End Class
