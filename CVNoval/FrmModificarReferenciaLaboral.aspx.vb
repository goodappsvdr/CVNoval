﻿Imports AD
Public Class FrmModificarReferenciaLaboral
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = False Then
            BuscarPorID()

        End If


    End Sub




    Public Sub BuscarPorID()

        Dim PruebaGalleta As HttpCookie
        PruebaGalleta = Request.Cookies("datos")

        'aca valido si hay cookies

        If PruebaGalleta Is Nothing Then




            Dim userId As String = Membership.GetUser().UserName

            Dim username As String = userId


            Dim ods As New DataSet
            Dim Objeto As New PersonalLegajos
            Dim ID As Integer = Request.QueryString("ID")

            ods = Objeto.BuscarDatosDeUsuarioPorEmailYPorIDAntecentes(username, ID)




            Dim Nombre As String = ods.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            '---------------------------------------------------------------------------------------------
            '----------------DATOS REFERENTES-------------------------------------------------------------

            TxtFechaDesde.Text = ods.Tables(0).Rows(0).Item("Desde").ToString
            TxtFechaHasta.Text = ods.Tables(0).Rows(0).Item("Hasta").ToString
            ChkActivo.Checked = ods.Tables(0).Rows(0).Item("Activo").ToString
            Combo.Value = ods.Tables(0).Rows(0).Item("Area").ToString
            TxtPuesto.Value = ods.Tables(0).Rows(0).Item("Puesto").ToString
            TxtEmpresa.Text = ods.Tables(0).Rows(0).Item("Empresa").ToString
            TxtDescrip.Value = ods.Tables(0).Rows(0).Item("DescripcionArea").ToString
            TxtDatosRef.Value = ods.Tables(0).Rows(0).Item("DatosReferentes").ToString
            TxtRefCoov.Value = ods.Tables(0).Rows(0).Item("ReferenteCoovilros").ToString

        Else
            Dim ods As New DataSet
            Dim Objeto As New PersonalLegajos
            Dim Galleta As HttpCookie
            Galleta = Request.Cookies("datos")



            Dim name As String = Galleta.Values("nombre")
            Dim pass As String = Galleta.Values("pass")
            Dim IdUser As String = Galleta.Values("userid")


           
            Dim ID As Integer = Request.QueryString("ID")

            ods = Objeto.BuscarDatosDeUsuarioPorEmailYPorIDAntecentes(name, ID)




            Dim Nombre As String = ods.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString


            '---------------------------------------------------------------------------------------------
            '----------------DATOS REFERENTES-------------------------------------------------------------

            TxtFechaDesde.Text = ods.Tables(0).Rows(0).Item("Desde").ToString
            TxtFechaHasta.Text = ods.Tables(0).Rows(0).Item("Hasta").ToString
            ChkActivo.Checked = ods.Tables(0).Rows(0).Item("Activo").ToString
            Combo.Value = ods.Tables(0).Rows(0).Item("Area").ToString
            TxtPuesto.Value = ods.Tables(0).Rows(0).Item("Puesto").ToString
            TxtEmpresa.Text = ods.Tables(0).Rows(0).Item("Empresa").ToString
            TxtDescrip.Value = ods.Tables(0).Rows(0).Item("DescripcionArea").ToString
            TxtDatosRef.Value = ods.Tables(0).Rows(0).Item("DatosReferentes").ToString
            TxtRefCoov.Value = ods.Tables(0).Rows(0).Item("ReferenteCoovilros").ToString





        End If

    End Sub





    Private Sub BtnRefLab_ServerClick(sender As Object, e As System.EventArgs) Handles BtnRefLab.ServerClick

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

            Dim ods2 As New DataSet
            Dim Objeto2 As New PersonalLegajos
            Dim Activo As Integer
            If ChkActivo.Checked = True Then
                Activo = 1
            Else
                Activo = 0
            End If



            ods2 = Objeto2.Modificar_AntecedentesLaborales(ID, ID_PersonalLegajo, TxtFechaDesde.Text, Activo, TxtFechaHasta.Text, TxtEmpresa.Text, TxtPuesto.Value, Combo.Value, TxtDescrip.Value, TxtDatosRef.Value, TxtRefCoov.Value)
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


            Dim Nombre As String = ods2.Tables(0).Rows(0).Item("Nombre").ToString
            Dim Apellido As String = ods2.Tables(0).Rows(0).Item("Apellido").ToString
            Dim ID_PersonalLegajo As Integer = ods2.Tables(0).Rows(0).Item("ID_PersonalLegajo").ToString
            Dim ID As Integer = Request.QueryString("ID")

            Dim ods As New DataSet
            Dim Objeto As New PersonalLegajos
            Dim Activo As Integer
            If ChkActivo.Checked = True Then
                Activo = 1
            Else
                Activo = 0
            End If



            ods = Objeto.Modificar_AntecedentesLaborales(ID, ID_PersonalLegajo, TxtFechaDesde.Text, Activo, TxtFechaHasta.Text, TxtEmpresa.Text, TxtPuesto.Value, Combo.Value, TxtDescrip.Value, TxtDatosRef.Value, TxtRefCoov.Value)
            Response.Redirect("FrmMiPerfil.aspx")


        End If

    End Sub
End Class