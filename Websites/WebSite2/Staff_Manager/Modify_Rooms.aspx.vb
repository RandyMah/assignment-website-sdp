Imports System.Data
Partial Class Staff_Manager_Default
    Inherits System.Web.UI.Page
    Dim con As New OleDb.OleDbConnection

    Dim dbProvider As String
    Dim dbSource As String
    Dim da As New OleDb.OleDbDataAdapter
    Dim ds As New DataSet
    Dim sql As String
    Dim maxRow As Integer
    Dim cor As Integer
    Dim counter As Integer
    Dim pos As Integer

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        dbProvider = "PROVIDER=Microsoft.JET.OLEDB.4.0;"
        dbSource = "Data Source= C:\Users\dapel\Documents\mainPage-sdp v2\Websites\WebSite2\Hote.mdb"
        con.ConnectionString = dbProvider & dbSource
        con.Open()



        sql = "SELECT * FROM RoomDetails"
        da = New OleDb.OleDbDataAdapter(sql, con)
        da.Fill(ds, "ModifyRoom")

        maxRow = ds.Tables("ModifyRoom").Rows.Count

        For counter = 0 To maxRow - 1 Step 1
            If TextBox1.Text = ds.Tables("ModifyRoom").Rows(counter).Item("RoomID") Then
                Label1.Text = ds.Tables("ModifyRoom").Rows(counter).Item("RoomType")
                Label2.Text = ds.Tables("ModifyRoom").Rows(counter).Item("Beds")
                Label3.Text = ds.Tables("ModifyRoom").Rows(counter).Item("Towels")
                cor = 1
                pos = counter
            End If
        Next
        If cor = 0 Then
            MsgBox("The ID you search doesn't exist.")
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        dbProvider = "PROVIDER=Microsoft.JET.OLEDB.4.0;"
        dbSource = "Data Source= C:\Users\dapel\Documents\mainPage-sdp v2\Websites\WebSite2\Hote.mdb"
        con.ConnectionString = dbProvider & dbSource
        con.Open()



        sql = "SELECT * FROM RoomDetails"
        da = New OleDb.OleDbDataAdapter(sql, con)
        da.Fill(ds, "ModifyRoom")

        maxRow = ds.Tables("ModifyRoom").Rows.Count
        Dim cb As New OleDb.OleDbCommandBuilder(da)
        ds.Tables("ModifyRoom").Rows(pos).Item("RoomType") = DropDownList1.SelectedItem.Text
        ds.Tables("ModifyRoom").Rows(pos).Item("Beds") = TextBox2.Text
        ds.Tables("ModifyRoom").Rows(pos).Item("Towels") = TextBox3.Text

        da.Update(ds, "ModifyRoom")

        Label1.Text = DropDownList1.SelectedItem.Text
        Label2.Text = TextBox2.Text
        Label3.Text = TextBox3.Text

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Panel1.Visible = True
        Panel2.Visible = False


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Panel1.Visible = False
        Panel2.Visible = True

        DropDownList1.SelectedItem.Text = Label1.Text
        TextBox2.Text = Label2.Text
        TextBox3.Text = Label3.Text
    End Sub

End Class
