<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmModificarGrupoFamiliar.aspx.vb" Inherits="CVNoval.FrmModificarGrupoFamiliar" %>

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



    <br /><br />
    <div class="container">
     <div class="col-md-12" id="DatosGrupoFam" style="display:block">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center">MODIFICAR FAMILIAR</h3>
 

 
     
  <div class="row">
 


     

    


    <div class="col-md-4">
   <label>Apellido</label>
  <asp:TextBox ID="TxtApellidoGrupFam" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

   <div class="col-md-4">
   <label>Nombre</label>
   <asp:TextBox ID="TxtNombreGrupFam" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

    <div class="col-md-4">
    <label>Parentezco</label>
       <select id="ComboPrentezco" name="select"  runat="server" class="form-control">
 
  
 

</select>

   </div>

   
     <div class="col-md-3">
   <label>Fecha Nacimiento</label>
  <asp:TextBox ID="TxtFechaNacGF" type="date"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

  <%--<div class="col-md-3">
    <label>Sexo</label>
     <select id="ComboSexo" name="select"  runat="server" class="form-control">
 
  
 
</select>
   </div>
--%>
   <div class="col-md-6">
   <label>Ocupación</label>
   <asp:TextBox ID="TxtOcupacion" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" placeholder="Informatico"></asp:TextBox>
   </div>
</div>
  
  <br /><br />

  <center><input type="button" id="BtnAgregarGrupoFam" runat="server" value="MODIFICAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="AlertaUno();"/>
   <a href="FrmMiPerfil.aspx"><input type="button" id="Button1" runat="server" value="CANCELAR" style="background:#CCC; color:#000;cursor:pointer;  border:1px solid black; width:300px;height:40px" /></a></center><br />

</div>


<script>
    function AlertaUno() {

        $(document).on('click', '#BtnAgregarGrupoFam', function (e) {
            swal(
				'Felicitaciones!',
				'Tus datos se modificaron con Éxito!',
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
