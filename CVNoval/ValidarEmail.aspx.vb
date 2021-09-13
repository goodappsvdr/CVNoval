
Imports AD

Public Class ValidarEmail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then

            Dim email = Request.QueryString("Email")
            Dim hora = Request.QueryString("Time")
            Dim user = Request.QueryString("Token")

            '?Email=jonataneze2010@gmail.com&Date=2019-11-06&
            ''frmEmpresas.aspx?ID=' + rtrim(ID_Empresa) as url,
            Dim emails As String = email
            emails = emails.TrimEnd(",")
            Dim list2() As String = emails.Split(",")


            Dim dato As String = list2(0)
            TxtEmail.Value = dato



            'TxtEmail.Value = "jonataneze2323@gmail.com"

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



        If Membership.ValidateUser(TxtEmail.Value, TxtPass.Value) Then

            FormsAuthentication.SetAuthCookie(TxtEmail.Value, True)

            'declaro las varuables cookies
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







            Response.Redirect("http://www.coovilros.com/RRHH/FrmMiPerfil.aspx?login=true")
        Else
            DivStatus.Visible = True
        End If

    End Sub

    Private Sub Cmdlogin_Click(sender As Object, e As System.EventArgs) Handles Cmdlogin.Click
        Dim ods As New DataSet

       


        Dim Objeto As New PersonalLegajos
        Dim user = Request.QueryString("Token")
      


        Dim token As String = user
        token = token.TrimEnd(",")
        Dim list2() As String = token.Split(",")
        Dim dato As String = list2(0)
        Dim UserID As New Guid(dato)

        'Dim email = Request.QueryString("Email")
        Dim email = TxtEmail.Value

        ods = Objeto.PersonalLegajo_DardeAltaUsuarioDesdeMail(UserID, email)

        Logueo()
    End Sub

End Class