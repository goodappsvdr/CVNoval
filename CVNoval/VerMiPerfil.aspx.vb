Imports AD

Public Class VerMiPerfil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Page.IsPostBack = False Then
            CargarDatos()
        End If

    End Sub

    Private Sub CargarDatos()
        Dim ID_Aviso As String = Request.QueryString("Token")

        Dim Token As New Guid(ID_Aviso)

        Dim oDs As New DataSet
        Dim oObjeto As New PersonalLegajos


        oDs = oObjeto.PersonalLegajo_BuscarPorUserIDReporte(Token)


        If oDs.Tables(0).Rows.Count > 0 Then

            ImgEmpleado.Src = oDs.Tables(0).Rows(0).Item("Foto").ToString
            TxtNombre.Value = oDs.Tables(0).Rows(0).Item("Nombre").ToString
            'txtFechaIngreso.Value = oDs.Tables(0).Rows(0).Item("Ingreso").ToString
            TxtNacionalidad.Value = oDs.Tables(0).Rows(0).Item("Nacionalidad").ToString
            TxtTelefono.Value = oDs.Tables(0).Rows(0).Item("Movil").ToString
            TxtEmail.Value = oDs.Tables(0).Rows(0).Item("Email").ToString
            TxtDireccion.Value = oDs.Tables(0).Rows(0).Item("Direccion").ToString
            TxtLocalidad.Value = oDs.Tables(0).Rows(0).Item("Localidad").ToString
            TxtEstadoCivil.Text = oDs.Tables(0).Rows(0).Item("EstadoCivil").ToString

            TxtEstudios.Text = oDs.Tables(0).Rows(0).Item("Estudios").ToString
            TxtTitulo.Value = oDs.Tables(0).Rows(0).Item("Titulo").ToString
            ArchivoAdjunto.InnerHtml = oDs.Tables(0).Rows(0).Item("ArchivoCV").ToString
            hrefArchivoAdj.HRef = oDs.Tables(0).Rows(0).Item("ArchivoCV").ToString
            '--------------------------------------------------------------------
            Dim FechaActual As String = Date.Now.Year
            Dim FechaIngreso As String = oDs.Tables(0).Rows(0).Item("Ingreso")

            Dim AñoIngreso As String = FechaIngreso.Substring(0, 4)

            Dim Antig As String
            Antig = FechaActual - AñoIngreso

            'TxtAntig.Value = Antig & " AÑOS DE ANTIGÜEDAD"

            Dim Nacimiento As String = oDs.Tables(0).Rows(0).Item("Nacimiento").ToString
            'obtengo los ultimos 2 difgitos de la cadena
            Dim Dia As String = Strings.Right(Nacimiento, 2)

            Dim Mes As String = Strings.Right(Nacimiento, 5) 'aca obtengo 12/23


            'obtengo los primeros 4 digitos
            'Dim Edad As String = Nacimiento.Substring(0, 4)
            Dim MesFinal As String = Mes.Substring(0, 2)
            'este me trae la el dia de cumpleaños ej 23/12
            TxtEdad.Text = Dia & "/" & MesFinal



            'trae fecha de ingreso ej 17/05
            Dim Ingreso As String = oDs.Tables(0).Rows(0).Item("Ingreso").ToString
            Dim DiaIng As String = Strings.Right(Ingreso, 2)
            Dim MesIng As String = Strings.Right(Ingreso, 5)
            Dim AñoIng As String = Strings.Right(Ingreso, 10)
            Dim MesFinalIng As String = MesIng.Substring(0, 2)
            Dim AñoFinalIng As String = AñoIng.Substring(0, 4)
            txtFechaIngreso.Value = DiaIng & "/" & MesFinalIng & "/" & AñoFinalIng

            '------------------------------------------------------------------
            Dim FechaNacimientoBase As String = oDs.Tables(0).Rows(0).Item("Nacimiento").ToString
            Dim AñoNac As String = FechaNacimientoBase.Substring(0, 4)

            Dim AñoActual As String = Date.Now.Year

            'aca debo validar el dia actual y el la fecha de cumpleaños y si es distinto le resto 1 



            Dim EdadActual = AñoActual - AñoNac

            TxtEdadActual.Text = EdadActual

            Dim DiaActual As String = Date.Now.ToString("MM/dd")
            '07/26 asi me genera
            Dim MesActual As String = Date.Now.ToString("MM")
            Dim DayActual As String = Date.Now.ToString("dd")

            Dim MesyDiaActual As String = MesActual & "/" & DayActual






            Dim DiaActualCortadodelaBD As String = oDs.Tables(0).Rows(0).Item("Nacimiento").ToString
            'obtengo los ultimos 2 difgitos de la cadena
            Dim MesyDia As String = Strings.Right(DiaActualCortadodelaBD, 5)
            'Obtengo 02/15
            Dim DiaCortado As String = Strings.Right(MesyDia, 2)
            'obtengo 15 (el dia)
            Dim MesCortado As String = MesyDia.Substring(0, 2)
            'Obtengo 02 (el mes)

            'If MesActual = MesCortado And DayActual = DiaCortado Then
            '    TxtEdadActual.Text = TxtEdadActual.Text
            'Else
            '    TxtEdadActual.Text = TxtEdadActual.Text - 1


            'End If
            If MesyDiaActual = MesFinal & "/" & Dia Or MesyDiaActual > MesFinal & "/" & Dia Then
                TxtEdadActual.Text = TxtEdadActual.Text
            Else
                TxtEdadActual.Text = TxtEdadActual.Text - 1
            End If


            RepeaterAL.DataSource = oDs.Tables(1)
            RepeaterAL.DataBind()

            RepeaterFA.DataSource = oDs.Tables(2)
            RepeaterFA.DataBind()


            Dim ods2 As New DataSet
            Dim oobjeto2 As New Redes

            ods2 = oobjeto2.RedesSociales_BuscarPorEmail(TxtEmail.Value)

            RepeaterRedes.DataSource = ods2.Tables(0)
            RepeaterRedes.DataBind()

            Dim hoy As String = DiaActual

            'tengo que comparar mes primero, luego dia para ver si le resto o no a la edad



            '------------------------------------------------------------------
        Else


        End If


    End Sub
End Class