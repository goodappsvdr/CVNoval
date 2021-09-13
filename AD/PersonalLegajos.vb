Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.Practices.EnterpriseLibrary.Data
Imports System.IO

Public Class PersonalLegajos
    Dim oDatabase As Database

    Public Sub New()
        oDatabase = DatabaseFactory.CreateDatabase("Conn2")
    End Sub


    'constructor base con parametros
    Public Sub New(ByVal str As String)
    End Sub

    'BuscarTodos
    Public Function BuscarTodos() As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_BuscarTodos")

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function BuscarPorID(id_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_BuscarPorID", id_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function BuscarPuestoPorIDPersonalLegajo(ID_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PerosnalLegajos_BuscarPuestoPorID", ID_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function BuscarExperienciaPorPuesto(ID_Puesto As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Requisitos_BuscarExperienciaPorPuesto", ID_Puesto)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function



    Public Function BuscarPorID_Empleado(ID_Empleado As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_BuscarEmpleadorPorID_Empleado", ID_Empleado)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function BuscarEmpleadosJefes() As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_BuscarTipoEmpleadosJefes")

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function BuscarPorIDReporte(id_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_BuscarPorIDReporte", id_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function BuscarDatosDeUsuarioPorEmail(Email As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_BuscarDatosDeUsuarioPorEmail", Email)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function Postulantes_BuscarDatosCargadosParaProgressBar(ByVal ID_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("Postulantes_BuscarDatosCargadosParaProgressBar", ID_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function





    Public Function PersonalLegajo_BuscarPorUserIDReporte(Userid As Guid) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajo_BuscarPorUserIDReporte", Userid)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function




    Public Function BuscarDatosDeUsuarioPorEmailYPorIDAntecentes(Email As String, ID_AntecedentesLaborales As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_BuscarDatosDeUsuarioPorEmailyPorIDAntecente", Email, ID_AntecedentesLaborales)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function



    Public Function Agregar(Apellido As String, Nombre As String, Calle As String, Nro As String, Piso As String, Depto As String, Telefono As String, Movil As String, ID_DocumentoTipo As Integer, NroDocumento As String, Foto As String, ID_NivelFormacion As Integer, ID_EstadoCivil As Integer, Nacimiento As String, ID_Nacionalidad As Integer, Sexo As Integer, CUIL As String, Categoria As String, Ingreso As String, Egreso As String, MesesAntiguedadReconocida As String, ID_Convenio As Integer, ID_Art As Integer, NroAfiliado As String, ID_Banco As Integer, NroCajaAhorro As String, ID_Seccion As Integer, ID_Puesto As Integer, ID_Jefe As Integer, Jubilado As String, Tarjeta As String, MensajeIngreso As String, MensajeEgreso As String, FondoCompJub As String, AporteVoluntario As String, Observaciones As String, Archivo As String, Estado As Integer, Tipo As Integer, Email As String, ID_Localidad As Integer) As Double

        Try

            Return oDatabase.ExecuteScalar("PersonalLegajos_Agregar_DesdeCV", Apellido, Nombre, Calle, Nro, Piso, Depto, Telefono, Movil, ID_DocumentoTipo, NroDocumento, Foto, ID_NivelFormacion, ID_EstadoCivil, Nacimiento, ID_Nacionalidad, Sexo, CUIL, Categoria, Ingreso, Egreso, MesesAntiguedadReconocida, ID_Convenio, ID_Art, NroAfiliado, ID_Banco, NroCajaAhorro, ID_Seccion, ID_Puesto, ID_Jefe, Jubilado, Tarjeta, MensajeIngreso, MensajeEgreso, FondoCompJub, AporteVoluntario, Observaciones, Archivo, Estado, Tipo, Email, ID_Localidad)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function Modificar(id_personalLegajo As Integer, Apellido As String, Nombre As String, Calle As String, Nro As String, Piso As String, Depto As String, Telefono As String, Movil As String, ID_DocumentoTipo As Integer, NroDocumento As String, ID_NivelFormacion As Integer, ID_EstadoCivil As Integer, Nacimiento As String, ID_Nacionalidad As Integer, Sexo As Integer, CUIL As String, Categoria As String, Ingreso As String, Egreso As String, MesesAntiguedadReconocida As String, ID_Convenio As Integer, ID_Art As Integer, NroAfiliado As String, ID_Banco As Integer, NroCajaAhorro As String, ID_Seccion As Integer, ID_Puesto As Integer, ID_Jefe As Integer, Jubilado As String, Tarjeta As String, MensajeIngreso As String, MensajeEgreso As String, FondoCompJub As String, AporteVoluntario As String, Observaciones As String, Estado As Integer, Tipo As Integer, ID_Localidad As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_ModificarDesdeCV", id_personalLegajo, Apellido, Nombre, Calle, Nro, Piso, Depto, Telefono, Movil, ID_DocumentoTipo, NroDocumento, ID_NivelFormacion, ID_EstadoCivil, Nacimiento, ID_Nacionalidad, Sexo, CUIL, Categoria, Ingreso, Egreso, MesesAntiguedadReconocida, ID_Convenio, ID_Art, NroAfiliado, ID_Banco, NroCajaAhorro, ID_Seccion, ID_Puesto, ID_Jefe, Jubilado, Tarjeta, MensajeIngreso, MensajeEgreso, FondoCompJub, AporteVoluntario, Observaciones, Estado, Tipo, ID_Localidad)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function ModificarDatosPersonales(id_personalLegajo As Integer, Apellido As String, Nombre As String, ID_DocumentoTipo As Integer, NroDocumento As String, ID_NivelFormacion As Integer, ID_EstadoCivil As Integer, Nacimiento As String, ID_Nacionalidad As Integer, Sexo As Integer, CUIL As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_ModificarDesdeCVDatosPersonales", id_personalLegajo, Apellido, Nombre, ID_DocumentoTipo, NroDocumento, ID_NivelFormacion, ID_EstadoCivil, Nacimiento, ID_Nacionalidad, Sexo, CUIL)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function ModificarDatosDeContacto(id_personalLegajo As Integer, Calle As String, Nro As String, Piso As String, Depto As String, Telefono As String, Movil As String, ID_Localidad As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_ModificarDesdeCVDatosContacto", id_personalLegajo, Calle, Nro, Piso, Depto, Telefono, Movil, ID_Localidad)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function ModificarFoto(id_personalLegajo As Integer, Foto As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_ModificarFoto", id_personalLegajo, Foto)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function




    Public Function ModificarArchivo(id_personalLegajo As Integer, Archivo As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajos_ModificarArchivo", id_personalLegajo, Archivo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function PersonalLegajo_ValidarEmail(Email As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajo_ValidarEmail", Email)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function Agregar_AntecedentesLaborales(ID_PersonalLegajo As Integer, Desde As String, Activo As Integer, Hasta As String, Empresa As String, Puesto As String, Area As String, DescripcionArea As String, DatosReferentes As String, ReferenteCoovilros As String) As Double

        Try

            Return oDatabase.ExecuteScalar("AntecedentesLaborales_Agregar", ID_PersonalLegajo, Desde, Activo, Hasta, Empresa, Puesto, Area, DescripcionArea, DatosReferentes, ReferenteCoovilros)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function Modificar_AntecedentesLaborales(ID_AntecedentesLaborales As Integer, ID_PersonalLegajo As Integer, Desde As String, Activo As Integer, Hasta As String, Empresa As String, Puesto As String, Area As String, DescripcionArea As String, DatosReferentes As String, ReferenteCoovilros As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("AntecedentesLaborales_Modificar", ID_AntecedentesLaborales, ID_PersonalLegajo, Desde, Activo, Hasta, Empresa, Puesto, Area, DescripcionArea, DatosReferentes, ReferenteCoovilros)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function AntecedentesLaborales_EliminarPorIDyPorEmail(ID_AntecedentesLaborales As Integer, Email As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("AntecedentesLaborales_EliminarPorIDyPorEmail", ID_AntecedentesLaborales, Email)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function Agregar_GrupoFamiliar(ID_PersonalLegajo As Integer, Apellido As String, Nombre As String, TipoFamiliar As String, Fecha_Alta As String, Ocupacion As String) As Double

        Try

            Return oDatabase.ExecuteScalar("PersonalLegajo_GrupoFamiliar_AgregarDesdeCV", ID_PersonalLegajo, Apellido, Nombre, TipoFamiliar, Fecha_Alta, Ocupacion)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function Modificar_GrupoFamiliar(ID As Integer, ID_PersonalLegajo As Integer, Apellido As String, Nombre As String, TipoFamiliar As String, Fecha_Alta As String, Ocupacion As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajo_GrupoFamiliar_ModificarDesdeCV", ID, ID_PersonalLegajo, Apellido, Nombre, TipoFamiliar, Fecha_Alta, Ocupacion)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function EliminarDato_GrupoFamiliar(ID As Integer, ID_PersonalLegajo As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajo_GrupoFamiliar_EliminarDesdeCV", ID, ID_PersonalLegajo)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function


    Public Function GrupoFamiliar_BuscarPorIDPersonalLegajo(ID As Integer) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajo_GrupoFamiliar_BuscarPorIDPersonalLegajo", ID)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function
    Public Function PersonalLegajo_DardeAltaUsuarioDesdeMail(UserID As Guid, Email As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajo_DardeAltaUsuarioDesdeMail", UserID, Email)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function

    Public Function PersonalLegajo_BuscarUserIDPorEmail(Email As String) As DataSet

        Try

            Return oDatabase.ExecuteDataSet("PersonalLegajo_BuscarUserIDPorEmail", Email)

        Catch ex As System.Exception
            Throw ex
        End Try

    End Function






End Class
