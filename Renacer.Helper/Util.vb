Imports System.IO
Imports System.Web
Imports System.Text.RegularExpressions
Imports System.Net

Public Class Util

    Private Shared cRnd As New Random()

    Public Function ConvertStringToHex(ByVal Input As String, ByVal encoding As System.Text.Encoding) As String
        Dim StringBytes() As Byte = encoding.GetBytes(Input)
        Dim sbBytes As System.Text.StringBuilder = New System.Text.StringBuilder(StringBytes.Length * 2)
        For Each b As Byte In StringBytes
            sbBytes.AppendFormat("{0:X2}", b)
        Next
        Return sbBytes.ToString
    End Function

    Public Function ConvertHexToString(ByVal HexInput As String, ByVal encoding As System.Text.Encoding) As String
        Dim NumberChars As Integer = HexInput.Length
        Dim Bytes(NumberChars / 2) As Byte
        For i As Integer = 0 To NumberChars - 1
            Bytes(i / 2) = Convert.ToByte(HexInput.Substring(i, 2), 16)
            i += 1
        Next
        Return encoding.GetString(Bytes)
    End Function

    Public Shared Function CampoSeguro(ByVal InputStr As String) As String
        If InputStr Is Nothing Then Return ""

        Dim tmp As String

        tmp = InputStr.Replace("\", "\\")
        tmp = tmp.Replace("'", "\'")
        tmp = tmp.Replace("′", "\'")
        tmp = tmp.Replace("""", "\""")
        tmp = tmp.Replace(vbCr, "\r")
        tmp = tmp.Replace(vbLf, "\n")

        Return tmp
    End Function

    Public Shared Function ResolverIP(ByVal IP As String) As String
        Dim ret As String

        Try
            Dim _IP As IPAddress = IPAddress.Parse(IP)
            Dim host As IPHostEntry = Dns.GetHostEntry(_IP)

            ret = host.HostName

        Catch ex As Exception
            ret = ""
        End Try

        Return ret
    End Function

    Public Shared Function CreateGuid() As String
        Return System.Guid.NewGuid.ToString().Replace("-", "")
    End Function

    Public Shared Function IPtoLong(ByVal Ip As String) As Long
        Dim N As Integer = 256
        Dim IPBits() As String = Split(Ip, ".")
        If UBound(IPBits) = 3 Then
            Return (IPBits(0) * (256 ^ 3)) + (IPBits(1) * (256 ^ 2)) + (IPBits(2) * 256) + (IPBits(3))
        Else
            Return 0
        End If
    End Function

    Public Shared Function GenerarCodigo(ByVal Largo As Integer, Optional ByVal Caracteres As String = "") As String
        If Caracteres = "" Then
            Caracteres = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,1,2,3,4,5,6,7,8,9"
        End If

        Dim C() As String = Split(Caracteres, ",")

        Dim tmp As String = ""

        For i As Integer = 1 To Largo
            tmp &= C(cRnd.Next(0, C.GetUpperBound(0)))
        Next

        Return tmp
    End Function

    Public Shared Function EmailValido(ByVal Mail As String) As Boolean
        Try
            Mail = Mail.Trim.ToLower
            If IsDBNull(Mail) Then
                Return False
            Else
                Return Regex.IsMatch(Mail.ToString, "^(([^<>()[\]\\.,;:\s@\""]+(\.[^<>()[\]\\.,;:\s@\""]+)*)|(\"".+\""))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$")
            End If

        Catch ex As Exception
            Threading.Thread.ResetAbort()
            Return True
        End Try
    End Function

    '//-- Obtengo el Contenido de un Archivo
    Public Shared Function ObtenerArchivo(ByVal Ruta As String) As String
        Try

            Dim sr As New StreamReader(Ruta, True)
            Dim sArchivo As String
            sArchivo = sr.ReadToEnd
            sr.Close()
            sr.Dispose()
            sr = Nothing

            Return sArchivo
        Catch ex As Exception
            Return ""
        End Try
    End Function

    '//-- Escribo el contenido en un archivo
    Public Shared Sub EscribirArchivo(ByVal Ruta As String, ByVal Contenido As String)

        Dim oWrite As New FileStream(Ruta, FileMode.OpenOrCreate)
        Dim bytes As Byte() = System.Text.Encoding.GetEncoding("ISO-8859-1").GetBytes(Contenido)

        oWrite.Write(bytes, 0, bytes.Length)
        oWrite.Close()

    End Sub

    Public Shared Function CheckDBNull(ByVal Valor As Object, ByVal Tipo As String) As Object
        If Valor Is Nothing Or IsDBNull(Valor) Then
            'Valores en caso de NULO
            Select Case Tipo
                Case "System.Int16", "System.Int32", "System.Int64", "System.Decimal"
                    Return 0
                Case "System.String"
                    Return ""
                Case "System.Datetime"
                    Return CDate("1/1/1900")
                Case Else
                    Return ""
            End Select
        Else
            'Valores convertidos
            Select Case Tipo
                Case "System.Int16", "System.Int32", "System.Int64"
                    Return CInt(Valor.ToString)
                Case "System.Decimal"
                    Return CDec(Valor)
                Case "System.String"
                    Return CStr(Valor)
                Case "System.Datetime"
                    Return CDate(Valor)
                Case Else
                    Return CStr(Valor)
            End Select
        End If
    End Function

    Public Shared Function Porcentaje(ByVal Cantidad As Decimal, ByVal Total As Decimal, ByVal Decimales As Integer) As String
        Dim Ret As String
        If Total > 0 Then
            Ret = Format(CDec(Math.Round(Cantidad * 100 / Total, Decimales)), "0." & Strings.StrDup(Decimales, "0")) & "%"
        Else
            Ret = Format(0, "0." & Strings.StrDup(Decimales, "0")) & "%"
        End If

        Return Ret
    End Function


    Public Shared Sub SaveCSV(ByVal DT As DataTable, ByVal Nombre As String)
        Dim mCSV As New CSVData
        mCSV.Separator = ";"
        mCSV.TextQualifier = """"
        DT.TableName = "CSVData"
        Dim DS As New DataSet("CSV")
        DS.Tables.Add(DT.Copy)
        mCSV.CSVDataSet = DS
        Dim NombreArchivo As String = Nombre & ".csv"
        mCSV.SaveAsCSV("./files/temp/" & NombreArchivo, True)
    End Sub

End Class

Public Class JS

    Private Shared cRnd As New Random()
    Private Shared Function GenerateCode(ByVal Largo As Integer, Optional ByVal Caracteres As String = "") As String
        If Caracteres = "" Then
            Caracteres = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,1,2,3,4,5,6,7,8,9"
        End If

        Dim C() As String = Split(Caracteres, ",")

        Dim tmp As String = ""

        For i As Integer = 1 To Largo
            tmp &= C(cRnd.Next(0, C.GetUpperBound(0)))
        Next

        Return tmp
    End Function
    Public Shared Function ReplaceCharacters(ByVal NombreExportar As String) As String

        '//-- Reemplazo Caracteres extraños por su respectivo formato
        NombreExportar = Strings.Replace(NombreExportar, " ", "_")
        NombreExportar = NombreExportar.Replace("á", "a")
        NombreExportar = NombreExportar.Replace("é", "e")
        NombreExportar = NombreExportar.Replace("í", "i")
        NombreExportar = NombreExportar.Replace("ó", "o")
        NombreExportar = NombreExportar.Replace("ú", "u")
        NombreExportar = NombreExportar.Replace("Á", "A")
        NombreExportar = NombreExportar.Replace("É", "E")
        NombreExportar = NombreExportar.Replace("Í", "I")
        NombreExportar = NombreExportar.Replace("Ó", "O")
        NombreExportar = NombreExportar.Replace("Ú", "U")
        NombreExportar = NombreExportar.Replace("/", "_")
        NombreExportar = NombreExportar.Replace("\", "_")
        NombreExportar = NombreExportar.Replace("¿", "_")
        NombreExportar = NombreExportar.Replace("?", "_")
        NombreExportar = NombreExportar.Replace("–", "_")
        Return NombreExportar
    End Function
End Class
