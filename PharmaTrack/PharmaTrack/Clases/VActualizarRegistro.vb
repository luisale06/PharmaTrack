Public Class VActualizarRegistro
    Implements Visitante

    Private solicitudes As List(Of Solicitud)

    Public Sub New()
        solicitudes = New List(Of Solicitud)()
    End Sub


    Public Sub VisitarSolicitud(s As Solicitud) Implements Visitante.VisitarSolicitud
        If s IsNot Nothing Then
            solicitudes.Add(s)
        End If
    End Sub

    Public Sub ActualizarRegistros()
        Throw New NotImplementedException("No implementado")
    End Sub

    Public Function FiltrarPorCliente(usuario As Integer) As List(Of Solicitud)
        Return solicitudes.Where(Function(s) s.Usuario = usuario).ToList()
    End Function
End Class