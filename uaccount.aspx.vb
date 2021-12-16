Imports System.Data
Imports System.Data.Sql
Imports System.Drawing
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class uaccount
    Inherits System.Web.UI.Page

    Protected Sub Btnsubmit_Click(sender As Object, e As EventArgs) Handles Btnsubmit.Click

        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
        con.Open()

        Dim str As String
        str = "Update SignUp set user_name=@un, firstname=@fn, lastname=@ln, email=@mail, password=@p where u_id=" & Session("u_id")


        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@un", txtuname.Text)
        cmd.Parameters.AddWithValue("@fn", txtfirst.Text)
        cmd.Parameters.AddWithValue("@ln", txtlast.Text)
        cmd.Parameters.AddWithValue("@mail", txtemail.Text)
        cmd.Parameters.AddWithValue("@p", txtpass.Text)


        cmd.ExecuteNonQuery()

        con.Close()

        lblMessage.ForeColor = Color.Green
        lblMessage.Text = "Updated."
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Not (IsPostBack)) Then

            Dim con As SqlConnection
            con = New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")
            con.Open()

            Dim query As String

            query = "SELECT * from SignUp WHERE u_id=" & Session("u_id")

            Dim cmd As New SqlCommand(query, con)
            Dim da As SqlDataAdapter
            da = New SqlDataAdapter(cmd)
            Dim dt As New DataTable
            da.Fill(dt)

            If dt.Rows.Count > 0 Then

                txtuname.Text = dt.Rows(0)(1)
                txtfirst.Text = dt.Rows(0)(2)
                txtlast.Text = dt.Rows(0)(3)
                txtemail.Text = dt.Rows(0)(4)
                txtpass.Text = dt.Rows(0)(5)

            End If
            con.Close()
        End If

    End Sub
End Class
