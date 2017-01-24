Imports System.Data.OleDb
Imports System.Data

Partial Class Staff_Manager_Default
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim con As New OleDbConnection(connect)
        Dim query As String = ("SELECT * FROM Reservation WHERE ReservationID = " & TextBox2.Text & ";")
        Dim cmd As New OleDbCommand(query, con)
        Dim fname As String
        Dim booking As Integer
        Dim result As Boolean = False

        con.Open()

        fname = TextBox1.Text
        If (IsNumeric(TextBox2.Text)) = True Then
            booking = TextBox2.Text
        End If

        If booking = Nothing Then
            Label1.Text = "b"
        Else
            Dim rd As OleDbDataReader = cmd.ExecuteReader
            While rd.Read
                If rd.Item("ReservationID") = booking Then
                    checkin(booking)
                    result = True
                Else
                    result = False
                End If
            End While
        End If
        If result = True Then
            MsgBox("Checked In")
        Else
            MsgBox("Check Booking ID")
        End If

    End Sub

    Private Sub checkin(ByVal booking As Integer)

        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & "Data Source=|DataDirectory|Hote.mdb"
        Dim con As New OleDbConnection(connect)
        Dim checkin As Integer = 2
        con.Open()
        Dim query1 As String = ("UPDATE Reservation SET Status = 2 WHERE ReservationID = @booking")
        Dim cmd1 As New OleDbCommand(query1, con)

        cmd1.Parameters.AddWithValue("booking", booking)
        cmd1.ExecuteNonQuery()
        con.Close()

    End Sub

End Class
