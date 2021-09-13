
Imports AD
Imports System.Net.Mail

Public Class FrmLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = False Then
            oculto.Visible = False
            mensajedos.Visible = False

            'Session.Add("Nombre", TxtNombre.Text)
            TxtNombre.Text = Session("Nombre")
            TxtApellido.Text = Session("Apellido")
            TxtEmail.Text = Session("Email")
            Session.Add("Nombre", TxtNombre.Text)
            Session.Add("Apellido", TxtApellido.Text)
            Session.Add("Email", TxtEmail.Text)


            'Else

            '    formulario.Visible = False

            '    oculto.Visible = True

        End If



    End Sub
    Private Sub NuevoUsuario()


        If TxtPass.Text.Length < 6 And TxtConfirmarPass.Text.Length < 6 Then

            mensajedos.Visible = True
            mensajeuno.Visible = False

            Session("Nombre") = TxtNombre.Text
            Session("Apellido") = TxtApellido.Text
            Session("Email") = TxtEmail.Text



        Else


            If TxtPass.Text = TxtConfirmarPass.Text Then


                'ESTO ES LO ULTMO QUE AGREGUE 6/11/19
                Dim odata2 As New DataSet
                Dim ObjeValidarEmail As New PersonalLegajos

                odata2 = ObjeValidarEmail.PersonalLegajo_ValidarEmail(TxtEmail.Text)


                'si es menor a 1 que agregue
                If odata2.Tables(0).Rows.Count < 1 Then

                    Dim Usuario As String = TxtApellido.Text & " " & TxtNombre.Text


                    'ACA CREO EL USUARIO EN MEMBERSHIP CON EL EMAIL
                    Dim createStatus As MembershipCreateStatus

                    'LE PASO 0 PARA EN ISAPROVED PARA QUER SE MODIFIQUE CUANDO INGRESA O CONFIRMA DESDE EL EMAIL
                    Dim newUser As MembershipUser = Membership.CreateUser(TxtEmail.Text, TxtPass.Text, TxtEmail.Text, "ropa", "ropa", 0, createStatus)




                    Dim user As MembershipUser = Membership.GetUser(TxtEmail.Text)
                    Dim newUserId As Guid = DirectCast(newUser.ProviderUserKey, Guid)
                    '----------------------------------------------------------------------------------------------


                    'ACA CAMBIO EL COMMENT POR EL EMAIL
                    Dim ods As New DataSet
                    Dim oObjeto As New aspnet_Membership

                    ods = oObjeto.UsuariosSistema_ModificarNombre(newUserId, TxtEmail.Text)
                    '------------------------------------------------------------------------------------------------

                    'ACA AGREGO EN TABLA USUARIO PASSWORD
                    Dim odata As New DataSet
                    Dim Objeto As New aspnet_Membership

                    odata = Objeto.UsuarioAgregarPassyNombre(TxtEmail.Text, TxtPass.Text, newUserId, 1, 3)




                    'TAMBIEN DEBO AGREGAR EN PERSONAL LEGAJOS CON EL ESTADO 140
                    'DEBO GUARDAR APELLIDO NOMBRE TAMBIEN


                    Dim ods2 As New DataSet
                    Dim oObjeto2 As New PersonalLegajos
                    Dim id_personal As Integer
                    Dim FechaActual As Date = Date.Now.ToString("yyyy-MM-dd")


                    id_personal = oObjeto2.Agregar(TxtApellido.Text, TxtNombre.Text, "", "", "", "", "", "", 5, "", "", 11, 12, TxtFechaRegistro.Text, 19, 22, "", 122, TxtFechaRegistro.Text, TxtFechaRegistro.Text, "", 64, 27, "", 29, "", 1, 3, 14, "", "", "", "", "", "", "", "", 140, 78, TxtEmail.Text, 209)


                    'Apellido, Nombre, Calle, Nro, Piso, Depto, Telefono, Movil, ID_DocumentoTipo, NroDocumento, Foto, ID_NivelFormacion, ID_EstadoCivil, Nacimiento, ID_Nacionalidad, Sexo, CUIL, Categoria, Ingreso, Egreso, MesesAntiguedadReconocida, ID_Convenio, ID_Art, NroAfiliado, ID_Banco, NroCajaAhorro, ID_Seccion, ID_Puesto, ID_Jefe, Jubilado, Tarjeta, MensajeIngreso, MensajeEgreso, FondoCompJub, AporteVoluntario, Observaciones, Archivo, Estado, Tipo,Email

                    EnviarEmailParaConfirmar(newUserId)
                    formulario.Visible = False

                    oculto.Visible = True

                   
                Else

                    '
                    'Response.Write("ESE EMAIL YA FUE REGISTRADO EN LA BASE DE DATOS, PRUEBA CON OTRO")
                    mensajeuno.Visible = False
                    mensajedos.Visible = True
                    mensajedos.Attributes("style") = "background-color:#ef2c2cd4; color:#fff;padding:10px"
                    mensajedos.InnerHtml = "ESE EMAIL YA FUE REGISTRADO EN LA BASE DE DATOS, PRUEBA CON OTRO"

                    'Response.Write("<SCRIPT>alert('¿SEGURO DESEAS AGREGAR ESTOS DATOS A LA BASE DE DATOS?');</SCRIPT>")
                    'Response.Redirect("FrmLogin.aspx")

                End If
            End If
        End If
    End Sub



    Public Sub EnviarEmailParaConfirmar(UserID As Guid)





        If TxtPass.Text = TxtConfirmarPass.Text And TxtNombre.Text <> "" And TxtApellido.Text <> "" And TxtEmail.Text <> "" And TxtPass.Text.Length > 5 And TxtConfirmarPass.Text.Length > 5 Then

            'Dim userId As String = Membership.GetUser().UserName

            'Dim username As String = userId

            '   enviar email al usuario 
            '------------------------------mando email--------------------------------------------------
            Dim mail As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage()
            Dim SmtpServer As SmtpClient = New SmtpClient("smtp.gmail.com")
            mail.From = New MailAddress("logistica.ideastdi@gmail.com", "COOVILROS", System.Text.Encoding.UTF8)

            Dim horayuser As String = Date.Now.Year.ToString + Date.Now.Month.ToString + Date.Now.Day.ToString + Date.Now.TimeOfDay.TotalMinutes.ToString + UserID.ToString

            '----hacer for que recorra los email de la seccion----

            Dim url As String = "http://www.coovilros.com/RRHH/ValidarEmail.aspx?Token=" & UserID.ToString & "&Status=" & horayuser & "&Email=" & TxtEmail.Text

            mail.[To].Add(TxtEmail.Text)

            mail.Subject = "COOVILROS"
            'mail.Body = "Acabas de recibir una nueva Solicitud de Credito"
            mail.IsBodyHtml = True
            mail.Body = "<html><head><meta name='viewport' content='initial-scale=1.0, user-scalable=no'><meta charset='utf-8'>" &
