Imports System
Imports System.Data.SqlClient
Imports System.Web.Configuration
Public Class _ModuloCanjes
    Inherits Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            hdf_Farmacia.Value = Session("FarmaciaID")
            lbl_NombreMain.Text = Session("FarmaciaNombre")
            'Form.DefaultButton = Me.lnk_Buscar.UniqueID
        End If
    End Sub
    Protected Sub lnk_BuscarUsuario_Click(sender As Object, e As EventArgs) Handles lnk_BuscarUsuario.Click
        SqlDataSourceUsuariosTodos.DataBind()
    End Sub
    Protected Sub lnk_limpiarUsuario_Click(sender As Object, e As EventArgs)
        txt_filtroUsuarios.Text = ""
        SqlDataSourceUsuariosTodos.DataBind()
    End Sub
    Protected Sub btn_Usuarios_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 0
    End Sub
    Protected Sub btn_Historial_Click(ByVal sender As Object, ByVal e As EventArgs)
        MultiViewMain.ActiveViewIndex = 1
    End Sub
End Class