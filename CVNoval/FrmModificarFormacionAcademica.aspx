<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmModificarFormacionAcademica.aspx.vb" Inherits="CVNoval.FrmModificarFormacionAcademica" %>

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

   
 <h3 align="center">MODIFICAR FORMACION ACADEMICA</h3>
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



   <div class="col-md-4">
    <label>Especialidad</label>
    <select id="ComboEspecilidad" name="select"  runat="server" class="form-control">
<option  id="Option1" value="ELECTROMECANICA"  class="form-control" >ELECTROMECANICA</option>
<option  id="Option2" value="ADMINISTRACION Y GESTION"  class="form-control" >ADMINISTRACION Y GESTION</option>
<option  id="Option3" value="ELECTRONICA"  class="form-control" >ELECTRONICA</option>
<option  id="Option4" value="INFORMATICA"  class="form-control" >INFORMATICA</option>
<option  id="Option5" value="PROGRAMADOR"  class="form-control" >PROGRAMADOR</option>
<option  id="Option6" value="MAESTRO MAYOR DE OBRAS"  class="form-control" >MAESTRO MAYOR DE OBRAS</option>
<option  id="Option7" value="AUTOMOTORES"  class="form-control" >AUTOMOTORES</option>
<option  id="Option23" value="DIBUJO TECNICO"  class="form-control" >DIBUJO TECNICO</option>
<option  id="Option24" value="MECANICA INDUSTRIAL"  class="form-control" >MECANICA INDUSTRIAL</option>
<option  id="Option25" value="TELECOMUNICACIONES"  class="form-control" >TELECOMUNICACIONES</option>
<option  id="Option26" value="HOTELERIA Y TURISMO"  class="form-control" >HOTELERIA Y TURISMO</option>
<option  id="Option27" value="CARPINTERIA"  class="form-control" >CARPINTERIA</option>
 <option id="Option28" value="SEGURIDAD INDUSTRIAL"  class="form-control">SEGURIDAD INDUSTRIAL</option>

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


   <div class="col col-md-12">
                                                  
<span style="color:#203f56; font-size:18px; ">Adjuntar Archivo del Título o Analítico (Imagen o PDF)</span>
  <br />
 <div style=" padding-top:20px; padding-bottom:20px; margin:10px; border: 1px solid #E3E3E3; border-radius: 4px;">
 <center>
 
 
                                                  
                                           
                                        
<script type="text/javascript">
    function readURL3(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#Recibos')
                    .attr('src', e.target.result)
                    .width(200)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
  </script>

  <script type="text/javascript">

      function validarExt2() {
          var archivoInput = document.getElementById('SubirRecibo');
          var archivoRuta = archivoInput.value;
          var extPermitidas = /(.PDF|.pdf|.jpg|.png|.jpeg)$/i;
          if (!extPermitidas.exec(archivoRuta)) {
              alert('Asegurese de haber seleccionado un archivo permitido');
              archivoInput.value = '';
              return false;
          }

          else {
              //PRevio del PDF
              if (archivoInput.files && archivoInput.files[0]) {
                  var visor = new FileReader();
                  visor.onload = function (e) {
                      document.getElementById('visorArchivo').innerHTML =
                          '<embed src="' + e.target.result + '" width="400" height="440" />';
                  };
                  visor.readAsDataURL(archivoInput.files[0]);
              }
          }
      }
</script>		
                                    

<div alt="Cargando Imagen..." style="background-image:url('https://cuota-facil.com.ar/Imagenes/subir.png');background-size: cover;height:50px;width:50px;cursor:pointer;decoration:none;" required="" name="imagen" id="Div1" type="file" accept="image/*">
 <center> <asp:FileUpload style="background-image:url('https://cuota-facil.com.ar/Imagenes/ErrorTickets.png');background-size: cover; opacity: 0; height:80px;width:80px;cursor:pointer;margin-top:-5px;decoration:none;"  runat="server" id="SubirRecibo"  accept="application/pdf,image/*"  onchange="return validarExt2();" runat="server"></asp:FileUpload></center></div>

 <div id="visorArchivo">
				<!--Aqui se desplegará el fichero-->
</div>

<%--<img src="" id="Recibos" runat="server"  style="margin-top:10px; width:200px;  height:200px;border: 8px solid #fff;
    box-shadow: 0px 0px 30px rgba(0, 0, 0, 0.2); object-fit:cover;" />--%>
    </center>
             </div>     

                  </div>


<div class="col-md-12">
     <div class="form-group" >
      
       
        <br />
        <label for="input" class="control-label" style="text-align:left"><br />Archivo Adjunto Actual: </label> <br /> <a href="" id="hrefArchivoAdj" runat="server"><span id="ArchivoAdjunto" runat="server"></span></a><br /><i class="bar"></i> <br />
                                                    
    </div></div>


</div>
  
  <br /><br />

  <center><input type="button" id="BtnFormacionAca" runat="server" value="MODIFICAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="Alert();"/>
   <a href="FrmMiPerfil.aspx"><input type="button" id="Button1" runat="server" value="CANCELAR" style="background:#CCC; color:#000;cursor:pointer;  border:1px solid black; width:300px;height:40px" /></a></center><br />

</div>

<script>
    function Alert() {


        $(document).on('click', '#BtnFormacionAca', function (e) {
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
