Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.IO

Public Class Localidaes
    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn2")
    End Sub


    'constructor base con parametros
    Public Sub New(ByVal str As String)
    End Sub

    'BuscarTodos
    Public Function BuscarTodos() As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Localidades_BuscarTodos")

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function BuscarPorID(id_localidad As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Localidades_BuscarPorID", id_localidad)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function




    Public Function Agregar(Descripcion As String, id_provincia As Integer, CP As String, activo As Double) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Localidades_Agregar", Descripcion, id_provincia, CP, activo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function Modificar(id_localidad As Integer, Descripcion As String, id_provincia As Integer, CP As String, activo As Double) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Localidades_Modificar", id_localidad, Descripcion, id_provincia, CP, activo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function



End Class
