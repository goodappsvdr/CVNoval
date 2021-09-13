Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports Microsoft.Practices.EnterpriseLibrary.Data
Public Class aspnet_Membership
    Dim oDatabase As Database

    Public Sub New()

        oDatabase = DatabaseFactory.CreateDatabase("Conn2")

    End Sub

    Public Sub New(ByVal str As String)
    End Sub


    Public Function BuscarTodos() As DataSet
        Try
            Return oDatabase.ExecuteDataSet("aspnet_Membership_BuscarTodos")
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function

    Public Function BuscarPorUserId(ByVal UserId As Guid) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("aspnet_Membership_BuscarPorUserId", UserId)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function

    Public Function ModificarPassEnUsuariosPass(ByVal UserId As String, ByVal Pass As String) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("Usuarios_PasswordModificar", UserId, Pass)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function


    Public Function Usuarios_PasswordModificarPorEmail(ByVal Email As String, ByVal Pass As String) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("Usuarios_PasswordModificarPorEmail", Email, Pass)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function




    Public Function BuscarPorUserComment(ByVal UserId As Guid) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("aspnet_Membership_BuscarNombrePorUserId", UserId)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function

    Public Function UsuarioAgregarPassyNombre(ByVal Nombre As String, ByVal Pass As String, ByVal UserID As Guid, ByVal ID_Seccion As Integer, ByVal ID_UsuarioTipo As Integer) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("Usuarios_PasswordAgregar", Nombre, Pass, UserID, ID_Seccion, ID_UsuarioTipo)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function




    Public Function UsuariosSistema_ModificarEstado(ByVal UserId As Guid, ByVal Estado As Boolean, ByVal Legajo As String) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("UsuariosSistema_ModificarEstado", UserId, Estado, Legajo)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function



    Public Function UsuariosSistema_ModificarNombre(ByVal UserId As Guid, ByVal Nombre As String) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("UsuariosSistema_ModificarNombre", UserId, Nombre)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function




    Public Function ModificarAppId(ByVal UserId As Guid) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("UsuariosClientes_ModificarAppId", UserId)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function



    Public Function BuscarPorEmail(ByVal Email As String) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("aspnet_Membership_BuscarPorEmail", Email)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function

    Public Function Agregar(ByVal UserId As String, ByVal Password As String, ByVal PasswordFormat As Integer, ByVal PasswordSalt As String, ByVal MobilePIN As String, ByVal Email As String, ByVal LoweredEmail As String, ByVal PasswordQuestion As String, ByVal PasswordAnswer As String, ByVal IsApproved As Boolean, ByVal IsLockedOut As Boolean, ByVal CreateDate As Date, ByVal LastLoginDate As Date, ByVal LastPasswordChangedDate As Date, ByVal LastLockoutDate As Date, ByVal FailedPasswordAttemptCount As Integer, ByVal FailedPasswordAttemptWindowStart As Date, ByVal FailedPasswordAnswerAttemptCount As Integer, ByVal FailedPasswordAnswerAttemptWindowStart As Date, ByVal Comment As String) As Double
        Try
            Return oDatabase.ExecuteScalar("aspnet_Membership_Agregar", UserId, Password, PasswordFormat, PasswordSalt, MobilePIN, Email, LoweredEmail, PasswordQuestion, PasswordAnswer, IsApproved, IsLockedOut, CreateDate, LastLoginDate, LastPasswordChangedDate, LastLockoutDate, FailedPasswordAttemptCount, FailedPasswordAttemptWindowStart, FailedPasswordAnswerAttemptCount, FailedPasswordAnswerAttemptWindowStart, Comment)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function

    Public Function Modificar(ByVal ApplicationId As String, ByVal UserId As String, ByVal Password As String, ByVal PasswordFormat As Integer, ByVal PasswordSalt As String, ByVal MobilePIN As String, ByVal Email As String, ByVal LoweredEmail As String, ByVal PasswordQuestion As String, ByVal PasswordAnswer As String, ByVal IsApproved As Boolean, ByVal IsLockedOut As Boolean, ByVal CreateDate As Date, ByVal LastLoginDate As Date, ByVal LastPasswordChangedDate As Date, ByVal LastLockoutDate As Date, ByVal FailedPasswordAttemptCount As Integer, ByVal FailedPasswordAttemptWindowStart As Date, ByVal FailedPasswordAnswerAttemptCount As Integer, ByVal FailedPasswordAnswerAttemptWindowStart As Date, ByVal Comment As String) As DataSet
        Try
            Return oDatabase.ExecuteDataSet("aspnet_Membership_Modificar", ApplicationId, UserId, Password, PasswordFormat, PasswordSalt, MobilePIN, Email, LoweredEmail, PasswordQuestion, PasswordAnswer, IsApproved, IsLockedOut, CreateDate, LastLoginDate, LastPasswordChangedDate, LastLockoutDate, FailedPasswordAttemptCount, FailedPasswordAttemptWindowStart, FailedPasswordAnswerAttemptCount, FailedPasswordAnswerAttemptWindowStart, Comment)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function


    Public Function ModificarCliente(Userid As Guid, ByVal RazonSocial As String, ByVal Cuit As String)
        Try
            Return oDatabase.ExecuteScalar("aspnet_Membership_ModificarCliente", Userid, RazonSocial, Cuit)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function







    Public Function AgregarEmail(ByVal Email As String, ByVal UserId As Guid)
        Try
            Return oDatabase.ExecuteScalar("aspnet_Membership_AgregarEmail", Email, UserId)
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function





    Function CargarCantidad() As DataSet
        Try
            Return oDatabase.ExecuteDataSet("UsuariosSistema_CargarCantidad")
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function

    Function BuscarTodosSistema() As DataSet
        Try
            Return oDatabase.ExecuteDataSet("UsuariosSistema_BuscarTodos")
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function
    Function BuscarTodosSistemaProfesionales() As DataSet
        Try
            Return oDatabase.ExecuteDataSet("UsuariosSistema_BuscarTodos2")
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function

    Function UsuariosSistema_BuscarHabilitados() As DataSet
        Try
            Return oDatabase.ExecuteDataSet("UsuariosSistema_BuscarHabilitados")
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function


    Function UsuariosSistema_Buscardeshabilitados() As DataSet
        Try
            Return oDatabase.ExecuteDataSet("UsuariosSistema_Buscardeshabilitados")
        Catch ex As System.Exception
            Throw ex
        End Try
    End Function



End Class
