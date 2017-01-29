Imports System.Data
Imports System.Data.OleDb
Partial Class testing
    Inherits Page

    Private Sub btnPay_Click(sender As Object, e As EventArgs) Handles btnPay.Click
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

        maxRow = ds.Tables("Reservation").Rows.Count


        Dim cb As New OleDb.OleDbCommandBuilder(da)
        Dim dsNewRow As DataRow

        dsNewRow = ds.Tables("Reservation").NewRow()

        dsNewRow.Item("Email") = txtICnumber.Text
        dsNewRow.Item("TypeofSuite") = DropDownList1.Text
        dsNewRow.Item("Occupancy") = txtOccupants.Text
        dsNewRow.Item("CheckIn") = date_timepicker_start.Text
        dsNewRow.Item("CheckOut") = date_timepicker_end.Text
        dsNewRow.Item("DepositPaid") = txtConfirmAmount.Text
        ds.Tables("Reservation").Rows.Add(dsNewRow)
        cb.QuotePrefix = "["
        cb.QuoteSuffix = "]"
        da.Update(ds, "Reservation")

        MsgBox("A new reservation has been made")
    End Sub
End Class