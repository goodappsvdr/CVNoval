<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmModificarCursos.aspx.vb" Inherits="CVNoval.FrmModificarCursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   

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
        <br /><br />
        <div class="container">

             <div class="col-md-12" id="DatosCursos" style="display:block">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center">MODIFICAR CURSOS</h3>
 <div class="row">
 <div class="col-md-4">
   <label>Desde (Aprox.)</label>
  <asp:TextBox ID="TxtFechaDesdeCurso" type="date"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

   <div class="col-md-4">
   <label>Hasta (Aprox.)</label>
   <asp:TextBox ID="TxtFechaHastaCurso" type="date"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

      <div class="col-md-6">
   <label>Nombre del Curso</label>
  <asp:TextBox ID="TxtNombredelCurso" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

    <div class="col-md-4">
    <label>Area</label>
    <select id="ComboCursos" name="select"  runat="server" class="form-control">
<option  id="a" value="ADMINISTRACIÓN"  class="form-control" >ADMINISTRACIÓN</option>
  <option id="b" value="COMERCIALIZACIÓN"  class="form-control">COMERCIALIZACIÓN</option>
  <option id="c" value="ELECTROMECANICO"  class="form-control">ELECTROMECANICO</option>
  <option  id="d" value="ELECTRONICA"  class="form-control" >ELECTRONICA</option>
  <option id="e" value="INFORMATICA"  class="form-control">INFORMATICA</option>
  <option id="f" value="INGENIERIA Y DISEÑO"  class="form-control">INGENIERIA Y DISEÑO</option>
  <option  id="g" value="LOGISTICA"  class="form-control" >LOGISTICA</option>
  <option id="h" value="MANTENIMIENTO INDUSTRIAL"  class="form-control">MANTENIMIENTO INDUSTRIAL</option>
  <option id="i" value="MANUFACTURA"  class="form-control">MANUFACTURA</option>
  <option id="j" value="MARKETING"  class="form-control">MARKETING</option>
  <option id="k" value="ATENCION AL CLIENTE"  class="form-control">ATENCION AL CLIENTE</option>
  <option id="l" value="RECURSOS HUMANOS"  class="form-control">RECURSOS HUMANOS</option>
  <option id="m" value="SEGURIDAD INDUSTRIAL"  class="form-control">SEGURIDAD INDUSTRIAL</option>
  <option id="n" value="OTRO"  class="form-control">OTRO</option>
</select>

   </div>

   <div class="col-md-2">
   <label>Horas</label>
   <asp:TextBox ID="TxtHoras" type="text" runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" placeholder="Horas"></asp:TextBox>
   </div>

 <div class="col-md-6">
   <label>Institución</label>
   <asp:TextBox ID="TxtInstitucionCursos" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" placeholder="Institución"></asp:TextBox>
   </div>

     <div class="col-md-12">
   <label>Comentarios</label>
   <asp:TextBox ID="TxtComentarios" type="text" TextMode="MultiLine"  runat="server"  ForeColor="Black"
         class="form-control"  Height="80px" Width="100%" placeholder="Comentarios"></asp:TextBox>
   </div>


</div>
  
  <br /><br />

  <center><input type="button" id="BtnAgregarCurso" runat="server" value="MODIFICAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="AlertCursos();"/>
   <a href="FrmMiPerfil.aspx"><input type="button" id="Button1" runat="server" value="CANCELAR" style="background:#CCC; color:#000;cursor:pointer;  border:1px solid black; width:300px;height:40px" /></a></center><br />

</div>

<script>
    function AlertCursos() {

        $(document).on('click', '#BtnAgregarCurso', function (e) {
            swal(
                'Felicitaciones!',
                'Tus datos se Modificaron con Éxito!',
                'success'
            )
            window.setTimeout(function () {
                //location.href = "FrmLogin.aspx";
            }, 6000);
        });
        



    }




           </script>  

   </div>
  


                                   
             </div>                  


        </div>







    </form>
</body>
</html>
