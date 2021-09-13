Imports System.IO
Imports System.Web.Script.Serialization
Imports System.Web.Script.Services
Imports System.Web.Services
Imports System.Net.Mail
Imports AD
Public Class FrmIngreso
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Page.IsPostBack = False Then
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            'aca valido si hay cookies

            If Galleta Is Nothing Then
                'Response.Redirect("FrmInicio.aspx")
            Else
                Response.Redirect("FrmMiPerfil.aspx?login=true")

            End If

        End If

    End Sub


    Public Sub Logueo()

        'primero buscar el estado del usuario por el email
        'si es 1 es aprovado si es 0 no aprovado

        If TxtEmail.Value <> "" And TxtPass.Value <> "" Then
            Dim ods2 As New DataSet
            Dim objeo As New Login
            ods2 = objeo.Login_ValidarEstadoPorEmail(TxtEmail.Value)
            If ods2.Tables(0).Rows(0).Item("IsApproved") = "1" Then
                If Membership.ValidateUser(TxtEmail.Value, TxtPass.Value) Then

                    FormsAuthentication.SetAuthCookie(TxtEmail.Value, True)


                    'guardo los datos en cookies deberia poner un check que pregunte si quiere guardar los datos
                    Dim Galleta As HttpCookie
                    Galleta = New HttpCookie("datos")
                    Galleta.Values.Add("nombre", TxtEmail.Value)
                    Galleta.Values.Add("pass", TxtPass.Value)
                    Galleta.Expires = DateTime.MaxValue 'Nunca caduca
                    Response.AppendCookie(Galleta)

                    'buscar el userid por el email
                    Dim ods As New DataSet
                    Dim objeto As New PersonalLegajos

                    ods = objeto.PersonalLegajo_BuscarUserIDPorEmail(TxtEmail.Value)
                    If ods.Tables(0).Rows.Count > 0 Then
                        Dim Userid As String = ods.Tables(0).Rows(0).Item("UserId").ToString
                        Galleta.Values.Add("userid", Userid)
                    End If




                    Response.Redirect("FrmMiPerfil.aspx?login=true")

                Else
                    DivStatus.Visible = True
                    divAproved.Visible = False
                    div1.Visible = False
                End If
            Else
                divAproved.Visible = True
                DivStatus.Visible = False
                div1.Visible = False
                Return

            End If
        Else

            divAproved.Visible = False
            DivStatus.Visible = False
            div1.Visible = True
            Return

        End If

       



        
    End Sub

    Private Sub Cmdlogin_Click(sender As Object, e As System.EventArgs) Handles Cmdlogin.Click
        Logueo()
    End Sub


    <WebMethod()>
   <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Shared Function reset(ByVal cadena As String) As String

        Try
            Dim jss As New JavaScriptSerializer()
            Dim dict = jss.Deserialize(Of List(Of globalWS))("[" & cadena & "]")

            Dim email As String = Convert.ToString(dict(0).email)

            '------------------------------mando email--------------------------------------------------
            Dim mail As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage()
            Dim SmtpServer As SmtpClient = New SmtpClient("smtp.gmail.com")
            mail.From = New MailAddress("logistica.ideastdi@gmail.com", "COOVILROS", System.Text.Encoding.UTF8)

            Dim horayuser As String = Date.Now.Year.ToString + Date.Now.Month.ToString + Date.Now.Day.ToString + Date.Now.TimeOfDay.TotalMinutes.ToString

            '----hacer for que recorra los email de la seccion----

            Dim url As String = "https://www.coovilros.com/RRHH//ResetEmail.aspx?Email=" & email

            mail.[To].Add(email)

            mail.Subject = "COOVILROS"
            'mail.Body = "Acabas de recibir una nueva Solicitud de Credito"
            mail.IsBodyHtml = True
            mail.Body = "<html><head><meta name='viewport' content='initial-scale=1.0, user-scalable=no'><meta charset='utf-8'>" &
"<title>CLASIFICACIÓN</title></head><body style='background:#fff;'><center>" &
"<center><br>" &
"<div style='background:#fff; color:#000;margin-top:-100px;z-index:9999999;width:90%;height:auto;padding: 20px;-webkit-box-shadow: 0px 5px 13px 2px rgba(51,49,51,1);'>" &
"<img src='https://www.coovilros.com/Imagenes/logo-dark.png' width='300'><hr>" &
"<h2 style='color:#000;'>Detectamos un intento de cambiar tú contraseña en la web de Recursos Humanos de la Cooperativa. ¿Fuiste tú?</h2>" &
"<h3 style='color:#000;'>Si fuiste tú, sigue adelante y presiona el botón 'Restablecer Contraseña'.<br>Si no fuiste tú, puedes ignorar este mensaje. No se requiere ninguna otra acción. </h3>" &
"<a href=' " & url & "'><input type='button' value='Restablecer contraseña' style='color:#fff;cursor:pointer; font-size:20px;background:linear-gradient(135deg, rgb(124, 156, 61) 0%, rgb(15, 112, 57) 100%);max-width: 650px;width:100%;padding: 15px;margin:auto;border:none;border-radius: 40px'></a>" &
"</div><img src='https://media.kasperskydaily.com/wp-content/uploads/sites/92/2015/12/06023401/passwords-10x10-featured.jpg' width='100%' ></center><br><br></body></html>"

            mail.BodyEncoding = System.Text.Encoding.UTF8
            mail.SubjectEncoding = System.Text.Encoding.UTF8
            'Dim attachment As System.Net.Mail.Attachment
            'attachment = New System.Net.Mail.Attachment("https://goodapps.com.ar/RRHH/Imagenes/Isologotipo_Coovilros_horizontal.png")
            'mail.Attachments.Add(attachment)
            SmtpServer.Host = "smtp.gmail.com"
            SmtpServer.Port = 587
            SmtpServer.Credentials = New System.Net.NetworkCredential("logistica.ideastdi@gmail.com", "password.9")
            SmtpServer.EnableSsl = True
            SmtpServer.Send(mail)


            Dim data = New With {
                Key .Status = "200"
                   }



            'Key .Data = e


            Dim serializer = New JavaScriptSerializer()
            Dim json = serializer.Serialize(data)

            Return New JavaScriptSerializer().Serialize(data)



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