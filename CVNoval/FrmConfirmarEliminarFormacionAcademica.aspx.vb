
Imports AD
Public Class FrmConfirmarEliminarFormacionAcademica
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Eliminar()
    End Sub

    Public Sub Eliminar()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")
        If PruebaGalleta Is Nothing Then




            Dim ID As String = Request.QueryString("ID")
            Dim ID_PersonalLegajo As String = Request.QueryString("ID_PersonalLegajo")


            Dim ods As New DataSet
            Dim oObjeto As New FormacionAcademica


            ods = oObjeto.Elimiar(ID, ID_PersonalLegajo)

            Response.Redirect("FrmMiPerfil.aspx")

        Else
           
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")



            'Dim name As String = Galleta.Values("nombre")
            'Dim pass As String = Galleta.Values("pass")
            'Dim IdUser As String = Galleta.Values("userid")
            'ods = Objeto.BuscarDatosDeUsuarioPorEmail(name)

            Dim ID As String = Request.QueryString("ID")
            Dim ID_PersonalLegajo As String = Request.QueryString("ID_PersonalLegajo")


            Dim ods As New DataSet
            Dim oObjeto As New FormacionAcademica


            ods = oObjeto.Elimiar(ID, ID_PersonalLegajo)

            Response.Redirect("FrmMiPerfil.aspx")

        End If
    End Sub


End Class