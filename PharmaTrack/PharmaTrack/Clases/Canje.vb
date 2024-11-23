Public Class Canje
    Public Property Numero As Integer
    Public Property PuntosUsados As Integer
    Public Property Farmacia As Integer
    Public Property Usuario As Integer
    Public Property Medicamento As Integer
    Public Property Fecha As Date
    Public Property Solicitudes As List(Of Solicitud)

    Public Sub New(numero As Integer, puntosUsados As Integer, farmacia As String, usuario As String, medicamento As String, fecha As Date)
        Me.Numero = numero
        Me.PuntosUsados = puntosUsados
        Me.Farmacia = farmacia
        Me.Usuario = usuario
        Me.Medicamento = medicamento
        Me.Fecha = fecha
        Solicitudes = New List(Of Solicitud)()
    End Sub

    Public Overrides Function ToString() As String
        Return $"Número: {Numero}, Puntos Usados: {PuntosUsados}, Farmacia: {Farmacia}, Usuario: {Usuario}, Medicamento: {Medicamento}, Fecha: {Fecha.ToShortDateString()}"
    End Function
End Class