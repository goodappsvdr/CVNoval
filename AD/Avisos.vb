
Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.IO
Public Class Avisos



    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn2")
    End Sub




    'BuscarPorID
    Public Function BuscarAvisos() As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Noticias_Buscar")

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function EliminarAvisos(FechaActual As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Noticias_ModificarEstado", FechaActual)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function



End Class
