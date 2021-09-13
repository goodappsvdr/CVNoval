<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmEliminarDatoReferenciaLaboral.aspx.vb" Inherits="CVNoval.FrmEliminarDatoReferenciaLaboral" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
     <link rel="shortcut icon" href="http://www.coovilros.com/Imagenes/favicon16.ico" />
    <title runat="server" id="TituloPaginaWeb">CV Coovilros</title>
    <!-- Bootstrap -->
 
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
    <link href="https://fonts.googleapis.com/css?family=Staatliches" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">
   

 
    
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>


  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
 <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
 <link rel="stylesheet" href="https://crear.net.ar/CLIENTES/NEW_VISION/NewVisionWeb/alertasweeft.css">



</head>
<body style="background:#ccc">
    <form id="form1" runat="server">
    <div>
    


    <br /><br />


     <div class="container">
<div class="col-md-12" id="DatosRefLab" style="display:block">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center" style="color:Red">ATENCION ESTAS POR ELIMINAR ESTOS DATOS</h3>
 

 
     
  <div class="row">
 


     <div class="col-md-3">
   <label>Desde</label>
  <asp:TextBox ID="TxtFechaDesde" type="date"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" style="margin-top:-10px " ></asp:TextBox>
   </div>
    

    <div class="col-md-2">
   <label>Aún Activo en la Empresa</label>
   <input type="checkbox" class="form-control" id="ChkActivo" runat="server"/>
   </div>

    <div class="col-md-3">
   <label>Hasta</label>
    <asp:TextBox ID="TxtFechaHasta" type="date"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" style="margin-top:-10px " ></asp:TextBox>
   </div>


    <div class="col-md-4">
   <label>Empresa</label>
  <asp:TextBox ID="TxtEmpresa" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" style="margin-top:-10px " ></asp:TextBox>
   </div>

   <div class="col-md-4">
   <label>Puesto</label>
   <input type="text" class="form-control" id="TxtPuesto" runat="server" />
   </div>

    <div class="col-md-4">
    <label>Área</label>
       <select id="Combo" name="select"  runat="server" class="form-control">
 
  <option  id="Autos" value="ADMINISTRACIÓN"  class="form-control" >ADMINISTRACIÓN</option>
  <option id="Motos" value="COMERCIALIZACIÓN"  class="form-control">COMERCIALIZACIÓN</option>
  <option id="Option1" value="ELECTROMECANICO"  class="form-control">ELECTROMECANICO</option>
  <option  id="Option2" value="ELECTRONICA"  class="form-control" >ELECTRONICA</option>
  <option id="Option3" value="INFORMATICA"  class="form-control">INFORMATICA</option>
  <option id="Option4" value="INGENIERIA Y DISEÑO"  class="form-control">INGENIERIA Y DISEÑO</option>
  <option  id="Option5" value="LOGISTICA"  class="form-control" >LOGISTICA</option>
  <option id="Option6" value="MANTENIMIENTO INDUSTRIAL"  class="form-control">MANTENIMIENTO INDUSTRIAL</option>
  <option id="Option7" value="MANUFACTURA"  class="form-control">MANUFACTURA</option>
  <option id="Option8" value="MARKETING"  class="form-control">MARKETING</option>
  <option id="Option9" value="ATENCION AL CLIENTE"  class="form-control">ATENCION AL CLIENTE</option>
  <option id="Option10" value="RECURSOS HUMANOS"  class="form-control">RECURSOS HUMANOS</option>
  <option id="Option11" value="SEGURIDAD INDUSTRIAL"  class="form-control">SEGURIDAD INDUSTRIAL</option>
  <option id="Option12" value="OTRO"  class="form-control">OTRO</option>
</select>

   </div>

   <div class="col-md-6">
   <label>Descripción de las tareas</label>
   <textarea id="TxtDescrip" runat="server" class="form-control"></textarea>
   </div>

   <div class="col-md-6">
   <label>Datos Referentes (Nombre Persona / Tel Contacto)</label>
   <textarea id="TxtDatosRef" runat="server" class="form-control"></textarea>
   </div>

   <div class="col-md-12">
   <label>Si conoces a una persona que ya está trabajando en Alladio, agregalo como referencia. Podés cargar nombres, teléfonos, email y direcciones</label>
   <textarea id="TxtRefCoov" runat="server" class="form-control"></textarea>
   </div>


   <script>
       window.onload = function () {
           var fecha = new Date(); //Fecha actual
           var mes = fecha.getMonth() + 1; //obteniendo mes
           var dia = fecha.getDate(); //obteniendo dia
           var ano = fecha.getFullYear(); //obteniendo año
           if (dia < 10)
               dia = '0' + dia; //agrega cero si el menor de 10
           if (mes < 10)
               mes = '0' + mes //agrega cero si el menor de 10
           //document.getElementById('TxtFechaDesde').value = ano + "-" + mes + "-" + dia;
           //document.getElementById('TxtFechaHasta').value = ano + "-" + mes + "-" + dia;
       }
     </script>   
   <!-- 'Apellido, Nombre, Calle, Nro, Piso, Depto, Telefono, Movil, 
   ID_DocumentoTipo, NroDocumento, Foto, ID_NivelFormacion, 
   ID_EstadoCivil, Nacimiento, ID_Nacionalidad, Sexo, 
   CUIL, Categoria, Ingreso, Egreso, MesesAntiguedadReconocida, 
   ID_Convenio, ID_Art, NroAfiliado, ID_Banco, NroCajaAhorro, 
   ID_Seccion, ID_Puesto, ID_Jefe, Jubilado, Tarjeta, MensajeIngreso, 
   MensajeEgreso, FondoCompJub, AporteVoluntario, Observaciones, Archivo, Estado, Tipo,Email-->

    
   
    
  </div>
  
  <br /><br />

  <center><input type="button" id="BtnRefLab" runat="server" value="ELIMINAR DATOS" style="background:#047537; color:#fff; cursor:pointer;  border:1px solid black; width:300px;height:40px" onmouseup="AlertaUno();"/>
  <a href="FrmMiPerfil.aspx"><input type="button" id="Button1" runat="server" value="CANCELAR" style="background:#CCC; color:#000;cursor:pointer;  border:1px solid black; width:300px;height:40px" /></a></center><br />
</div>



   </div>


   </div>
   </div>

   <script>
       function AlertaUno() {



           $(document).on('click', '#BtnRefLab', function (e) {
               swal(
				'Felicitaciones!',
				'Tus datos se Eliminaron con Éxito!',
				'success'
			)
               window.setTimeout(function () {
                   location.href = "FrmMiPerfil.aspx";
               }, 1000);
           });


       }

      
           

           </script>  




    </div>
    </form>
</body>
</html>
