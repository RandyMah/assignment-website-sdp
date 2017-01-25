
Imports System.Data
Partial Class testing
    Inherits Page

    Private Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        TxtCheckin.Text = Calendar1.SelectedDate
    End Sub

    Private Sub Calendar2_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar2.SelectionChanged
        TxtCheckout.Text = Calendar2.SelectedDate
    End Sub
End Class
