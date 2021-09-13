Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Imports System.IO

Public Class AntecedentesSalud


    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn2")
    End Sub


    'constructor base con parametros
    Public Sub New(ByVal str As String)
    End Sub


    Public Function Agregar(ID_PersonalLegajo As Integer, Altura As String, Peso As String, Enfermedad As String, DescripcionEnfermedad As String, Cirugias As String, DescripcionCirugias As String) As Double

        Try

            Return oDatabase.ExecuteScalar("AntecedentesSalud_Agregar", ID_PersonalLegajo, Altura, Peso, Enfermedad, DescripcionEnfermedad, Cirugias, DescripcionCirugias)

        Catch ex As System.Exception
            Throw ex
        End Try
        'ID_AntecedentesSalud ,ID_PersonalLegajo, Altura, Peso, Enfermedad, DescripcionEnfermedad, Cirugias, DescripcionCirugias
    End Function
    Public Function Modificar(ID_AntecedenteSalud As Integer, ID_PersonalLegajo As Integer, Altura As String, Peso As String, Enfermedad As String, DescripcionEnfermedad As String, Cirugias As String, DescripcionCirugias As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("AntecedentesSalud_Modificar", ID_AntecedenteSalud, ID_PersonalLegajo, Altura, Peso, Enfermedad, DescripcionEnfermedad, Cirugias, DescripcionCirugias)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function BuscarPorID(ByVal ID_AntecedenteSalud As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("AntecedentesSalud_BuscarPorID", ID_AntecedenteSalud)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function Eliminar(ByVal ID_AntecedenteSalud As Integer, ByVal ID_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("AntecedentesSalud_EliminarPorIDyPorEmail", ID_AntecedenteSalud, ID_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

End Class
