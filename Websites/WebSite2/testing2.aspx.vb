Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Partial Class testing2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Using connection As New OleDbConnection(connectionString)
            Dim command As New OleDbCommand(queryString, connection)

            connection.Open()

            Dim reader As OleDbDataReader = command.ExecuteReader()
            While reader.Read()
                Console.WriteLine(reader(0).ToString())
            End While
            reader.Close()
        End Using
    End Sub
End Class