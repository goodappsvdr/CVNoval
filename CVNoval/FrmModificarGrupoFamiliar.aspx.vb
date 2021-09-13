Imports AD
Public Class FrmModificarGrupoFamiliar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            CargaDatosUsuarios()
            'CargarCboParentezco()
        End If
    End Sub

    Private Sub CargarCboParentezco()

        Dim ods As New DataSet
        Dim OCategoriaTipo As New Categorias

        ods = OCategoriaTipo.BuscarPorCategoriatipo("FAMILIARTIPO")


        ComboPrentezco.DataSource = ods.Tables(0)
        ComboPrentezco.DataTextField = "NOMBRE"
        ComboPrentezco.DataValueField = "ID_CATEGORIA"
        ComboPrentezco.DataBind()





    End Sub
    Private Sub CargaDatosUsuarios()


        'If User.Identity.IsAuthenticated = True Then

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then




            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId


            Dim ods As New DataSet
            Dim Objeto As New PersonalLegajos


            ods = Objeto.BuscarDatosDeUsuarioPorEmail(username)
            Dim Nombre As String = ods.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Dim ID As Integer = Request.QueryString("ID")

            Dim Ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim ods3 As New DataSet
            Dim OCategoriaTipo As New Categorias

            ods3 = OCategoriaTipo.BuscarPorCategoriatipo("FAMILIARTIPO")


            ComboPrentezco.DataSource = ods3.Tables(0)
            ComboPrentezco.DataTextField = "NOMBRE"
            ComboPrentezco.DataValueField = "ID_CATEGORIA"
            ComboPrentezco.DataBind()

            Ods2 = Objeto2.GrupoFamiliar_BuscarPorIDPersonalLegajo(ID)


            If Ods2.Tables(0).Rows.Count > 0 Then





                TxtApellidoGrupFam.Text = Ods2.Tables(0).Rows(0).Item("Apellido").ToString
                TxtNombreGrupFam.Text = Ods2.Tables(0).Rows(0).Item("Nombre").ToString
                TxtFechaNacGF.Text = Ods2.Tables(0).Rows(0).Item("FechaNacimiento").ToString

                TxtOcupacion.Text = Ods2.Tables(0).Rows(0).Item("Ocupacion").ToString
                ComboPrentezco.Value = Ods2.Tables(0).Rows(0).Item("TipoFamiliar").ToString


            End If



        Else
            Dim ods As New DataSet
            Dim Objeto As New PersonalLegajos
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

           

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods = Objeto.BuscarDatosDeUsuarioPorEmail(name)

            Dim Nombre As String = ods.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Dim ID As Integer = Request.QueryString("ID")

            Dim Ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim ods3 As New DataSet
            Dim OCategoriaTipo As New Categorias

            ods3 = OCategoriaTipo.BuscarPorCategoriatipo("FAMILIARTIPO")


            ComboPrentezco.DataSource = ods3.Tables(0)
            ComboPrentezco.DataTextField = "NOMBRE"
            ComboPrentezco.DataValueField = "ID_CATEGORIA"
            ComboPrentezco.DataBind()

            Ods2 = Objeto2.GrupoFamiliar_BuscarPorIDPersonalLegajo(ID)


            If Ods2.Tables(0).Rows.Count > 0 Then





                TxtApellidoGrupFam.Text = Ods2.Tables(0).Rows(0).Item("Apellido").ToString
                TxtNombreGrupFam.Text = Ods2.Tables(0).Rows(0).Item("Nombre").ToString
                TxtFechaNacGF.Text = Ods2.Tables(0).Rows(0).Item("FechaNacimiento").ToString

                TxtOcupacion.Text = Ods2.Tables(0).Rows(0).Item("Ocupacion").ToString
                ComboPrentezco.Value = Ods2.Tables(0).Rows(0).Item("TipoFamiliar").ToString


            End If







        End If


        ' End If


    End Sub







    Public Sub ModificarDatosGrupofamiliar()
        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then


            Dim Ods As New DataSet
            Dim Objeto As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId


            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos


            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim ID As Integer = Request.QueryString("ID")




            ods2 = Objeto2.Modificar_GrupoFamiliar(ID, ID_PersonalLegajo, TxtApellidoGrupFam.Text, TxtNombreGrupFam.Text, ComboPrentezco.Value, TxtFechaNacGF.Text, TxtOcupacion.Text)

            'esto va en FrmModificarGrupoFamiliar.aspx

            Response.Redirect("FrmMiPerfil.aspx")


        Else

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")



            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)


            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim ID As Integer = Request.QueryString("ID")




            ods2 = Objeto2.Modificar_GrupoFamiliar(ID, ID_PersonalLegajo, TxtApellidoGrupFam.Text, TxtNombreGrupFam.Text, ComboPrentezco.Value, TxtFechaNacGF.Text, TxtOcupacion.Text)

            'esto va en FrmModificarGrupoFamiliar.aspx

            Response.Redirect("FrmMiPerfil.aspx")





        End If

    End Sub



    Private Sub BtnAgregarGrupoFam_ServerClick(sender As Object, e As System.EventArgs) Handles BtnAgregarGrupoFam.ServerClick
        ModificarDatosGrupofamiliar()
    End Sub
End Class