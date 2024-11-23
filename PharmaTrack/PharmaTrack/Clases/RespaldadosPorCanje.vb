Public Class RespaldadosPorCanje
    Implements Strategy


    Public Function ObtenerSolicitudes(solicitudes As List(Of Solicitud)) As List(Of Solicitud) Implements Strategy.ObtenerSolicitudes
        If solicitudes Is Nothing OrElse solicitudes.Count = 0 Then
            Return New List(Of Solicitud)()
        End If

        Return FiltrarPorCanje(solicitudes)
    End Function

    Private Function FiltrarPorCanje(solicitudes As List(Of Solicitud)) As List(Of Solicitud)
        Throw New NotImplementedException("No implementado")
    End Function
End Class