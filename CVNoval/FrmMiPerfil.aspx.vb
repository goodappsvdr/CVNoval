
Imports AD
Imports System.IO

Public Class FrmMiPerfil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then



            CargarGrilla()
            CargarGrillaGrupoFamiliar()
            CargarGrillaFormacionAcademica()
            CargarGrillaCursos()


            CargaDatosUsuarios()

            CargarLocalidades()
            CargarTipoDNI()
            CargarCboNivelFormacion()
            CargarCboEstadosCiviles()
            CargarCboNacionalidades()
            CargarCboSexos()
            CargarCboParentezco()

            BuscarAntecedentesSalud()


            Dim PruebaGalleta As HttpCookie
            PruebaGalleta = Request.Cookies("datos")

            'aca valido si hay cookies

            If PruebaGalleta Is Nothing Then
                Dim userId As String = Membership.GetUser().UserName

                Dim username As String = userId
                Dim ods As New DataSet
                Dim Objeto As New PersonalLegajos



            Else

                Dim ods As New DataSet
                Dim Objeto As New PersonalLegajos

                'aca obtengo los datos de las cookies que traigo de FrmIngreso
                Dim Galleta As HttpCookie
                Galleta = Request.Cookies("datos")

                Dim name As String = Galleta.Values("nombre")
                Dim pass As String = Galleta.Values("pass")
                Dim IdUser As String = Galleta.Values("userid")
                ods = Objeto.BuscarDatosDeUsuarioPorEmail(name)
                'Repeaterusuario.DataSource = ods.Tables(1)
                'Repeaterusuario.DataBind()
                If ods.Tables(0).Rows.Count > 0 Then


                    Dim Nombre As String = ods.Tables(0).Rows(0).Item("Nombre").ToString
                    Dim Apellido As String = ods.Tables(0).Rows(0).Item("Apellido").ToString
                    Dim ID_PersonalLegajo As Integer = ods.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


                End If

            End If
        End If
        'CargaDatosUsuarios()

    End Sub



    'Private Sub CargarGrillaRedes()

    '    Dim PruebaGalleta As HttpCookie
    '    PruebaGalleta = Request.Cookies("datos")

    '    'aca valido si hay cookies

    '    If PruebaGalleta Is Nothing Then



    '        Dim userId As String = Membership.GetUser().UserName

    '        Dim username As String = userId
    '        Dim ods As New DataSet

    '        Dim ods2 As New DataSet
    '        Dim oobjeto2 As New Redes

    '        ods2 = oobjeto2.RedesSociales_BuscarPorEmail(username)

    '        GrillaRedes.DataSource = ods2.Tables(0)
    '        GrillaRedes.DataBind()


    '        For Each row As GridViewRow In GrillaRedes.Rows



    '            Dim ods3 As New DataSet
    '            Dim oobjeto3 As New Redes

    '            ods3 = oobjeto3.RedesSociales_BuscarPorEmail(username)


    '            For i = 0 To ods3.Tables(0).Rows.Count - 1
    '                'Dim Valor As Button = TryCast(GrillaGrupoFam.Rows(i).Cells(1).Controls(1), Button)

    '                'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
    '                'row.Cells(3).Attributes("Style") = "display:none"
    '                'row.Cells(6).Attributes("Style") = "display:none"
    '                'row.Cells(7).Attributes("Style") = "display:none"
    '                row.Cells(1).Attributes("Style") = "display:none"

    '            Next


    '        Next
    '    Else


    '        Dim Galleta As HttpCookie
    '        Galleta = Request.Cookies("datos")

    '        Dim ods2 As New DataSet
    '        Dim oobjeto2 As New Redes

    '        Dim name As String = Galleta.Values("nombre")
    '        Dim pass As String = Galleta.Values("pass")
    '        Dim IdUser As String = Galleta.Values("userid")
    '        ods2 = oobjeto2.RedesSociales_BuscarPorEmail(name)

    '        GrillaRedes.DataSource = ods2.Tables(0)
    '        GrillaRedes.DataBind()


    '        For Each row As GridViewRow In GrillaRedes.Rows



    '            Dim ods3 As New DataSet
    '            Dim oobjeto3 As New Redes

    '            ods3 = oobjeto3.RedesSociales_BuscarPorEmail(name)


    '            For i = 0 To ods3.Tables(0).Rows.Count - 1
    '                'Dim Valor As Button = TryCast(GrillaGrupoFam.Rows(i).Cells(1).Controls(1), Button)

    '                'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
    '                'row.Cells(3).Attributes("Style") = "display:none"
    '                'row.Cells(6).Attributes("Style") = "display:none"
    '                'row.Cells(7).Attributes("Style") = "display:none"
    '                row.Cells(1).Attributes("Style") = "display:none"

    '            Next


    '        Next




    '    End If

    'End Sub



    Private Sub CargarGrilla()


        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then


            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId
            Dim ods As New DataSet

            Dim ods2 As New DataSet
            Dim oobjeto2 As New PersonalLegajos

            ods2 = oobjeto2.BuscarDatosDeUsuarioPorEmail(username)



            Grilla.DataSource = ods2.Tables(1)
            Grilla.DataBind()


            For Each row As GridViewRow In Grilla.Rows



                Dim ods3 As New DataSet
                Dim oobjeto3 As New PersonalLegajos

                ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(username)

                If ods3.Tables(1).Rows.Count > 0 Then
                    MisReferencias.InnerHtml = "MIS DATOS LABORALES"
                End If
                For i = 0 To ods3.Tables(1).Rows.Count - 1
                    'Dim Valor As Button = TryCast(Grilla.Rows(i).Cells(1).Controls(1), Button)

                    'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
                    row.Cells(3).Attributes("Style") = "display:none"
                    row.Cells(6).Attributes("Style") = "display:none"
                    row.Cells(7).Attributes("Style") = "display:none"
                    row.Cells(0).Attributes("Style") = "display:none"

                Next


            Next


        Else
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim oobjeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = oobjeto2.BuscarDatosDeUsuarioPorEmail(name)



            Grilla.DataSource = ods2.Tables(1)
            Grilla.DataBind()


            For Each row As GridViewRow In Grilla.Rows



                Dim ods3 As New DataSet
                Dim oobjeto3 As New PersonalLegajos

                ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)

                If ods3.Tables(1).Rows.Count > 0 Then
                    MisReferencias.InnerHtml = "MIS DATOS LABORALES"
                End If
                For i = 0 To ods3.Tables(1).Rows.Count - 1
                    'Dim Valor As Button = TryCast(Grilla.Rows(i).Cells(1).Controls(1), Button)

                    'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
                    row.Cells(3).Attributes("Style") = "display:none"
                    row.Cells(6).Attributes("Style") = "display:none"
                    row.Cells(7).Attributes("Style") = "display:none"
                    row.Cells(0).Attributes("Style") = "display:none"

                Next


            Next


        End If




    End Sub


    Private Sub CargarGrillaGrupoFamiliar()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then



            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId
            Dim ods As New DataSet

            Dim ods2 As New DataSet
            Dim oobjeto2 As New PersonalLegajos

            ods2 = oobjeto2.BuscarDatosDeUsuarioPorEmail(username)

            GrillaGrupoFam.DataSource = ods2.Tables(2)
            GrillaGrupoFam.DataBind()


            For Each row As GridViewRow In GrillaGrupoFam.Rows



                Dim ods3 As New DataSet
                Dim oobjeto3 As New PersonalLegajos

                ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(username)

                If ods3.Tables(1).Rows.Count > 0 Then
                    TituloGF.InnerHtml = "MIS DATOS GRUPO FAMILIAR"
                End If
                For i = 0 To ods3.Tables(2).Rows.Count - 1
                    'Dim Valor As Button = TryCast(GrillaGrupoFam.Rows(i).Cells(1).Controls(1), Button)

                    'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
                    'row.Cells(3).Attributes("Style") = "display:none"
                    'row.Cells(6).Attributes("Style") = "display:none"
                    'row.Cells(7).Attributes("Style") = "display:none"
                    row.Cells(0).Attributes("Style") = "display:none"

                Next


            Next
        Else


            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim oobjeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = oobjeto2.BuscarDatosDeUsuarioPorEmail(name)

            GrillaGrupoFam.DataSource = ods2.Tables(2)
            GrillaGrupoFam.DataBind()


            For Each row As GridViewRow In GrillaGrupoFam.Rows



                Dim ods3 As New DataSet
                Dim oobjeto3 As New PersonalLegajos

                ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)

                If ods3.Tables(1).Rows.Count > 0 Then
                    TituloGF.InnerHtml = "MIS DATOS GRUPO FAMILIAR"
                End If
                For i = 0 To ods3.Tables(2).Rows.Count - 1
                    'Dim Valor As Button = TryCast(GrillaGrupoFam.Rows(i).Cells(1).Controls(1), Button)

                    'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
                    'row.Cells(3).Attributes("Style") = "display:none"
                    'row.Cells(6).Attributes("Style") = "display:none"
                    'row.Cells(7).Attributes("Style") = "display:none"
                    row.Cells(0).Attributes("Style") = "display:none"

                Next


            Next




        End If

    End Sub


    Private Sub CargarGrillaFormacionAcademica()



        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then







            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId
            Dim ods As New DataSet

            Dim ods2 As New DataSet
            Dim oobjeto2 As New PersonalLegajos

            ods2 = oobjeto2.BuscarDatosDeUsuarioPorEmail(username)

            GrillaFA.DataSource = ods2.Tables(3)
            GrillaFA.DataBind()


            For Each row As GridViewRow In GrillaFA.Rows



                Dim ods3 As New DataSet
                Dim oobjeto3 As New PersonalLegajos

                ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(username)

                If ods3.Tables(3).Rows.Count > 0 Then
                    TituloGF.InnerHtml = "MIS DATOS ACADEMICOS"
                End If
                For i = 0 To ods3.Tables(3).Rows.Count - 1
                    'Dim Valor As Button = TryCast(GrillaGrupoFam.Rows(i).Cells(1).Controls(1), Button)

                    'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
                    'row.Cells(3).Attributes("Style") = "display:none"
                    'row.Cells(5).Attributes("Style") = "display:none"
                    'row.Cells(6).Attributes("Style") = "display:none"
                    row.Cells(0).Attributes("Style") = "display:none"

                Next


            Next
        Else
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim oobjeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = oobjeto2.BuscarDatosDeUsuarioPorEmail(name)


            GrillaFA.DataSource = ods2.Tables(3)
            GrillaFA.DataBind()


            For Each row As GridViewRow In GrillaFA.Rows



                Dim ods3 As New DataSet
                Dim oobjeto3 As New PersonalLegajos

                ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)

                If ods3.Tables(3).Rows.Count > 0 Then
                    TituloGF.InnerHtml = "MIS DATOS ACADEMICOS"
                End If
                For i = 0 To ods3.Tables(3).Rows.Count - 1
                    'Dim Valor As Button = TryCast(GrillaGrupoFam.Rows(i).Cells(1).Controls(1), Button)

                    'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
                    'row.Cells(3).Attributes("Style") = "display:none"
                    'row.Cells(5).Attributes("Style") = "display:none"
                    'row.Cells(6).Attributes("Style") = "display:none"
                    row.Cells(0).Attributes("Style") = "display:none"

                Next


            Next



        End If
    End Sub

    Private Sub CargarGrillaCursos()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then



            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId
            Dim ods As New DataSet

            Dim ods2 As New DataSet
            Dim oobjeto2 As New PersonalLegajos

            ods2 = oobjeto2.BuscarDatosDeUsuarioPorEmail(username)

            GrillaCurso.DataSource = ods2.Tables(4)
            GrillaCurso.DataBind()


            For Each row As GridViewRow In GrillaCurso.Rows



                Dim ods3 As New DataSet
                Dim oobjeto3 As New PersonalLegajos

                ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(username)

                If ods3.Tables(4).Rows.Count > 0 Then
                    TituloGF.InnerHtml = "MIS CURSOS"
                End If
                For i = 0 To ods3.Tables(4).Rows.Count - 1
                    'Dim Valor As Button = TryCast(GrillaGrupoFam.Rows(i).Cells(1).Controls(1), Button)

                    'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
                    'row.Cells(3).Attributes("Style") = "display:none"
                    'row.Cells(6).Attributes("Style") = "display:none"
                    'row.Cells(7).Attributes("Style") = "display:none"
                    row.Cells(0).Attributes("Style") = "display:none"

                Next


            Next
        Else
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim oobjeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = oobjeto2.BuscarDatosDeUsuarioPorEmail(name)


            GrillaCurso.DataSource = ods2.Tables(4)
            GrillaCurso.DataBind()


            For Each row As GridViewRow In GrillaCurso.Rows



                Dim ods3 As New DataSet
                Dim oobjeto3 As New PersonalLegajos

                ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)

                If ods3.Tables(4).Rows.Count > 0 Then
                    TituloGF.InnerHtml = "MIS CURSOS"
                End If
                For i = 0 To ods3.Tables(4).Rows.Count - 1
                    'Dim Valor As Button = TryCast(GrillaGrupoFam.Rows(i).Cells(1).Controls(1), Button)

                    'Valor.OnClientClick = ods3.Tables(1).Rows(i).Item("url").ToString
                    'row.Cells(3).Attributes("Style") = "display:none"
                    'row.Cells(6).Attributes("Style") = "display:none"
                    'row.Cells(7).Attributes("Style") = "display:none"
                    row.Cells(0).Attributes("Style") = "display:none"

                Next


            Next

        End If
    End Sub