"<title>CLASIFICACIÓN</title></head><body style='background:#fff;'><center>" &
"<center><br>" &
"<div style='background:#fff; color:#000;margin-top:-100px;z-index:9999999;width:90%;height:auto;padding: 20px;-webkit-box-shadow: 0px 5px 13px 2px rgba(51,49,51,1);'>" &
"<img src='https://goodapps.com.ar/RRHH/Imagenes/Isologotipo_Coovilros_horizontal.png' width='300'><hr>" &
"<h2 style='color:#000;font-family: monospace'>HOLA 🖐 " & TxtNombre.Text & ", BIENVENIDO!!</h2>" &
"<h2 style='color:#000;font-family: monospace'>TU USUARIO ES: " & TxtEmail.Text & "</h2>" &
"<h2 style='color:#000;font-family: monospace'>TU CONTRASEÑA ES: " & TxtPass.Text & "</h2>" &
"<img src='https://crear.net.ar/CLIENTES/ICAMPO/Icampo/imagen%20cv.png' width='100%'>" &
"<a href=' " & url & "'><input type='button' value='CONFIRMAR E IR AL PASO 2' style='color:#fff;cursor:pointer; font-size:20px;background:linear-gradient(135deg, rgb(124, 156, 61) 0%, rgb(15, 112, 57) 100%);max-width: 650px;width:100%;padding: 15px;margin:auto;border:none;border-radius: 40px'></a>" &
"</div></center><br><br></body></html>"

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


            '    formulario.Visible = False

            '    oculto.Visible = True

            'Else

            '    formulario.Visible = True
            '    oculto.Visible = False

        End If


    End Sub




    Private Sub BtnEnviar_ServerClick(sender As Object, e As System.EventArgs) Handles BtnEnviar.ServerClick


        NuevoUsuario()

      



    End Sub
End Class