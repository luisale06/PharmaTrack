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




    Public Function ObtenerSolicitudesPorCliente(identificacion As Integer) As List(Of Solicitud)
        Throw New NotImplementedException("No implementado")
    End Function

    Public Function VerDetallesParaCanjear(producto As String) As String
        Throw New NotImplementedException("No implementado")
    End Function

    Public Sub ActualizarRegistrosCanjeados()
        Throw New NotImplementedException("No implementado")
    End Sub

    Public Sub CanjearProducto(producto As String)
        Throw New NotImplementedException("No implementado")
    End Sub

    Public Function ObtenerSolicitudesCanjeadas(identificacion As Integer) As List(Of Canje)
        Throw New NotImplementedException("No implementado")
    End Function

End Class