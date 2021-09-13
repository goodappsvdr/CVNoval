Imports System.IO
Imports System.Web.Script.Serialization
Imports System.Web.Script.Services
Imports System.Web.Services
Imports System.Net.Mail
Imports AD

Public Class ResetEmail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    <WebMethod()>
   <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Shared Function reset(ByVal cadena As String) As String

        Try
            Dim jss As New JavaScriptSerializer()
            Dim dict = jss.Deserialize(Of List(Of globalWS))("[" & cadena & "]")

            Dim pass As String = Convert.ToString(dict(0).pass)
            Dim email As String = Convert.ToString(dict(0).email)

            Dim ods2 As New DataSet
            Dim objeo As New Login
            ods2 = objeo.Login_ValidarEstadoPorEmail(email)
            If ods2.Tables(0).Rows(0).Item("IsApproved") = "1" Then

                Dim ods As New DataSet
                Dim obj As New aspnet_Membership
                ods = obj.Usuarios_PasswordModificarPorEmail(email, pass)

                'aca que modifique

                Dim user As String = email

                Dim username As String = user
                Dim password As String = pass
                Dim mu As MembershipUser = Membership.GetUser(username)
                mu.ChangePassword(mu.ResetPassword(), password)


                Dim data = New With {
              Key .Status = "200"
                 }


                Dim serializer = New JavaScriptSerializer()
                Dim json = serializer.Serialize(data)

                Return New JavaScriptSerializer().Serialize(data)
                

            Else
                Dim data = New With {
                Key .Status = "0"
                   }

                Dim serializer = New JavaScriptSerializer()
                Dim json = serializer.Serialize(data)

                Return New JavaScriptSerializer().Serialize(data)

            End If


           

          



            'Key .Data = e


            



        Catch ex As Exception

            Return Error401()
        End Try








    End Function


#Region "Manejo de Status"

    Public Shared Function Error401()

        Dim data = New With {
                         Key .Status = "401"
                     }
        Dim serializer = New JavaScriptSerializer()
        Dim json = serializer.Serialize(data)

        Return New JavaScriptSerializer().Serialize(data)
    End Function

    Public Function Status200()
        Dim data = New With {
                   Key .Status = "200"}

        Dim serializer = New JavaScriptSerializer()
        Dim json = serializer.Serialize(data)

        Return New JavaScriptSerializer().Serialize(data)

    End Function

    Public Function ErrorLogin(ByVal Mensaje As String)
        Dim data = New With {
                     Key .Status = "401",
                     Key .Data = New With {
                     Key .Message = Mensaje
                   }
                 }

        Dim serializer = New JavaScriptSerializer()
        Dim json = serializer.Serialize(data)




        Return New JavaScriptSerializer().Serialize(data)
    End Function

    Private Function StatusReclamos(ByVal NroStatus As String, ByVal Mensaje As String)
        Dim data = New With {
                  Key .Status = NroStatus,
                  Key .Data = New With {
                  Key .Message = Mensaje
                }
              }

        Dim serializer = New JavaScriptSerializer()
        Dim json = serializer.Serialize(data)
        Return New JavaScriptSerializer().Serialize(data)
    End Function

    Private Function StatusCambioPAss(ByVal NroStatus As String, ByVal Mensaje As String)
        Dim data = New With {
                  Key .Status = NroStatus,
                  Key .Data = New With {
                  Key .Message = Mensaje
                }
              }

        Dim serializer = New JavaScriptSerializer()
        Dim json = serializer.Serialize(data)
        Return New JavaScriptSerializer().Serialize(data)
    End Function

#End Region

End Class