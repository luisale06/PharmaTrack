Imports System.Collections.ObjectModel

Public Class ModuloCanje

    Private Property Solicitudes As List(Of Solicitud)
    Private Property Canjes As List(Of Canje)

    Private Property SCronologico As Cronologico
    Private Property SRespaldadosPorCanje As RespaldadosPorCanje
    Private Property BuscadorSolicitudes As BuscadorSolicitudes

    Private Property VObtenerCanjeables As VObtenerCanjeables
    Private Property VActualizarRegistro As VActualizarRegistro
    Private Property VObtenerRegistroDeCanje As VObtenerRegistroDeCanje
    'Private Property ConexionBD As ConexionBaseDatos


    Public Sub New()
        Solicitudes = New List(Of Solicitud)()
        Canjes = New List(Of Canje)()

        Me.BuscadorSolicitudes = New BuscadorSolicitudes()
        SCronologico = New Cronologico()
        SRespaldadosPorCanje = New RespaldadosPorCanje()

        Me.VObtenerCanjeables = New VObtenerCanjeables()
        Me.VActualizarRegistro = New VActualizarRegistro()
        Me.VObtenerRegistroDeCanje = New VObtenerRegistroDeCanje()
    End Sub


    Private Sub ObtenerSolicitudes()
        Throw New NotImplementedException("No implementado")
        'Solicitudes = ConexionBD.ObtenerSolicitudes()
    End Sub
    Private Sub ObtenerCanjes()
        Throw New NotImplementedException("No implementado")
        'Canjes = ConexionBD.ObtenerCanjes()
    End Sub





    Public Function VerDetallesParaCanjear(producto As String) As String
        Throw New NotImplementedException("No implementado")
    End Function

    Public Sub ActualizarRegistrosCanjeados(canjeadas As List(Of Solicitud))

        VActualizarRegistro.VaciarSolicitudes()
        For Each solicitud In canjeadas
            VActualizarRegistro.VisitarSolicitud(solicitud)
        Next
        VActualizarRegistro.ActualizarRegistros()
    End Sub

    Public Sub CanjearProducto(producto As String)
        Throw New NotImplementedException("No implementado")
    End Sub





    Public Function ObtenerSolicitudesCanjeadas(identificacion As Integer) As List(Of Solicitud)

        ObtenerSolicitudes()
        BuscadorSolicitudes.SetStrategy(SRespaldadosPorCanje)
        Return BuscadorSolicitudes.ObtenerSolicitudes(Solicitudes)
    End Function

    Public Function ObtenerSolicitudesPorCliente(identificacion As Integer) As List(Of Solicitud)

        ObtenerSolicitudes()

        VObtenerCanjeables.VaciarSolicitudes()
        For Each solicitud In Solicitudes
            VObtenerCanjeables.VisitarSolicitud(solicitud)
        Next
        VObtenerCanjeables.FiltrarPorCliente(identificacion)

        Return VObtenerCanjeables.ObtenerSolicitudes()
    End Function

    Public Function ObtenerSolicitudesCronologicamente(identificacion As Integer) As List(Of Solicitud)

        ObtenerSolicitudes()
        BuscadorSolicitudes.SetStrategy(SCronologico)
        Return BuscadorSolicitudes.ObtenerSolicitudes(Solicitudes)
    End Function

End Class