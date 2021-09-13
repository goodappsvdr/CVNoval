Imports AD

Public Class FrmConfirmarEliminarDatoReferenciaLaboral
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then

            EliminarReferenciaLaboral()
        End If

    End Sub
    Public Sub EliminarReferenciaLaboral()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")
        If PruebaGalleta Is Nothing Then


            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId


            Dim ods As New DataSet
            Dim Objeto As New PersonalLegajos


            ods = Objeto.BuscarDatosDeUsuarioPorEmail(username)


            Dim ID As Integer = Request.QueryString("ID")

            Dim ODS2 As New DataSet
            Dim Obketo2 As New PersonalLegajos



            ODS2 = Obketo2.AntecedentesLaborales_EliminarPorIDyPorEmail(ID, username)
            Response.Redirect("FrmMiPerfil.aspx")

        Else
            Dim ods As New DataSet
            Dim Objeto As New PersonalLegajos
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")



            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods = Objeto.BuscarDatosDeUsuarioPorEmail(name)


            Dim ID As Integer = Request.QueryString("ID")

            Dim ODS2 As New DataSet
            Dim Obketo2 As New PersonalLegajos



            ODS2 = Obketo2.AntecedentesLaborales_EliminarPorIDyPorEmail(ID, name)
            Response.Redirect("FrmMiPerfil.aspx")




        End If

    End Sub
    

End Class