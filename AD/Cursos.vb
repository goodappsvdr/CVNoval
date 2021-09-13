Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.IO

Public Class Cursos


    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn2")
    End Sub


    'constructor base con parametros
    Public Sub New(ByVal str As String)
    End Sub


    Public Function Agregar(ID_PersonalLegajo As Integer, Desde As String, Hasta As String, NombreCurso As String, Area As String, Horas As String, Institucion As String, Comentarios As String) As Double

        Try

            Return oDatabase.ExecuteScalar("Cursos_Agregar", ID_PersonalLegajo, Desde, Hasta, NombreCurso, Area, Horas, Institucion, Comentarios)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function Modificar(ID_Curso As Integer, ID_PersonalLegajo As Integer, Desde As String, Hasta As String, NombreCurso As String, Area As String, Horas As String, Institucion As String, Comentarios As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Cursos_Modificar", ID_Curso, ID_PersonalLegajo, Desde, Hasta, NombreCurso, Area, Horas, Institucion, Comentarios)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function BuscarPorID(ByVal ID_Curso As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Cursos_BuscarPorID", ID_Curso)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function Eliminar(ByVal ID_Curso As Integer, ByVal ID_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Cursos_Eliminar", ID_Curso, ID_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

End Class
