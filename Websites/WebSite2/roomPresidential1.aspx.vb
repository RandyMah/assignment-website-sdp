
Partial Class roomPresidential1
    Inherits System.Web.UI.Page

    Private Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged
        TxtCheckin.Text = Calendar1.SelectedDate.ToShortDateString
    End Sub
End Class
