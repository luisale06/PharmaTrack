Public Class _Main
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            pnl_MainAdmin.Visible = False
            pnl_MainOperativo.Visible = False
            pnl_MainCliente.Visible = False

            Dim rol As Integer = Convert.ToInt32(Session("Rol"))

            Select Case rol
                Case 1
                    pnl_MainAdmin.Visible = True
                Case 2
                    pnl_MainOperativo.Visible = True
                Case Else
                    pnl_MainCliente.Visible = True
            End Select
        End If
    End Sub
    Protected Sub btn_Perfil_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 0
    End Sub

    Protected Sub btn_Usuarios_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 1
    End Sub

    Protected Sub btn_Facturas_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 2
    End Sub

    Protected Sub btn_Productos_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 3
    End Sub

    Protected Sub btn_Estadisticas_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 4
    End Sub
    Protected Sub BtnResumen_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 5
    End Sub

    Protected Sub BtnRegistrarFactura_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 6
    End Sub

    Protected Sub BtnHistorial_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 7
    End Sub

    Protected Sub BtnCanjear_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 8
    End Sub
End Class