#Region "COMBOS"
    Public Sub CargarLocalidades()

        Dim Ods As New DataSet
        Dim Objeto As New Localidaes


        Ods = Objeto.BuscarTodos
        CboLocalidad.DataSource = Ods.Tables(0)
        CboLocalidad.DataTextField = "descripcion"
        CboLocalidad.DataValueField = "id_localidad"
        CboLocalidad.DataBind()



    End Sub
    Private Sub CargarTipoDNI()
        Dim ods As New DataSet
        Dim OCategoriaTipo As New Categorias

        ods = OCategoriaTipo.BuscarPorCategoriatipo("DNITIPO")


        CboTipoDoc.DataSource = ods.Tables(0)
        CboTipoDoc.DataTextField = "NOMBRE"
        CboTipoDoc.DataValueField = "ID_CATEGORIA"
        CboTipoDoc.DataBind()

    End Sub
    Private Sub CargarCboNivelFormacion()
        Dim ods As New DataSet
        Dim OCategoriaTipo As New Categorias

        ods = OCategoriaTipo.BuscarPorCategoriatipo("NIVELFORMACION")


        CboNivelFormacion.DataSource = ods.Tables(0)
        CboNivelFormacion.DataTextField = "NOMBRE"
        CboNivelFormacion.DataValueField = "ID_CATEGORIA"
        CboNivelFormacion.DataBind()
    End Sub
    Private Sub CargarCboEstadosCiviles()
        Dim ods As New DataSet
        Dim OCategoriaTipo As New Categorias

        ods = OCategoriaTipo.BuscarPorCategoriatipo("ESTADOCIVIL")


        CboEstadoCivil.DataSource = ods.Tables(0)
        CboEstadoCivil.DataTextField = "NOMBRE"
        CboEstadoCivil.DataValueField = "ID_CATEGORIA"
        CboEstadoCivil.DataBind()
    End Sub
    Private Sub CargarCboNacionalidades()
        Dim ods As New DataSet
        Dim OCategoriaTipo As New Categorias

        ods = OCategoriaTipo.BuscarPorCategoriatipo("NACIONALIDADES")


        CboNacionalidad.DataSource = ods.Tables(0)
        CboNacionalidad.DataTextField = "NOMBRE"
        CboNacionalidad.DataValueField = "ID_CATEGORIA"
        CboNacionalidad.DataBind()
    End Sub

    Private Sub CargarCboSexos()
        Dim ods As New DataSet
        Dim OCategoriaTipo As New Categorias

        ods = OCategoriaTipo.BuscarPorCategoriatipo("SEXOTIPO")


        CboSexo.DataSource = ods.Tables(0)
        CboSexo.DataTextField = "NOMBRE"
        CboSexo.DataValueField = "ID_CATEGORIA"
        CboSexo.DataBind()


        'ComboSexo.DataSource = ods.Tables(0)
        'ComboSexo.DataTextField = "NOMBRE"
        'ComboSexo.DataValueField = "ID_CATEGORIA"
        'ComboSexo.DataBind()


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

