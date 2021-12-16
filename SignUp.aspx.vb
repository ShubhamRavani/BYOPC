Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class SignUp
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click

        Dim data As Boolean

        data = True


        Dim str As String
        str = "Insert into SignUp values(@un,@fn,@ln,@email,@password,@status)"
        Dim cmd As New SqlCommand(str, con)


        cmd.Parameters.AddWithValue("@un", txtuname.Text)
        cmd.Parameters.AddWithValue("@fn", txtfirst.Text)
        cmd.Parameters.AddWithValue("@ln", txtlast.Text)
        cmd.Parameters.AddWithValue("@email", txtemail.Text)
        cmd.Parameters.AddWithValue("@password", txtpass.Text)
        cmd.Parameters.AddWithValue("@status", data)

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

        End If

    End Sub

End Class
