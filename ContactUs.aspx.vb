Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class ContactUs
    Inherits System.Web.UI.Page

    
    
    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim con As New SqlConnection("Data Source=SHUBHAM\SRKING;Initial Catalog=BYOP_C;Integrated Security=True")

        Dim str As String
        str = "Insert into Cont values(@name,@email,@msg)"

        Dim cmd As New SqlCommand(str, con)

        cmd.Parameters.AddWithValue("@name", txtname.Text)
        cmd.Parameters.AddWithValue("@email", txtmail.Text)
        cmd.Parameters.AddWithValue("@msg", txtmsg.Text)


        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

        txtname.Text = ""
        txtmail.Text = ""
        txtmsg.Text = ""
    End Sub
End Class