#End Region




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



            If ods.Tables(0).Rows.Count > 0 Then


                Dim Nombre As String = ods.Tables(0).Rows(0).Item("Nombre").ToString
                Dim Apellido As String = ods.Tables(0).Rows(0).Item("Apellido").ToString
                Dim ID_PersonalLegajo As Integer = ods.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


                Dim odsNew As New DataSet
                Dim ObjNew As New PersonalLegajos
                odsNew = ObjNew.Postulantes_BuscarDatosCargadosParaProgressBar(ID_PersonalLegajo)

                Dim TotalRedes As Integer = odsNew.Tables(0).Rows.Count
                Dim TotalAntLab As Integer = odsNew.Tables(1).Rows.Count
                Dim TotalNumDoc As Integer = odsNew.Tables(2).Rows(0).Item("NroDocumento")
                If TotalNumDoc = 0 Then
                    TotalNumDoc = 0
                Else
                    TotalNumDoc = odsNew.Tables(2).Rows.Count
                End If



                Dim TotalFoto As Integer = odsNew.Tables(3).Rows(0).Item("Foto")


                If TotalFoto = 0 Then
                    TotalFoto = 0
                Else
                    TotalFoto = odsNew.Tables(3).Rows.Count
                End If

                Dim TotalFormAca As Integer = odsNew.Tables(4).Rows.Count

                Dim TotalAlcanzado As Integer = TotalRedes + TotalAntLab + TotalNumDoc + TotalFoto + TotalFormAca

                Dim TotalPermitido As Integer = 5
                Dim Resultado As Integer = TotalAlcanzado * 100 / TotalPermitido

                If TotalAlcanzado < 1 Then
                    UserPerfil.InnerHtml = "HOLA " & Nombre & ", completá los datos requeridos por favor"
                Else
                    UserPerfil.InnerHtml = "HOLA " & Nombre & ", tenés cargados el " & Resultado & " % de los datos requeridos 💪"
                End If



                'UserPerfil.InnerHtml = "HOLA " & Nombre

                TituloPaginaWeb.Text = "CV " & Nombre & " " & Apellido & " ID " & ID_PersonalLegajo

                ImgPersonal.Src = ods.Tables(0).Rows(0).Item("Foto").ToString

                TxtCalle.Value = ods.Tables(0).Rows(0).Item("Calle").ToString
                TxtCuil.Value = ods.Tables(0).Rows(0).Item("Cuil").ToString
                TxtDepto.Value = ods.Tables(0).Rows(0).Item("Depto").ToString
                TxtNumeroCalle.Value = ods.Tables(0).Rows(0).Item("Nro").ToString
                TxtPiso.Value = ods.Tables(0).Rows(0).Item("Piso").ToString
                TxtTelefonoFijo.Value = ods.Tables(0).Rows(0).Item("Telefono").ToString
                TxtTelefonMovil.Value = ods.Tables(0).Rows(0).Item("Movil").ToString
                CboTipoDoc.SelectedValue = ods.Tables(0).Rows(0).Item("ID_DocumentoTipo").ToString
                CboNivelFormacion.SelectedValue = ods.Tables(0).Rows(0).Item("ID_NivelFormacion").ToString
                TxtFechaNac.Text = ods.Tables(0).Rows(0).Item("Nacimiento").ToString
                CboNacionalidad.SelectedValue = ods.Tables(0).Rows(0).Item("ID_Nacionalidad").ToString
                CboLocalidad.SelectedValue = ods.Tables(0).Rows(0).Item("ID_Localidad").ToString
                TxtNumeroDoc.Value = ods.Tables(0).Rows(0).Item("NroDocumento").ToString

                CboEstadoCivil.SelectedValue = ods.Tables(0).Rows(0).Item("ID_EstadoCivil").ToString


                Dim ods2 As New DataSet
                Dim oobjeto2 As New Redes

                ods2 = oobjeto2.RedesSociales_BuscarPorEmail(username)

                RepeaterRedes.DataSource = ods2.Tables(0)
                RepeaterRedes.DataBind()


                'Dim Ods3 As New DataSet
                'Dim Objeto3 As New Redes
                'Ods3 = Objeto3.RedesSociales_BuscarDatosDeRedes(username, ComboRedes.SelectedItem.Text)
                'If Ods3.Tables(0).Rows.Count > 0 Then
                '    TxtLinkRedsocial.Text = Ods3.Tables(0).Rows(0).Item("Link").ToString

                'End If
                '---------------------------------------------------------------------------------------------
                '----------------DATOS REFERENTES-------------------------------------------------------------

                'TxtFechaDesde.Text = ods.Tables(0).Rows(0).Item("Desde").ToString
                'TxtFechaHasta.Text = ods.Tables(0).Rows(0).Item("Hasta").ToString
                'ChkActivo.Checked = ods.Tables(0).Rows(0).Item("Activo").ToString
                'Combo.Value = ods.Tables(0).Rows(0).Item("Area").ToString
                'TxtPuesto.Value = ods.Tables(0).Rows(0).Item("Puesto").ToString
                'TxtEmpresa.Text = ods.Tables(0).Rows(0).Item("Empresa").ToString
                'TxtDescrip.Value = ods.Tables(0).Rows(0).Item("DescripcionArea").ToString
                'TxtDatosRef.Value = ods.Tables(0).Rows(0).Item("DatosReferentes").ToString
                'TxtRefCoov.Value = ods.Tables(0).Rows(0).Item("ReferenteCoovilros").ToString

            End If


            If TxtNumeroDoc.Value <> "" Then
                bienvenida.Visible = False
            Else
                bienvenida.Visible = True
            End If

            ''ID_PersonalLegajo,Nombre, Apellido,Calle, Nro, Piso, Depto, Telefono,Movil,ID_DocumentoTipo,NroDocumento,Foto, ID_NivelFormacion,
            'ID_EstadoCivil, Nacimiento, ID_Nacionalidad, Sexo, Cuil, Categoria, Ingreso, Egreso, MesesAntiguedadReconocida, ID_Convenio,
            'Id_Art, NroAfiliado, ID_Banco, NroCajaAhorro, ID_Seccion, ID_Puesto, ID_Jefe, Jubilado, Tarjeta, MensajeIngreso, MensajeEgreso, FondoCompJub, AporteVoluntario, Observaciones, Archivo,
            'Estado, Tipo, Email, ID_Localidad
        Else

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods As New DataSet
            Dim oobjeto As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods = oobjeto.BuscarDatosDeUsuarioPorEmail(name)

            If ods.Tables(0).Rows.Count > 0 Then


                Dim Nombre As String = ods.Tables(0).Rows(0).Item("Nombre").ToString
                Dim Apellido As String = ods.Tables(0).Rows(0).Item("Apellido").ToString
                Dim ID_PersonalLegajo As Integer = ods.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


                Dim odsNew As New DataSet
                Dim ObjNew As New PersonalLegajos
                odsNew = ObjNew.Postulantes_BuscarDatosCargadosParaProgressBar(ID_PersonalLegajo)

                Dim TotalRedes As Integer = odsNew.Tables(0).Rows.Count
                Dim TotalAntLab As Integer = odsNew.Tables(1).Rows.Count
                Dim TotalNumDoc As Integer = odsNew.Tables(2).Rows(0).Item("NroDocumento")
                If TotalNumDoc = 0 Then
                    TotalNumDoc = 0
                Else
                    TotalNumDoc = odsNew.Tables(2).Rows.Count
                End If

                

                Dim TotalFoto As Integer = odsNew.Tables(3).Rows(0).Item("Foto")


                If TotalFoto = 0 Then
                    TotalFoto = 0
                Else
                    TotalFoto = odsNew.Tables(3).Rows.Count
                End If

                Dim TotalFormAca As Integer = odsNew.Tables(4).Rows.Count

                Dim TotalAlcanzado As Integer = TotalRedes + TotalAntLab + TotalNumDoc + TotalFoto + TotalFormAca

                Dim TotalPermitido As Integer = 5
                Dim Resultado As Integer = TotalAlcanzado * 100 / TotalPermitido

                If TotalAlcanzado < 1 Then
                    UserPerfil.InnerHtml = "HOLA " & Nombre & ", completá los datos requeridos por favor"
                Else
                    UserPerfil.InnerHtml = "HOLA " & Nombre & ", tenés cargados el " & Resultado & " % de los datos requeridos 💪"
                End If



                TituloPaginaWeb.Text = "CV " & Nombre & " " & Apellido & " ID " & ID_PersonalLegajo

                ImgPersonal.Src = ods.Tables(0).Rows(0).Item("Foto").ToString


                TxtCalle.Value = ods.Tables(0).Rows(0).Item("Calle").ToString
                TxtCuil.Value = ods.Tables(0).Rows(0).Item("Cuil").ToString
                TxtDepto.Value = ods.Tables(0).Rows(0).Item("Depto").ToString
                TxtNumeroCalle.Value = ods.Tables(0).Rows(0).Item("Nro").ToString
                TxtPiso.Value = ods.Tables(0).Rows(0).Item("Piso").ToString
                TxtTelefonoFijo.Value = ods.Tables(0).Rows(0).Item("Telefono").ToString
                TxtTelefonMovil.Value = ods.Tables(0).Rows(0).Item("Movil").ToString
                CboTipoDoc.SelectedValue = ods.Tables(0).Rows(0).Item("ID_DocumentoTipo").ToString
                CboNivelFormacion.SelectedValue = ods.Tables(0).Rows(0).Item("ID_NivelFormacion").ToString
                TxtFechaNac.Text = ods.Tables(0).Rows(0).Item("Nacimiento").ToString
                CboNacionalidad.SelectedValue = ods.Tables(0).Rows(0).Item("ID_Nacionalidad").ToString
                CboLocalidad.SelectedValue = ods.Tables(0).Rows(0).Item("ID_Localidad").ToString
                TxtNumeroDoc.Value = ods.Tables(0).Rows(0).Item("NroDocumento").ToString

                CboEstadoCivil.SelectedValue = ods.Tables(0).Rows(0).Item("ID_EstadoCivil").ToString



                Dim ods2 As New DataSet
                Dim oobjeto2 As New Redes

                ods2 = oobjeto2.RedesSociales_BuscarPorEmail(name)

                RepeaterRedes.DataSource = ods2.Tables(0)
                RepeaterRedes.DataBind()

                'Dim Ods3 As New DataSet
                'Dim Objeto3 As New Redes
                'Ods3 = Objeto3.RedesSociales_BuscarDatosDeRedes(name, ComboRedes.SelectedItem.Text)
                'If Ods3.Tables(0).Rows.Count > 0 Then
                '    TxtLinkRedsocial.Text = Ods3.Tables(0).Rows(0).Item("Link").ToString

                'End If

                '---------------------------------------------------------------------------------------------
                '----------------DATOS REFERENTES-------------------------------------------------------------

                'TxtFechaDesde.Text = ods.Tables(0).Rows(0).Item("Desde").ToString
                'TxtFechaHasta.Text = ods.Tables(0).Rows(0).Item("Hasta").ToString
                'ChkActivo.Checked = ods.Tables(0).Rows(0).Item("Activo").ToString
                'Combo.Value = ods.Tables(0).Rows(0).Item("Area").ToString
                'TxtPuesto.Value = ods.Tables(0).Rows(0).Item("Puesto").ToString
                'TxtEmpresa.Text = ods.Tables(0).Rows(0).Item("Empresa").ToString
                'TxtDescrip.Value = ods.Tables(0).Rows(0).Item("DescripcionArea").ToString
                'TxtDatosRef.Value = ods.Tables(0).Rows(0).Item("DatosReferentes").ToString
                'TxtRefCoov.Value = ods.Tables(0).Rows(0).Item("ReferenteCoovilros").ToString

            End If


            If TxtNumeroDoc.Value <> "" Then
                bienvenida.Visible = False
            Else
                bienvenida.Visible = True
            End If

        End If
        ' End If

    End Sub
    Protected Sub CerrarSesion(sender As Object, e As EventArgs)

        Session.Clear()
        Response.Cookies("datos").Expires = Now.AddDays(-1D)


        Response.Cookies.Remove("datos")
        FormsAuthentication.SignOut()
        Roles.DeleteCookie()


        'Session.Abandon()


        Response.Redirect("FrmInicio.aspx")

    End Sub
    Protected Sub GuardarySeguir(sender As Object, e As EventArgs)
        ModificarDatosPersonales()
    End Sub




    Public Sub ModificarDatosContacto()

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

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Ods = Objeto.ModificarDatosDeContacto(ID_PersonalLegajo, TxtCalle.Value, TxtNumeroCalle.Value, TxtPiso.Value, TxtDepto.Value, TxtTelefonoFijo.Value, TxtTelefonMovil.Value, CboLocalidad.SelectedValue)

            'ACA DEBO AGREGAR REDES SOCIALES

            Dim odsRedes As New DataSet
            Dim ObjeRedes As New Redes
            Dim ID_Red As Integer
            Dim Imagen As String

            If ComboRedes.SelectedItem.Text = "FACEBOOK" Then
                Imagen = "https://crear.net.ar/CLIENTES/CONSTRUC/Construc/Facebook_icon-icons.com_66805.png"
            ElseIf ComboRedes.SelectedItem.Text = "INSTAGRAM" Then
                Imagen = "https://crear.net.ar/CLIENTES/CONSTRUC/Construc/1491580635-yumminkysocialmedia26_83102.png"
            ElseIf ComboRedes.SelectedItem.Text = "TWITTER" Then
                Imagen = "https://crear.net.ar/CLIENTES/CONSTRUC/Construc/1491579542-yumminkysocialmedia22_83078.png"
            ElseIf ComboRedes.SelectedItem.Text = "YOUTUBE" Then
                Imagen = "https://crear.net.ar/CLIENTES/CONSTRUC/Construc/1491580651-yumminkysocialmedia28_83061.png"

            End If



            Dim Ods3 As New DataSet
            Dim Objeto3 As New Redes
            Ods3 = Objeto3.RedesSociales_BuscarDatosDeRedes(username, ComboRedes.SelectedItem.Text)




            If Ods3.Tables(0).Rows.Count > 0 Then
                Dim ID_Redbase As String = Ods3.Tables(0).Rows(0).Item("ID_Redes").ToString
                TxtLinkRedsocial.Text = Ods3.Tables(0).Rows(0).Item("Link").ToString




                Ods3 = Objeto3.Modificar(ID_Redbase, ID_PersonalLegajo, TxtLinkRedsocial.Text, ComboRedes.SelectedItem.Text, 1, Imagen)

            Else

                If TxtLinkRedsocial.Text <> "" And ComboRedes.SelectedItem.Text <> "SELECCIONE..." Then


                    ID_Red = ObjeRedes.Agregar(ID_PersonalLegajo, TxtLinkRedsocial.Text, ComboRedes.SelectedItem.Text, 1, Imagen)
                Else
                    Return
                End If


            End If

        Else

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)



            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            ods2 = Objeto2.ModificarDatosDeContacto(ID_PersonalLegajo, TxtCalle.Value, TxtNumeroCalle.Value, TxtPiso.Value, TxtDepto.Value, TxtTelefonoFijo.Value, TxtTelefonMovil.Value, CboLocalidad.SelectedValue)


            'ACA DEBO AGREGAR REDES SOCIALES

            Dim odsRedes As New DataSet
            Dim ObjeRedes As New Redes
            Dim ID_Red As Integer
            Dim Imagen As String

            If ComboRedes.SelectedItem.Text = "FACEBOOK" Then
                Imagen = "https://crear.net.ar/CLIENTES/CONSTRUC/Construc/Facebook_icon-icons.com_66805.png"
            ElseIf ComboRedes.SelectedItem.Text = "INSTAGRAM" Then
                Imagen = "https://crear.net.ar/CLIENTES/CONSTRUC/Construc/1491580635-yumminkysocialmedia26_83102.png"
            ElseIf ComboRedes.SelectedItem.Text = "TWITTER" Then
                Imagen = "https://crear.net.ar/CLIENTES/CONSTRUC/Construc/1491579542-yumminkysocialmedia22_83078.png"
            ElseIf ComboRedes.SelectedItem.Text = "YOUTUBE" Then
                Imagen = "https://crear.net.ar/CLIENTES/CONSTRUC/Construc/1491580651-yumminkysocialmedia28_83061.png"

            End If

            Dim Ods3 As New DataSet
            Dim Objeto3 As New Redes
            Ods3 = Objeto3.RedesSociales_BuscarDatosDeRedes(name, ComboRedes.SelectedItem.Text)




            If Ods3.Tables(0).Rows.Count > 0 Then
                Dim ID_Redbase As String = Ods3.Tables(0).Rows(0).Item("ID_Redes").ToString
                'TxtLinkRedsocial.Text = Ods3.Tables(0).Rows(0).Item("Link").ToString
                Ods3 = Objeto3.Modificar(ID_Redbase, ID_PersonalLegajo, TxtLinkRedsocial.Text, ComboRedes.SelectedItem.Text, 1, Imagen)

            Else


                If TxtLinkRedsocial.Text <> "" And ComboRedes.SelectedItem.Text <> "SELECCIONE..." Then

                

                ID_Red = ObjeRedes.Agregar(ID_PersonalLegajo, TxtLinkRedsocial.Text, ComboRedes.SelectedItem.Text, 1, Imagen)

                Else
                    Return
                End If

            End If
        End If







    End Sub


    Public Sub ModificarDatosPersonales()

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

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Ods = Objeto.ModificarDatosPersonales(ID_PersonalLegajo, Apellido, Nombre, CboTipoDoc.SelectedValue, TxtNumeroDoc.Value, CboNivelFormacion.SelectedValue, CboEstadoCivil.SelectedValue, TxtFechaNac.Text, CboNacionalidad.SelectedValue, CboSexo.SelectedValue, TxtCuil.Value)


            If btnSubirImgEmpleado.HasFile = True Then

                Dim urlImagen As String
                urlImagen = "http://coovilros.com/rrhh/ImagenesPersonal/"

                btnSubirImgEmpleado.SaveAs(HttpContext.Current.Server.MapPath("./ImagenesPersonal/") & ID_PersonalLegajo & ".png")

                urlImagen = urlImagen & ID_PersonalLegajo & ".png"


                Dim ods3 As New DataSet
                Dim oObjeto3 As New PersonalLegajos

                ods3 = oObjeto3.ModificarFoto(ID_PersonalLegajo, urlImagen)



                Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "<script>swal('Felicitaciones!', 'Tus datos se modificaron con Éxito!', 'success')</script>")
                

                Response.Redirect("FrmMiPerfil.aspx")




                'Else
                '    Dim ods3 As New DataSet
                '    Dim oObjeto3 As New PersonalLegajos
                '    ods3 = oObjeto3.ModificarFoto(ID_PersonalLegajo, "https://crear.net.ar/CLIENTES/LACALLE/Lacalle/user.png")

                '
            End If


        Else


            Dim Ods As New DataSet
            Dim Objeto As New PersonalLegajos

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Ods = Objeto.ModificarDatosPersonales(ID_PersonalLegajo, Apellido, Nombre, CboTipoDoc.SelectedValue, TxtNumeroDoc.Value, CboNivelFormacion.SelectedValue, CboEstadoCivil.SelectedValue, TxtFechaNac.Text, CboNacionalidad.SelectedValue, CboSexo.SelectedValue, TxtCuil.Value)


            If btnSubirImgEmpleado.HasFile = True Then

                Dim urlImagen As String
                urlImagen = "http://coovilros.com/rrhh/ImagenesPersonal/"

                btnSubirImgEmpleado.SaveAs(HttpContext.Current.Server.MapPath("./ImagenesPersonal/") & ID_PersonalLegajo & ".png")

                urlImagen = urlImagen & ID_PersonalLegajo & ".png"





                Dim ods3 As New DataSet
                Dim oObjeto3 As New PersonalLegajos

                ods3 = oObjeto3.ModificarFoto(ID_PersonalLegajo, urlImagen)

                Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "<script>swal('Felicitaciones!', 'Tus datos se modificaron con Éxito!', 'success')</script>")

                Response.Redirect("FrmMiPerfil.aspx")

                'Else
                '    Dim ods3 As New DataSet
                '    Dim oObjeto3 As New PersonalLegajos
                '    ods3 = oObjeto3.ModificarFoto(ID_PersonalLegajo, "https://crear.net.ar/CLIENTES/LACALLE/Lacalle/user.png")

                '
            End If



        End If
    End Sub


    Public Sub ModificarDatosReferenciasLaborales()

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

            Dim ID_PersonalLegajo As Integer = ods2.Tables(1).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim ID_AntecedentesLaborales As Integer = ods2.Tables(1).Rows(0).Item("ID_AntecedentesLaborales").ToString
            Dim Activo As Integer

            If ChkActivo.Checked = True Then

                Activo = 1
            Else
                Activo = 0
            End If



            ods2 = Objeto2.Modificar_AntecedentesLaborales(ID_AntecedentesLaborales, ID_PersonalLegajo, TxtFechaDesde.Text, Activo, TxtFechaHasta.Text, TxtEmpresa.Text, TxtPuesto.Value, Combo.Value, TxtDescrip.Value, TxtDatosRef.Value, TxtRefCoov.Value)


        Else



            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)

            Dim ID_PersonalLegajo As Integer = ods2.Tables(1).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim ID_AntecedentesLaborales As Integer = ods2.Tables(1).Rows(0).Item("ID_AntecedentesLaborales").ToString
            Dim Activo As Integer

            If ChkActivo.Checked = True Then

                Activo = 1
            Else
                Activo = 0
            End If



            ods2 = Objeto2.Modificar_AntecedentesLaborales(ID_AntecedentesLaborales, ID_PersonalLegajo, TxtFechaDesde.Text, Activo, TxtFechaHasta.Text, TxtEmpresa.Text, TxtPuesto.Value, Combo.Value, TxtDescrip.Value, TxtDatosRef.Value, TxtRefCoov.Value)



        End If




    End Sub



    Public Sub GuardarDatosReferenciasLaborales()


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

            Dim Activo As Integer

            If ChkActivo.Checked = True Then

                Activo = 1
            Else
                Activo = 0
            End If

            Dim ID_Resultado As Integer

            ID_Resultado = Objeto2.Agregar_AntecedentesLaborales(ID_PersonalLegajo, TxtFechaDesde.Text, Activo, TxtFechaHasta.Text, TxtEmpresa.Text, TxtPuesto.Value, Combo.Value, TxtDescrip.Value, TxtDatosRef.Value, TxtRefCoov.Value)



            Response.Redirect("FrmMiPerfil.aspx")

        Else



            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)

            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Dim Activo As Integer

            If ChkActivo.Checked = True Then

                Activo = 1
            Else
                Activo = 0
            End If

            Dim ID_Resultado As Integer

            ID_Resultado = Objeto2.Agregar_AntecedentesLaborales(ID_PersonalLegajo, TxtFechaDesde.Text, Activo, TxtFechaHasta.Text, TxtEmpresa.Text, TxtPuesto.Value, Combo.Value, TxtDescrip.Value, TxtDatosRef.Value, TxtRefCoov.Value)



            Response.Redirect("FrmMiPerfil.aspx")

        End If

    End Sub
    Public Sub GuardarDatosGrupofamiliar()


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

            Dim Activo As Integer

            If ChkActivo.Checked = True Then

                Activo = 1
            Else
                Activo = 0
            End If

            Dim ID_Resultado As Integer

            ID_Resultado = Objeto2.Agregar_GrupoFamiliar(ID_PersonalLegajo, TxtApellidoGrupFam.Text, TxtNombreGrupFam.Text, ComboPrentezco.Value, TxtFechaNacGF.Text, TxtOcupacion.Text)



            Response.Redirect("FrmMiPerfil.aspx")

        Else


            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)


            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString

            Dim Activo As Integer

            If ChkActivo.Checked = True Then

                Activo = 1
            Else
                Activo = 0
            End If

            Dim ID_Resultado As Integer

            ID_Resultado = Objeto2.Agregar_GrupoFamiliar(ID_PersonalLegajo, TxtApellidoGrupFam.Text, TxtNombreGrupFam.Text, ComboPrentezco.Value, TxtFechaNacGF.Text, TxtOcupacion.Text)



            Response.Redirect("FrmMiPerfil.aspx")

        End If


    End Sub
    Public Sub GuardarFormacionAcademica()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then




            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)






            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString



            Dim Ods As New DataSet
            Dim oObjeto As New FormacionAcademica
            Dim Resultado As Integer










            Resultado = oObjeto.Agregar(ID_PersonalLegajo, TxtHastaFA.Text, TxtHastaFA.Text, ComboFA.Value, TxtInstitucion.Text, TxtTitulo.Text, "", ComboEspecilidad.Value)
            If SubirRecibo.HasFile = True Then
                'EXTENCION DE RECIBOS
                Dim FiRec2 As FileInfo = New FileInfo(SubirRecibo.FileName)
                Dim extRec2 As String = FiRec2.Extension

              


                Dim ExtensionRecibos2 As String = extRec2






                SubirRecibo.SaveAs((HttpContext.Current.Server.MapPath("./ArchivoAdjunto/") & Resultado & ExtensionRecibos2))




                Ods = oObjeto.ModificarArchivoAjunto(Resultado, "http://coovilros.com/rrhh/ArchivoAdjunto/" & Resultado & ExtensionRecibos2)
            End If





            Response.Redirect("FrmMiperfil.aspx")

        Else
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString



            Dim Ods As New DataSet
            Dim oObjeto As New FormacionAcademica
            Dim Resultado As Integer
            Resultado = oObjeto.Agregar(ID_PersonalLegajo, TxtHastaFA.Text, TxtHastaFA.Text, ComboFA.Value, TxtInstitucion.Text, TxtTitulo.Text, "", ComboEspecilidad.Value)


            If SubirRecibo.HasFile = True Then
                'EXTENCION DE RECIBOS
                Dim FiRec2 As FileInfo = New FileInfo(SubirRecibo.FileName)
                Dim extRec2 As String = FiRec2.Extension




                Dim ExtensionRecibos2 As String = extRec2






                SubirRecibo.SaveAs((HttpContext.Current.Server.MapPath("./ArchivoAdjunto/") & Resultado & ExtensionRecibos2))




                Ods = oObjeto.ModificarArchivoAjunto(Resultado, "http://coovilros.com/rrhh/ArchivoAdjunto/" & Resultado & ExtensionRecibos2)
            End If

            Response.Redirect("FrmMiperfil.aspx")




        End If

    End Sub

    Public Sub GuardarCursos()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then





            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New Cursos
            Dim ID_Resultado As Integer

            ID_Resultado = oObjeto.Agregar(ID_PersonalLegajo, TxtFechaDesdeCurso.Text, TxtFechaHastaCurso.Text, TxtNombredelCurso.Text, ComboCursos.Value, TxtHoras.Text, TxtInstitucionCursos.Text, TxtComentarios.Text)

            Response.Redirect("FrmMiPerfil.aspx")

        Else

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)


            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New Cursos
            Dim ID_Resultado As Integer

            ID_Resultado = oObjeto.Agregar(ID_PersonalLegajo, TxtFechaDesdeCurso.Text, TxtFechaHastaCurso.Text, TxtNombredelCurso.Text, ComboCursos.Value, TxtHoras.Text, TxtInstitucionCursos.Text, TxtComentarios.Text)

            Response.Redirect("FrmMiPerfil.aspx")





        End If

    End Sub

    Public Sub GuardarAntecedentesSalud()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then




            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New AntecedentesSalud
            Dim ID_Resultado As Integer
            Dim Enfermedad As String
            Dim Cirugia As String
            If EnfermedadSI.Checked = True Then

                Enfermedad = 1
            Else
                Enfermedad = 0
            End If

            If cirugiaSi.Checked = True Then
                Cirugia = 1
            Else
                Cirugia = 0
            End If

            If TxtAltura.Text <> "" And TxtPeso.Text <> "" Then




                ID_Resultado = oObjeto.Agregar(ID_PersonalLegajo, TxtAltura.Text, TxtPeso.Text, Enfermedad, TxtTratamiento.Text, Cirugia, TxtCirugia.Text)

                Response.Redirect("FrmMiPerfil.aspx")


            End If

        Else

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)



            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New AntecedentesSalud
            Dim ID_Resultado As Integer
            Dim Enfermedad As String
            Dim Cirugia As String
            If EnfermedadSI.Checked = True Then

                Enfermedad = 1
            Else
                Enfermedad = 0
            End If

            If cirugiaSi.Checked = True Then
                Cirugia = 1
            Else
                Cirugia = 0
            End If

            If TxtAltura.Text <> "" And TxtPeso.Text <> "" Then




                ID_Resultado = oObjeto.Agregar(ID_PersonalLegajo, TxtAltura.Text, TxtPeso.Text, Enfermedad, TxtTratamiento.Text, Cirugia, TxtCirugia.Text)

                Response.Redirect("FrmMiPerfil.aspx")


            End If






        End If
    End Sub

    Public Sub ModificarDatosAntecedentesSalud()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then




            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New AntecedentesSalud
            Dim ID_Resultado As Integer
            Dim Enfermedad As String
            Dim Cirugia As String
            If EnfermedadSI.Checked = True Then

                Enfermedad = 1
            Else
                Enfermedad = 0
            End If

            If cirugiaSi.Checked = True Then
                Cirugia = 1
            Else
                Cirugia = 0
            End If

            If TxtAltura.Text <> "" And TxtPeso.Text <> "" Then


                Dim ods3 As New DataSet
                Dim oObjeto3 As New PersonalLegajos




                ods3 = oObjeto3.BuscarDatosDeUsuarioPorEmail(username)



                'BUSCO EL ID
                Dim ID As String = ods3.Tables(5).Rows(0).Item("ID_AntecedentesSalud").ToString


                ods = oObjeto.Modificar(ID, ID_PersonalLegajo, TxtAltura.Text, TxtPeso.Text, Enfermedad, TxtTratamiento.Text, Cirugia, TxtCirugia.Text)




                Response.Redirect("FrmMiPerfil.aspx")












            End If

        Else

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)


            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New AntecedentesSalud
            Dim ID_Resultado As Integer
            Dim Enfermedad As String
            Dim Cirugia As String
            If EnfermedadSI.Checked = True Then

                Enfermedad = 1
            Else
                Enfermedad = 0
            End If

            If cirugiaSi.Checked = True Then
                Cirugia = 1
            Else
                Cirugia = 0
            End If

            If TxtAltura.Text <> "" And TxtPeso.Text <> "" Then


                Dim ods3 As New DataSet
                Dim oObjeto3 As New PersonalLegajos




                ods3 = oObjeto3.BuscarDatosDeUsuarioPorEmail(name)



                'BUSCO EL ID
                Dim ID As String = ods3.Tables(5).Rows(0).Item("ID_AntecedentesSalud").ToString


                ods = oObjeto.Modificar(ID, ID_PersonalLegajo, TxtAltura.Text, TxtPeso.Text, Enfermedad, TxtTratamiento.Text, Cirugia, TxtCirugia.Text)




                Response.Redirect("FrmMiPerfil.aspx")













            End If






        End If


    End Sub



    Public Sub BuscarAntecedentesSalud()

        Dim ods2 As New DataSet
        Dim Objeto2 As New PersonalLegajos



        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then




            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New PersonalLegajos
            Dim ID_Resultado As Integer
            Dim Enfermedad As String
            Dim Cirugia As String
            If EnfermedadSI.Checked = True Then

                Enfermedad = 1
            Else
                Enfermedad = 0
            End If

            If cirugiaSi.Checked = True Then
                Cirugia = 1
            Else
                Cirugia = 0
            End If


            ods = oObjeto.BuscarDatosDeUsuarioPorEmail(username)

            If ods.Tables(5).Rows.Count > 0 Then

                h3AntecedeSalud.InnerHtml = "MODIFICAR DATOS ANTECEDENTES SALUD"
                TxtAltura.Text = ods.Tables(5).Rows(0).Item("Altura").ToString
                TxtPeso.Text = ods.Tables(5).Rows(0).Item("Peso").ToString
                Enfermedad = ods.Tables(5).Rows(0).Item("Enfermedad").ToString
                TxtTratamiento.Text = ods.Tables(5).Rows(0).Item("DescripcionEnfermedad").ToString
                Cirugia = ods.Tables(5).Rows(0).Item("Cirugias").ToString
                TxtCirugia.Text = ods.Tables(5).Rows(0).Item("DescripcionCirugias").ToString


                BtnAgregarAntSalud.Value = "MODIFICAR DATOS"
            Else

                h3AntecedeSalud.InnerHtml = "AGREGAR ANTECEDENTES SALUD"
                BtnAgregarAntSalud.Value = "AGREGAR DATOS"

            End If


        Else
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods3 As New DataSet
            Dim oobjeto3 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)

            Dim Nombre As String = ods3.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods3.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods3.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods As New DataSet
            Dim oObjeto As New PersonalLegajos
            Dim ID_Resultado As Integer
            Dim Enfermedad As String
            Dim Cirugia As String
            If EnfermedadSI.Checked = True Then

                Enfermedad = 1
            Else
                Enfermedad = 0
            End If

            If cirugiaSi.Checked = True Then
                Cirugia = 1
            Else
                Cirugia = 0
            End If


            ods = oObjeto.BuscarDatosDeUsuarioPorEmail(name)

            If ods.Tables(5).Rows.Count > 0 Then

                h3AntecedeSalud.InnerHtml = "MODIFICAR DATOS ANTECEDENTES SALUD"
                TxtAltura.Text = ods.Tables(5).Rows(0).Item("Altura").ToString
                TxtPeso.Text = ods.Tables(5).Rows(0).Item("Peso").ToString
                Enfermedad = ods.Tables(5).Rows(0).Item("Enfermedad").ToString
                TxtTratamiento.Text = ods.Tables(5).Rows(0).Item("DescripcionEnfermedad").ToString
                Cirugia = ods.Tables(5).Rows(0).Item("Cirugias").ToString
                TxtCirugia.Text = ods.Tables(5).Rows(0).Item("DescripcionCirugias").ToString


                BtnAgregarAntSalud.Value = "MODIFICAR DATOS"
            Else

                h3AntecedeSalud.InnerHtml = "AGREGAR ANTECEDENTES SALUD"
                BtnAgregarAntSalud.Value = "AGREGAR DATOS"

            End If


        End If

    End Sub






    Private Sub BtnDatosPersonles_ServerClick(sender As Object, e As System.EventArgs) Handles BtnDatosPersonles.ServerClick


        ModificarDatosPersonales()


    End Sub



    Private Sub BtnDatosDeContacto_ServerClick(sender As Object, e As System.EventArgs) Handles BtnDatosDeContacto.ServerClick

        ModificarDatosContacto()
        Response.Redirect("FrmMiPerfil.aspx")
    End Sub

    Private Sub BtnRefLab_ServerClick(sender As Object, e As System.EventArgs) Handles BtnRefLab.ServerClick





        GuardarDatosReferenciasLaborales()





    End Sub










    Private Sub Grilla_RowCreated(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles Grilla.RowCreated
        e.Row.Cells(6).Visible = False
        e.Row.Cells(7).Visible = False
        e.Row.Cells(0).Visible = False
    End Sub





    Private Sub BtnAgregarGrupoFam_ServerClick(sender As Object, e As System.EventArgs) Handles BtnAgregarGrupoFam.ServerClick
        GuardarDatosGrupofamiliar()
    End Sub

    Private Sub GrillaGrupoFam_RowCreated(sender As Object, e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GrillaGrupoFam.RowCreated
        e.Row.Cells(6).Visible = False
        e.Row.Cells(7).Visible = False
        e.Row.Cells(0).Visible = False
    End Sub

    Private Sub BtnFormacionAca_ServerClick(sender As Object, e As EventArgs) Handles BtnFormacionAca.ServerClick


        GuardarFormacionAcademica()



    End Sub

    Private Sub GrillaFA_RowCreated(sender As Object, e As GridViewRowEventArgs) Handles GrillaFA.RowCreated
        e.Row.Cells(5).Visible = False
        e.Row.Cells(6).Visible = False
        e.Row.Cells(0).Visible = False
    End Sub

    Private Sub BtnAgregarCurso_ServerClick(sender As Object, e As EventArgs) Handles BtnAgregarCurso.ServerClick

        GuardarCursos()

    End Sub

    Private Sub GrillaCurso_RowCreated(sender As Object, e As GridViewRowEventArgs) Handles GrillaCurso.RowCreated
        e.Row.Cells(5).Visible = False
        e.Row.Cells(6).Visible = False
        e.Row.Cells(0).Visible = False



    End Sub

    Private Sub BtnAgregarAntSalud_ServerClick(sender As Object, e As EventArgs) Handles BtnAgregarAntSalud.ServerClick
        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then



            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            Dim ods3 As New DataSet
            Dim oObjeto3 As New PersonalLegajos




            ods3 = oObjeto3.BuscarDatosDeUsuarioPorEmail(username)

            If ods3.Tables(5).Rows.Count > 0 Then

                'BUSCO EL ID
                Dim ID As String = ods3.Tables(5).Rows(0).Item("ID_AntecedentesSalud").ToString
            End If
            If ID <> "" Then

                ModificarDatosAntecedentesSalud()

            Else
                GuardarAntecedentesSalud()
            End If


        Else
            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods3 As New DataSet
            Dim oobjeto3 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)




            Dim Nombre As String = ods3.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods3.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods3.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString







            ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)

            If ods3.Tables(5).Rows.Count > 0 Then

                'BUSCO EL ID
                Dim ID As String = ods3.Tables(5).Rows(0).Item("ID_AntecedentesSalud").ToString

                If ID <> " " Then

                    ModificarDatosAntecedentesSalud()
                End If
            Else
                GuardarAntecedentesSalud()
            End If





        End If


    End Sub

    Private Sub irAPerfil_ServerClick(sender As Object, e As System.EventArgs) Handles irAPerfil.ServerClick

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then



            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim UserIDUsuario As String = ods2.Tables(0).Rows(0).Item("Userid").ToString

            Response.Redirect("VerMiPerfil.aspx?Token=" & UserIDUsuario)
        Else

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods3 As New DataSet
            Dim oobjeto3 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)




            Dim Nombre As String = ods3.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods3.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods3.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim UserID As String = ods3.Tables(0).Rows(0).Item("Userid").ToString



            Response.Redirect("VerMiPerfil.aspx?Token=" & UserID)
        End If

    End Sub

    Private Sub iraperfilmovil_ServerClick(sender As Object, e As System.EventArgs) Handles iraperfilmovil.ServerClick
        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then



            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId

            ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim UserIDUsuario As String = ods2.Tables(0).Rows(0).Item("Userid").ToString

            Response.Redirect("VerMiPerfil.aspx?Token=" & UserIDUsuario)
        Else

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos

            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")

            Dim ods3 As New DataSet
            Dim oobjeto3 As New PersonalLegajos

            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")
            ods3 = oobjeto3.BuscarDatosDeUsuarioPorEmail(name)




            Dim Nombre As String = ods3.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods3.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods3.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim UserID As String = ods3.Tables(0).Rows(0).Item("Userid").ToString



            Response.Redirect("VerMiPerfil.aspx?Token=" & UserID)
        End If

    End Sub



    Private Sub ComboRedes_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ComboRedes.SelectedIndexChanged
        'Dim PruebaGalleta As HttpCookie
        'PruebaGalleta = Request.Cookies("datos")
        'If PruebaGalleta Is Nothing Then




        '    Dim Ods As New DataSet
        '    Dim Objeto As New PersonalLegajos

        '    Dim userId As String = Membership.GetUser().UserName

        '    Dim username As String = userId


        '    Dim ods2 As New DataSet
        '    Dim Objeto2 As New PersonalLegajos


        '    ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(username)

        '    Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
        '    Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
        '    Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString






        '    Dim Ods3 As New DataSet
        '    Dim Objeto3 As New Redes
        '    Ods3 = Objeto3.RedesSociales_BuscarDatosDeRedes(username, ComboRedes.SelectedItem.Text)
        '    If Ods3.Tables(0).Rows.Count > 0 Then
        '        TxtLinkRedsocial.Text = Ods3.Tables(0).Rows(0).Item("Link").ToString

        '    End If

        'Else

        '    Dim Galleta As HttpCookie
        '    Galleta = Request.Cookies("datos")

        '    Dim ods2 As New DataSet
        '    Dim Objeto2 As New PersonalLegajos

        '    Dim name As String = Galleta.Values("nombre")
        '    Dim pass As String = Galleta.Values("pass")
        '    Dim IdUser As String = Galleta.Values("userid")
        '    ods2 = Objeto2.BuscarDatosDeUsuarioPorEmail(name)



        '    Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
        '    Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
        '    Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


        '    Dim Ods3 As New DataSet
        '    Dim Objeto3 As New Redes
        '    Ods3 = Objeto3.RedesSociales_BuscarDatosDeRedes(name, ComboRedes.SelectedItem.Text)
        '    If Ods3.Tables(0).Rows.Count > 0 Then
        '        TxtLinkRedsocial.Text = Ods3.Tables(0).Rows(0).Item("Link").ToString

        '    End If




        'End If
    End Sub
End Class