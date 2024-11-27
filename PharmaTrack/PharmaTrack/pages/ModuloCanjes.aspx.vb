Imports System
Imports System.Data.SqlClient
Imports System.Web.Configuration
Public Class _ModuloCanjes
    Inherits Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            hdf_Farmacia.Value = Session("FarmaciaID")
            lbl_NombreMain.Text = Session("FarmaciaNombre")
            Form.DefaultButton = Me.lnk_BuscarUsuario.UniqueID
        End If
    End Sub
    Protected Sub BtnCanjear_Click(sender As Object, e As EventArgs)
        ' Accede a la fila de la tabla principal (puede necesitar un índice o usar un bucle si es necesario)
        For Each row As GridViewRow In gv_UsuariosFarmacia.Rows
            If row.RowType = DataControlRowType.DataRow Then
                ' Encuentra el GridView hijo en la fila actual
                Dim gvPuntaje As GridView = CType(row.FindControl("gv_Puntaje"), GridView)

                If gvPuntaje IsNot Nothing Then
                    ' Recorre las filas del GridView hijo
                    For Each childRow As GridViewRow In gvPuntaje.Rows
                        If childRow.RowType = DataControlRowType.DataRow Then
                            ' Accede a los HiddenField de la fila actual del GridView hijo
                            Dim hfUsuario As HiddenField = CType(childRow.FindControl("hdf_Usuario"), HiddenField)
                            Dim hfMedicamento As HiddenField = CType(childRow.FindControl("hf_MedicamentoCanje"), HiddenField)
                            Dim hfCostoCanje As HiddenField = CType(childRow.FindControl("hf_CostoCanje"), HiddenField)

                            ' Verifica que los controles se han encontrado y obtén sus valores
                            If hfUsuario IsNot Nothing AndAlso hfMedicamento IsNot Nothing AndAlso hfCostoCanje IsNot Nothing Then
                                Dim usuarioId As Integer = Convert.ToInt32(hfUsuario.Value)
                                Dim medicamentoId As Integer = Convert.ToInt32(hfMedicamento.Value)
                                Dim costoCanje As Decimal = Convert.ToDecimal(hfCostoCanje.Value)

                                ' Ahora puedes usar estos valores como desees
                                ' Llama a tu procedimiento almacenado o realiza la lógica que necesites
                            End If
                        End If
                    Next
                End If
            End If
        Next
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