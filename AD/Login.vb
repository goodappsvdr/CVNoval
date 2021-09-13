Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.IO


Public Class Login

    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn2")
    End Sub


    'constructor base con parametros
    Public Sub New(ByVal str As String)
    End Sub




    'BuscarPorID
    Public Function BuscarPorID(ByVal ID_Cargo As Double) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("CV_Login_BuscarPorID", ID_Cargo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    'AGREGAR
    Public Function Agregar() As DataSet

        Try

            Return oDatabase.ExecuteDataSet("CV_Login_Agregar")

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    'BuscarTodos
    Public Function BuscarTodos() As DataSet

        Try

            Return oDatabase.ExecuteDataSet("CV_Login_BuscarTodos")

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function Login_ValidarEstadoPorEmail(ByVal Email As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Login_ValidarEstadoPorEmail", Email)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function




   
   

End Class
