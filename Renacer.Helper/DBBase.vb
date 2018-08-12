Imports MySql.Data.MySqlClient
Imports System.Configuration
Imports System.Collections.Generic

Public Class DBBase
    Property _StrConnection As String = ""
    Public Tabla As String = ""
    Public idTabla As String = ""
    Public OrderByDefault As String = ""
    Public Property listaCampos As String = ""


    Protected Function ExecuteNonQuery(ByVal strSQL As String) As Integer
        Dim DB As New MySqlConnection(_StrConnection)

        Dim CMD As MySqlCommand = New MySqlCommand(strSQL, DB)

        Try
            'Abro Base de Datos
            DB.Open()

            ExecuteNonQuery = CType(CMD.ExecuteNonQuery, Int32)

        Catch ex As Exception
            If DB.State = ConnectionState.Open Then
                'Es un error de consulta SQL
                Dim SQLLog As String = SQL_Insert("logs_error_sql", "Fecha,Descripcion,Consulta", Date.Now, "ExecuteDataTable", strSQL)

                ' ExecuteNonQuery(SQLLog)
            Else
                'Es un error en la apertura de la BD, no puedo registrar en la Base de Datos el Log
            End If

            Throw New Exception(strSQL)

        Finally
            'Cierro Base de Datos y libero memoria
            If CMD IsNot Nothing Then
                CMD.Dispose()
                CMD = Nothing
            End If

            If DB IsNot Nothing Then
                If DB.State <> ConnectionState.Closed Then DB.Close()
                DB.Dispose()
                DB = Nothing
            End If
        End Try

    End Function

    Public Function ExecuteScalar(ByVal strSQL As String) As Object
        Dim DB As New MySqlConnection(_StrConnection)

        Dim CMD As MySqlCommand = New MySqlCommand(strSQL, DB)

        Try
            'Abro Base de Datos
            DB.Open()

            ExecuteScalar = CMD.ExecuteScalar

        Catch ex As Exception
            If DB.State = ConnectionState.Open Then
                'Es un error de consulta SQL
                Dim SQLLog As String = SQL_Insert("logs_error_sql", "Fecha,Descripcion,Consulta", Date.Now, "ExecuteDataTable", strSQL)
                ExecuteNonQuery(SQLLog)
            Else
                'Es un error en la apertura de la BD, no puedo registrar en la Base de Datos el Log
            End If

            Throw ex

        Finally
            'Cierro Base de Datos y libero memoria
            If CMD IsNot Nothing Then
                CMD.Dispose()
                CMD = Nothing
            End If

            If DB IsNot Nothing Then
                If DB.State <> ConnectionState.Closed Then DB.Close()
                DB.Dispose()
                DB = Nothing
            End If
        End Try

    End Function

    Public Shared Function CheckDBNull(ByVal Valor As Object, ByVal Tipo As String) As Object
        If Valor Is Nothing Or IsDBNull(Valor) Then
            'Valores en caso de NULO
            Select Case Tipo
                Case "System.Int16", "System.Int32", "System.UInt32", "System.Int64", "System.UInt64", "System.Decimal"
                    Return 0
                Case "System.String"
                    Return ""
                Case "System.Datetime"
                    Return CDate("01/01/1900")
                Case Else
                    Return ""
            End Select
        Else
            'Valores convertidos
            Select Case Tipo
                Case "System.Int16", "System.Int32"
                    Return CInt(Valor.ToString)
                Case "System.UInt32"
                    Return CUInt(Valor.ToString)
                Case "System.UInt64"
                    Return CULng(Valor.ToString)
                Case "System.Int64"
                    Return CLng(Valor.ToString)
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

    Public Function ExecuteDataTable(ByVal strSQL As String) As DataTable
        Dim DB As New MySqlConnection(_StrConnection)

        Dim DS As New DataSet
        Dim DA As MySqlDataAdapter = Nothing

        'Abro Base de Datos
        Try
            DB.Open()

            DA = New MySqlDataAdapter(strSQL, DB)
            DA.Fill(DS, "Registros")

            ExecuteDataTable = DS.Tables(0)

        Catch ex As Exception
            If DB.State = ConnectionState.Open Then
                'Es un error de consulta SQL
                Dim SQLLog As String = SQL_Insert("logs_error_sql", "Fecha,Descripcion,Consulta", Date.Now, "", strSQL)
                ExecuteNonQuery(SQLLog)
            Else
                'Es un error en la apertura de la BD, no puedo registrar en la Base de Datos el Log
            End If

            Throw ex

        Finally
            'Cierro Base de Datos y libero memoria
            If DA IsNot Nothing Then
                DA.Dispose()
                DA = Nothing
            End If

            If DB IsNot Nothing Then
                If DB.State <> ConnectionState.Closed Then DB.Close()
                DB.Dispose()
                DB = Nothing
            End If
        End Try

    End Function

    Public Function ExecuteDataRow(ByVal strSQL As String) As DataRow
        Dim DB As New MySqlConnection(_StrConnection)

        Dim DS As New DataSet
        Dim DA As MySqlDataAdapter = Nothing

        Try
            DB.Open()

            DA = New MySqlDataAdapter(strSQL, DB)
            DA.Fill(DS, "Registros")

            If DS.Tables(0).Rows.Count > 0 Then
                ExecuteDataRow = DS.Tables(0).Rows(0)
            Else
                ExecuteDataRow = Nothing
            End If

        Catch ex As Exception
            If DB.State = ConnectionState.Open Then
                Dim SQLLog As String = SQL_Insert("logs_error_sql", "Fecha,Descripcion,Consulta", Date.Now, "", strSQL)
                ExecuteNonQuery(SQLLog)
            Else

            End If

            Throw ex

        Finally
            If DA IsNot Nothing Then
                DA.Dispose()
                DA = Nothing
            End If

            If DB IsNot Nothing Then
                If DB.State <> ConnectionState.Closed Then DB.Close()
                DB.Dispose()
                DB = Nothing
            End If
        End Try
    End Function

    Protected Function SQL_Insert(ByVal Tabla As String, ByVal Campos As String, ByVal ParamArray Valores() As Object) As String

        Dim aCampos As Array = Split(Campos, ",")
        Dim i As Integer
        Dim str As String

        str = "INSERT INTO " & Tabla & " ("
        For i = 0 To aCampos.GetUpperBound(0)
            str &= aCampos(i) & ","
        Next

        str = Left(str, Len(str) - 1)
        str &= ") VALUES ("

        For i = 0 To Valores.GetUpperBound(0)
            Select Case Valores(i).GetType.ToString
                Case "System.String"
                    str &= "'" & CampoSeguro(Valores(i)) & "'"
                Case "System.DateTime"
                    str &= "'" & Format(Valores(i), "yyyy-MM-dd HH:mm:ss") & "'"
                Case "System.Int16", "System.Int32", "System.Decimal", "System.Double", "System.Int64", "System.UInt32", "System.UInt64"
                    str &= Valores(i).ToString.Replace(",", ".")
                Case "System.Boolean"
                    str &= CInt(Valores(i))
                Case Else
                    If Valores(i).GetType().IsEnum Then
                        str &= Val(Valores(i))
                    End If
            End Select
            str &= ","
        Next

        str = Left(str, Len(str) - 1)
        str &= ")"

        Return str
    End Function

    Protected Function SQL_Update(ByVal Tabla As String, ByVal NombreID As String, ByVal ValorID As Object, ByVal Campos As String, ByVal ParamArray Valores() As Object) As String

        Dim aCampos As Array = Split(Campos, ",")
        Dim i As Integer
        Dim str As String

        str = "UPDATE " & Tabla & " SET "
        For i = 0 To aCampos.GetUpperBound(0)
            str &= aCampos(i) & " = "

            Select Case Valores(i).GetType.ToString
                Case "System.String"
                    str &= "'" & CampoSeguro(Valores(i)) & "'"
                Case "System.DateTime"
                    str &= "'" & Format(Valores(i), "yyyyMMddHHmmss") & "'"
                Case "System.Int16", "System.Int32", "System.Int64", "System.Decimal", "System.Double", "System.UInt32", "System.UInt64"
                    str &= Valores(i).ToString.Replace(",", ".")
                Case "System.Boolean"
                    str &= CInt(Valores(i))
                Case Else
                    If Valores(i).GetType().IsEnum Then
                        str &= Val(Valores(i))
                    End If
            End Select

            str &= ","
        Next

        str = Left(str, Len(str) - 1)
        str &= " WHERE " & NombreID & " = "

        Select Case ValorID.GetType.ToString
            Case "System.String"
                str &= "'" & CampoSeguro(ValorID) & "'"
            Case "System.DateTime"
                str &= "'" & Format(ValorID, "yyyyMMddHHmmss") & "'"
            Case "System.Int16", "System.Int32", "System.Decimal", "System.Double", "System.Int64", "System.UInt32", "System.UInt64"
                str &= ValorID.ToString.Replace(",", ".")
            Case "System.Boolean"
                str &= CInt(Valores(i))
        End Select

        Return str
    End Function

    Public Sub New(Optional ByVal StrConn As String = "")
        Try
        Catch ex As Exception

        End Try
        If StrConn <> "" Then _StrConnection = StrConn

    End Sub

    Public Shared Function CampoSeguro(ByVal InputStr As String) As String
        If InputStr Is Nothing Then Return ""

        Try
            Dim tmp As String = InputStr

            tmp = InputStr.Replace("\", "\\")
            tmp = tmp.Replace("’", "\’")
            tmp = tmp.Replace("‘", "\‘")
            tmp = tmp.Replace("`", "\`")
            tmp = tmp.Replace("´", "\´")
            tmp = tmp.Replace("'", "\'")
            tmp = tmp.Replace("""", "\""")
            tmp = tmp.Replace(vbCr, "\r")
            tmp = tmp.Replace(vbLf, "\n")
            Return tmp

        Catch ex As Exception
            Return " Campo Error: " & ex.ToString()
        End Try

    End Function

    Protected Function ObtenerCampoUnico(ByVal idItem As Integer, ByVal Campo As String, ByVal idTabla As String, ByVal Tabla As String) As String
        Dim Ret As Object = Me.ExecuteScalar("SELECT " & Campo & " FROM " & Tabla & " WHERE " & idTabla & " = " & idItem)
        If IsDBNull(Ret) Or Ret Is Nothing Then
            Return ""
        Else
            Return Ret.ToString()
        End If
    End Function

    Public Function ObtenerCampo(ByVal Filtro As String, ByVal Campo As String, ByVal Tabla As String) As String
        Dim Ret As Object = Me.ExecuteScalar("SELECT " & Campo & " FROM " & Tabla & " WHERE " & Filtro)
        If IsDBNull(Ret) Or Ret Is Nothing Then
            Return ""
        Else
            Return Ret.ToString()
        End If
    End Function

    Protected Sub ActualizarCampoUnico(ByVal idItem As Integer, ByVal Campo As String, ByVal Valor As Object, ByVal idTabla As String, ByVal Tabla As String)

        'If TypeName(Valor) = "Decimal" Then
        '    Valor = Valor.ToString.Replace(",", ".")
        'ElseIf TypeName(Valor) = "DateTime" Then
        '    Valor = Format(CDate(Valor), "yyyy-MM-dd HH:mm:ss")
        'End If

        Select Case Valor.GetType.ToString
            Case "System.String"
                Valor = CampoSeguro(Valor)
            Case "System.DateTime"
                Valor = Format(Valor, "yyyy-MM-dd HH:mm:ss")
            Case "System.Int16", "System.Int32", "System.Decimal", "System.Double", "System.Int64", "System.UInt32", "System.UInt64"
                Valor = Valor.ToString.Replace(",", ".")
            Case "System.Boolean"
                Valor &= CInt(Valor)
            Case Else
                Valor = CampoSeguro(Valor)
        End Select

        Dim strSQL As String = "UPDATE " & Tabla & " SET " & Campo & " = '" & Valor & "' WHERE " & idTabla & " = " & idItem
        Me.ExecuteNonQuery(strSQL)
    End Sub

    Protected Function ObtenerID(ByVal Filtro As String, ByVal idTabla As String, ByVal Tabla As String) As Integer
        Dim strSQL As String = "SELECT " & idTabla & " FROM " & Tabla & " WHERE " & Filtro

        Dim Ret As Object = Me.ExecuteScalar(strSQL)
        If IsDBNull(Ret) Or Ret Is Nothing Then
            Return 0
        Else
            Return Val(Ret)
        End If
    End Function

    Public Function ObtenerMaxID(ByVal idTabla As String, ByVal Tabla As String, Optional ByVal Filtro As String = "") As Integer
        Dim strSQL As String = "SELECT MAX(" & idTabla & ") FROM  " & Tabla
        If Filtro <> "" Then strSQL &= " WHERE " & Filtro

        Dim Ret As Object = Me.ExecuteScalar(strSQL)
        If IsDBNull(Ret) Or Ret Is Nothing Then
            Return 0
        Else
            Return Val(Ret)
        End If
    End Function

    Public Function ObtenerMinID(ByVal idTabla As String, ByVal Tabla As String, Optional ByVal Filtro As String = "") As Integer
        Dim strSQL As String = "SELECT MIN(" & idTabla & ") FROM  " & Tabla
        If Filtro <> "" Then strSQL &= " WHERE " & Filtro

        Dim Ret As Object = Me.ExecuteScalar(strSQL)
        If IsDBNull(Ret) Or Ret Is Nothing Then
            Return 0
        Else
            Return Val(Ret)
        End If
    End Function

    Public Function RunDataTable(ByVal StrSQL As String) As DataTable
        Return Me.ExecuteDataTable(StrSQL)
    End Function

    Public Function RunScalar(ByVal StrSQL As String) As Integer
        Dim Ret As Object = Me.ExecuteScalar(StrSQL)
        If IsDBNull(Ret) Or Ret Is Nothing Then
            Return 0
        Else
            Return Val(Ret)
        End If
    End Function

    Public Sub ClearPools()
        MySqlConnection.ClearAllPools()
        GC.Collect()
    End Sub

    Public Function ObtenerItemDR(ByVal idItem As Integer) As DataRow
        Dim DT As DataTable

        DT = Me.ExecuteDataTable("SELECT * FROM " & Tabla & " WHERE " & idTabla & " = " & idItem)

        If DT.Rows.Count = 0 Then
            'No hay filas resultantes
            DT = Nothing

            Return Nothing
        End If

        Return DT.Rows(0)
    End Function
    Public Function ObtenerItemPorFiltroDR(ByVal Filtro As String) As DataRow
        Dim DT As DataTable

        DT = Me.ExecuteDataTable("SELECT * FROM " & Tabla & " WHERE " & Filtro)

        If DT.Rows.Count = 0 Then
            'No hay filas resultantes
            DT = Nothing

            Return Nothing
        End If

        Return DT.Rows(0)
    End Function
    Public Function ObtenerRegistros(Optional ByVal Columnas As String = "*", Optional ByVal Filtro As String = "", Optional ByVal OrderBy As String = "", Optional ByVal PageSize As Integer = 0, Optional ByVal PageNumber As Integer = 0, Optional GroupBy As String = "") As DataTable
        If OrderBy = "" Then OrderBy = OrderByDefault 'Ordenación por defecto

        Dim strSQL As String = "SELECT " & Columnas & " FROM " & Tabla

        'Filtro
        If Filtro <> "" Then
            If strSQL.IndexOf("WHERE") > -1 Then
                strSQL &= " AND (" & Filtro & ")"
            Else
                strSQL &= " WHERE " & Filtro
            End If
        End If

        If GroupBy <> "" Then
            strSQL &= " GROUP BY " & GroupBy
        End If
        strSQL &= " ORDER BY " & OrderBy

        'Paginación
        If PageSize > 0 Then
            strSQL &= " LIMIT " & ((PageNumber - 1) * PageSize) & "," & PageSize
        End If

        Dim DT As DataTable = Me.ExecuteDataTable(strSQL)

        Return DT
    End Function
    Public Function Count(Optional ByVal Filtro As String = "") As Integer
        Dim strSQL As String = "SELECT COUNT(*) FROM " & Tabla

        'Filtro
        If Filtro <> "" Then
            If strSQL.IndexOf("WHERE") > -1 Then
                strSQL &= " AND (" & Filtro & ")"
            Else
                strSQL &= " WHERE " & Filtro
            End If
        End If

        Return Me.ExecuteScalar(strSQL)
    End Function

End Class
