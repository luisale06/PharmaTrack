Imports System
Imports System.Data.SqlClient
Imports System.Web.Configuration
Public Class _Main
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CargarDatosUsuario(Session("UserId"))
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
    Protected Sub btnActualizar_Click(sender As Object, e As EventArgs) Handles btn_actualizarPerfil.Click

        Dim nombre As String = txt_nombre.Text.Trim()
        Dim primerApellido As String = txt_PApellido.Text.Trim()
        Dim segundoApellido As String = txt_SApellido.Text.Trim()
        Dim cedula As String = txt_cedula.Text.Trim()
        Dim telefono As String = txt_telefono.Text.Trim()
        Dim correo As String = txt_correo.Text.Trim()
        Dim contrasena As String = txt_contraseña.Text.Trim()
        Dim confirmarContrasena As String = txt_confirma_contraseña.Text.Trim()

        If contrasena <> confirmarContrasena Then
            lbl_msj_error.Text = "Las contraseñas no coinciden. Por favor, verifique."
            lbl_msj_error.Visible = True
            Return
        End If

        Dim PharmaConnectionString As String = WebConfigurationManager.ConnectionStrings("PharmaConnectionString").ConnectionString

        Using conexion As New SqlConnection(PharmaConnectionString)
            Dim comando As New SqlCommand("Man_Usuarios", conexion)
            comando.CommandType = CommandType.StoredProcedure

            comando.Parameters.AddWithValue("@Nombre", nombre)
            comando.Parameters.AddWithValue("@Apellido1", primerApellido)
            comando.Parameters.AddWithValue("@Apellido2", segundoApellido)
            comando.Parameters.AddWithValue("@Cedula", cedula)
            comando.Parameters.AddWithValue("@Telefono", telefono)
            comando.Parameters.AddWithValue("@Correo", correo)
            comando.Parameters.AddWithValue("@Contrasena", contrasena)
            comando.Parameters.AddWithValue("@Operacion", 2)

            Try
                conexion.Open()
                comando.ExecuteNonQuery()
                lbl_msj_error.Text = "Información del usuario actualizada exitosamente."
                lbl_msj_error.ForeColor = System.Drawing.Color.Green
                lbl_msj_error.Visible = True
            Catch ex As Exception
                lbl_msj_error.Text = "Error al actualizar la información del usuario"
                lbl_msj_error.ForeColor = System.Drawing.Color.Red
                lbl_msj_error.Visible = True
            End Try
        End Using
    End Sub
    Protected Sub CargarDatosUsuario(Usuario As Int32)
        Dim PharmaConnectionString As String = WebConfigurationManager.ConnectionStrings("PharmaConnectionString").ConnectionString

        Using conexion As New SqlConnection(PharmaConnectionString)
            Dim comando As New SqlCommand("Get_Usuarios", conexion)
            comando.CommandType = CommandType.StoredProcedure
            comando.Parameters.AddWithValue("@Usuario", Usuario)
            comando.Parameters.AddWithValue("@Operacion", 1)

            Try
                conexion.Open()
                Dim reader As SqlDataReader = comando.ExecuteReader()

                If reader.Read() Then
                    txt_nombre.Text = reader("Nombre").ToString()
                    txt_PApellido.Text = reader("Apellido1").ToString()
                    txt_SApellido.Text = reader("Apellido2").ToString()
                    txt_cedula.Text = reader("Cedula").ToString()
                    txt_telefono.Text = reader("Telefono").ToString()
                    txt_correo.Text = reader("Correo").ToString()
                    ' Para seguridad, puedes optar por no llenar el campo de contraseña aquí.
                    txt_contraseña.Text = ""
                    txt_confirma_contraseña.Text = ""
                Else
                    lbl_msj_error.Text = "Usuario no encontrado."
                    lbl_msj_error.ForeColor = System.Drawing.Color.Red
                    lbl_msj_error.Visible = True
                End If
            Catch ex As Exception
                lbl_msj_error.Text = "Error al cargar los datos del usuario"
                lbl_msj_error.ForeColor = System.Drawing.Color.Red
                lbl_msj_error.Visible = True
            End Try
        End Using
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