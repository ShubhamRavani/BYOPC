Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim str As String
        str = "SELECT * from SignUp where email=@mail and password=@password "

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
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
            MsgBox("Login Succeed")
            Session("email") = dt.Rows(0)(4).ToString()
            Session("u_name") = dt.Rows(0)(1).ToString()
            Session("u_id") = dt.Rows(0)(0).ToString()
            Response.Redirect("Home.aspx")

        Else

            MsgBox("Access Denied..")

            con.Close()
            Response.Redirect("Login.aspx")
        End If

    End Sub
End Class
