Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.IO

Public Class Redes




    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn2")
    End Sub


    'constructor base con parametros
    Public Sub New(ByVal str As String)
    End Sub


    Public Function Agregar(ID_PersonalLegajo As Integer, Link As String, Nombre As String, Activo As Integer, Imagen As String) As Double

        Try

            Return oDatabase.ExecuteScalar("RedesSociales_Agregar", ID_PersonalLegajo, Link, Nombre, Activo, Imagen)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function Modificar(ID_Redes As Integer, ID_PersonalLegajo As Integer, Link As String, Nombre As String, Activo As Integer, Imagen As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("RedesSociales_Modificar", ID_Redes, ID_PersonalLegajo, Link, Nombre, Activo, Imagen)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function BuscarPorID(ByVal ID_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("RedesSociales_BuscarPorID", ID_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function RedesSociales_BuscarPorEmail(ByVal Email As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("RedesSociales_BuscarPorEmail", Email)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function RedesSociales_BuscarDatosDeRedes(ByVal Email As String, Red As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("RedesSociales_BuscarDatosDeRedes", Email, Red)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


End Class
