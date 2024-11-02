Public Class _Main
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnResumen_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiView1.ActiveViewIndex = 0
    End Sub

    Protected Sub BtnRegistrarFactura_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiView1.ActiveViewIndex = 1
    End Sub

    Protected Sub BtnHistorial_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiView1.ActiveViewIndex = 2
    End Sub

    Protected Sub BtnCanjear_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiView1.ActiveViewIndex = 3
    End Sub
End Class