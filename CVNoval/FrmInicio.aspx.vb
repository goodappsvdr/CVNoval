Imports AD

Imports System.Net.Mail

Public Class FrmInicio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Cookies("datos").Expires = Now.AddDays(-1)
        Response.Cookies.Remove("datos")


        EliminarAviso()
        VerNoticias()
    End Sub

    Public Function EliminarAviso()

        Dim Ods As New DataSet
        Dim objeto As New Avisos

        Dim FechaActual As String = Date.Now.ToString("yyyy-MM-dd")



        Ods = objeto.EliminarAvisos(FechaActual)


    End Function
    Public Function VerNoticias()



        Dim Ods As New DataSet
        Dim objeto As New Avisos

        Ods = objeto.BuscarAvisos

        If Ods.Tables(0).Rows.Count > 0 Then
            resultadoConsulyta.Visible = True
            Repeater.DataSource = Ods.Tables(0)
            Repeater.DataBind()


            'imagenResul.Src = Ods.Tables(0).Rows(0).Item("foto")
            'textResul.InnerHtml = Ods.Tables(0).Rows(0).Item("Nombre") & " " & Ods.Tables(0).Rows(0).Item("Apellido")

        Else

            resultadoConsulyta.Visible = False

        End If





    End Function
    




End Class