Imports System.Data
Partial Class Staff_Manager_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New OleDb.OleDbConnection

        Dim dbProvider As String
        Dim dbSource As String
        Dim da As New OleDb.OleDbDataAdapter
        Dim ds As New DataSet
        Dim sql As String
        Dim maxRow As Integer
        dbProvider = "PROVIDER=Microsoft.JET.OLEDB.4.0;"
        dbSource = "Data Source=|DataDirectory|Hote.mdb"
        con.ConnectionString = dbProvider & dbSource
        con.Open()



        sql = "SELECT * FROM RoomDetails"
        da = New OleDb.OleDbDataAdapter(sql, con)
        da.Fill(ds, "RoomD")

        maxRow = ds.Tables("RoomD").Rows.Count


        Dim cb As New OleDb.OleDbCommandBuilder(da)
        Dim dsNewRow As DataRow

        dsNewRow = ds.Tables("RoomD").NewRow()

        dsNewRow.Item("Description") = TextBox1.Text
        dsNewRow.Item("RoomType") = DropDownList1.SelectedItem.Text

        ds.Tables("RoomD").Rows.Add(dsNewRow)
        da.Update(ds, "RoomD")

        MsgBox("Room Successfully Added")


    End Sub
End Class
