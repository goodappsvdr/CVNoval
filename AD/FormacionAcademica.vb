Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.IO

Public Class FormacionAcademica

    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn2")
    End Sub



    Public Function Agregar(ID_PersonalLegajo As Integer, Desde As String, Hasta As String, NivelAcademico As String, Institucion As String, Titulo As String, Archivo As String, Especialidad As String) As Double

        Try

            Return oDatabase.ExecuteScalar("FormacionAcademica_Agregar", ID_PersonalLegajo, Desde, Hasta, NivelAcademico, Institucion, Titulo, Archivo, Especialidad)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function Modificar(ID_FormacionAcademica As Integer, ID_PersonalLegajo As Integer, Desde As String, Hasta As String, NivelAcademico As String, Institucion As String, Titulo As String, Especialidad As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("FormacionAcademica_Modificar", ID_FormacionAcademica, ID_PersonalLegajo, Desde, Hasta, NivelAcademico, Institucion, Titulo, Especialidad)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function BuscarPorID(ID_FormacionAcademica As Integer, ID_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("FormacionAcademica_BuscarPorIDyPorIDPersonalLegajo", ID_FormacionAcademica, ID_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function



    Public Function Elimiar(ID_FormacionAcademica As Integer, ID_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("FormacionAcademica_Eliminar", ID_FormacionAcademica, ID_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function ModificarArchivoAjunto(ID_FormacionAcademica As Integer, Archivo As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("FormacionAcademica_ModificarArchivoAdjunto", ID_FormacionAcademica, Archivo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

End Class
