
Imports AD
Public Class FrmEliminarFormacionAcademica
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = False Then

            BuscarPorID()



        End If



    End Sub


    Public Sub BuscarPorID()


        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")
        If PruebaGalleta Is Nothing Then


            'CARGAR DATOS POR ID

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)
            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New FormacionAcademica
            Dim ID As String = Request.QueryString("ID")

            ods = oObjeto.BuscarPorID(ID, ID_PersonalLegajo)


            TxtDesdeFA.Text = ods.Tables(0).Rows(0).Item("Desde").ToString
            TxtHastaFA.Text = ods.Tables(0).Rows(0).Item("Hasta").ToString
            ComboFA.Value = ods.Tables(0).Rows(0).Item("NivelAcademico").ToString
            TxtInstitucion.Text = ods.Tables(0).Rows(0).Item("Institucion").ToString
            TxtTitulo.Text = ods.Tables(0).Rows(0).Item("Titulo").ToString

        Else

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")



            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New FormacionAcademica
            Dim ID As String = Request.QueryString("ID")

            ods = oObjeto.BuscarPorID(ID, ID_PersonalLegajo)


            TxtDesdeFA.Text = ods.Tables(0).Rows(0).Item("Desde").ToString
            TxtHastaFA.Text = ods.Tables(0).Rows(0).Item("Hasta").ToString
            ComboFA.Value = ods.Tables(0).Rows(0).Item("NivelAcademico").ToString
            TxtInstitucion.Text = ods.Tables(0).Rows(0).Item("Institucion").ToString
            TxtTitulo.Text = ods.Tables(0).Rows(0).Item("Titulo").ToString



        End If
    End Sub

    Private Sub BtnFormacionAca_ServerClick(sender As Object, e As EventArgs) Handles BtnFormacionAca.ServerClick
        'FALTA EL MODIFICAR

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")
        If PruebaGalleta Is Nothing Then




            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)
            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Dim ID As String = Request.QueryString("ID")




            Response.Redirect("FrmConfirmarEliminarFormacionAcademica.aspx?ID=" & ID & "&ID_PersonalLegajo=" & ID_PersonalLegajo)

        Else

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")



            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Dim ID As String = Request.QueryString("ID")




            Response.Redirect("FrmConfirmarEliminarFormacionAcademica.aspx?ID=" & ID & "&ID_PersonalLegajo=" & ID_PersonalLegajo)





        End If
    End Sub








End Class