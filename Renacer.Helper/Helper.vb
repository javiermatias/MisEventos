Imports System.Collections.Generic
Imports System.IO
Imports System.Net
Imports System.Web
Imports SelectPdf

Public Class Helper

    Public Shared Function ConvertDT(ByVal DT As DataTable) As List(Of Dictionary(Of String, Object))
        Dim DictList As New List(Of Dictionary(Of String, Object))
        Dim Fields As New List(Of String)

        For Each R As DataRow In DT.Rows
            Dim Dict As New Dictionary(Of String, Object)
            For Each Col As DataColumn In DT.Columns

                If Col.DataType = GetType(DateTime) Then
                    If R(Col.ColumnName) Is Nothing Or IsDBNull(R(Col.ColumnName)) Then
                        Dict.Add(Col.ColumnName, "")
                    Else
                        Dict.Add(Col.ColumnName, CDate(R(Col.ColumnName)).ToString("yyyy-MM-dd"))
                    End If
                Else
                    Dict.Add(Col.ColumnName, R(Col.ColumnName))
                End If
            Next
            DictList.Add(Dict)
        Next
        Return DictList

    End Function

End Class
