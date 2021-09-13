<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmEliminarFormacionAcademica.aspx.vb" Inherits="CVNoval.FrmEliminarFormacionAcademica" %>

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
  <div class="col-md-12" id="DatosForma" style="display:block">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center" style="color:red">ATENCION ESTAS POR ELIMINAR ESTOS DATOS DE FORMACION ACADEMICA</h3>
 <div class="row">
 <div class="col-md-4">
   <label>Desde (Aprox.)</label>
  <asp:TextBox ID="TxtDesdeFA" type="date"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

   <div class="col-md-4">
   <label>Hasta (Aprox.)</label>
   <asp:TextBox ID="TxtHastaFA" type="date"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

    <div class="col-md-4">
    <label>Nivel Académico</label>
    <select id="ComboFA" name="select"  runat="server" class="form-control">
<option  id="Option22" value="SECUNDARIO COMPLETO"  class="form-control" >SECUNDARIO COMPLETO</option>
<option  id="Option14" value="SECUNDARIO EN CURSO"  class="form-control" >SECUNDARIO EN CURSO</option>
<option  id="Option15" value="SECUNDARIO INCOMPLETO"  class="form-control" >SECUNDARIO INCOMPLETO</option>
<option  id="Option16" value="TERCIARIO COMPLETO"  class="form-control" >TERCIARIO COMPLETO</option>
<option  id="Option17" value="TERCIARIO EN CURSO"  class="form-control" >TERCIARIO EN CURSO</option>
<option  id="Option18" value="TERCIARIO INCOMPLETO"  class="form-control" >TERCIARIO INCOMPLETO</option>
<option  id="Option19" value="UNIVERSITARIO COMPLETO"  class="form-control" >UNIVERSITARIO COMPLETO</option>
<option  id="Option20" value="UNIVERSITARIO EN CURSO"  class="form-control" >UNIVERSITARIO EN CURSO</option>
<option  id="Option21" value="UNIVERSITARIO INCOMPLETO"  class="form-control" >UNIVERSITARIO INCOMPLETO</option>
</select>

   </div>

   
     <div class="col-md-6">
   <label>Institución</label>
  <asp:TextBox ID="TxtInstitucion" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>



   <div class="col-md-6">
   <label>Nombre del Título</label>
   <asp:TextBox ID="TxtTitulo" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" placeholder="Nombre de Título"></asp:TextBox>
   </div>
</div>
  
  <br /><br />

  <center>
      <input type="button" id="BtnFormacionAca" runat="server" value="ELIMINAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="Alert();"/>
      <a href="FrmMiPerfil.aspx"><input type="button" id="Button1" runat="server" value="CANCELAR" style="background:#CCC; color:#000;cursor:pointer;  border:1px solid black; width:300px;height:40px" /></a></center><br />

</div>

<script>
    function Alert() {


        $(document).on('click', '#BtnFormacionAca', function (e) {
            swal(
                'Felicitaciones!',
                'Tus datos se Eliminaron con Éxito!',
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
