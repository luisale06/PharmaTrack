Public Class Solicitud
    Implements Visitable

    Public Property Farmacia As Integer
    Public Property Usuario As Integer
    Public Property Medicamento As Integer
    Public Property Fecha As Date

    Public Sub New(farmacia As Integer, usuario As Integer, medicamento As Integer, fecha As Date)
        Me.Farmacia = farmacia
        Me.Usuario = usuario
        Me.Medicamento = medicamento
        Me.Fecha = fecha
    End Sub

    Public Sub Aceptar(visitante As Visitante) Implements Visitable.Aceptar
        visitante.VisitarSolicitud(Me)
    End Sub
End Class