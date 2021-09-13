<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmLogin.aspx.vb" Inherits="CVNoval.FrmLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
    <title>CV RRHH</title>
    <link href="css/icons.css" rel="stylesheet" type="text/css" />
   <link rel="shortcut icon" href="http://www.coovilros.com/Imagenes/favicon16.ico" /><meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <%-- <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />--%>
    <!-- Compiled and minified CSS -->
    
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
   
            
    
	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    <script src="assets/js/modernizr.min.js"></script>
    <link href="css/wowCss.css" rel="stylesheet" type="text/css" />
   
    <link href="css/buttons.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
 

    
        <link href="css/blue.css" rel="stylesheet" type="text/css" />
           <!-- SweetAlert2 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
</head>
<style>
    
    html
    { background:white;
        }
               
     /* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript, 
if it's not present, don't show loader */
.no-js #loader { display: none;  }
.js #loader { display: block; position: absolute; left: 100px; top: 0; }
.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;	   background: url(https://influencermarketinghub.com/wp-content/themes/voice-child/page-templates/youtube-files/images/loading.gif) center no-repeat #fff;
		    background-size:200px 150px;
}
        
         .img-ader-frame {
        height: auto;
        border-radius: 4px;
        width: 100%;
        border: 1px solid #ccc;
        padding: 5px;
    }
    
    
          #FondoProgeso {
 width: 100%; height: 100%; min-height:100%; 
  background: white;
    
     overflow: hidden;
    position: absolute;
    z-index:9999;
     top: 0;
    right: 0;
    bottom: 0;
    left: 0;"
}

  .cropit-preview {
        background-color: #f8f8f8;
        background-size: cover;
        border: 5px solid #ccc;
        border-radius: 3px;
        margin-top: 7px;
        width: 250px;
        height: 250px;
      }

      .cropit-preview-image-container {
        cursor: move;
      }

      .cropit-preview-background {
        opacity: .2;
        cursor: auto;
      }

      .image-size-label {
        margin-top: 10px;
      }

      input, .export {
        /* Use relative position to prevent from being covered by image background */
        position: relative;
        z-index: 10;
        display: block;
      }

      button {
        margin-top: 10px;
      }




      .DivSubir
{background-image:url('Imagenes/cargar1.png'); background-size: contain; height:30px;width:102px;cursor:pointer;decoration:none;;

    }
    
    .DivSubir:hover
{background-image:url('Imagenes/cargar2.png'); background-size: contain; height:30px;width:102px;cursor:pointer;decoration:none;;

    }
    </style>
<script type="text/javascript">
    function showProgress() {
        var updateProgress = document.getElementById("FondoProgeso");
        var txtres = document.getElementById("TxtObservaciones").value;

        if (txtres == '') {
            //  block of code to be executed if the condition is true
        } else {
            //  block of code to be executed if the condition is false
            updateProgress.style.display = "block";
        }


    }
</script>
<body class="fixed-left">



    <div class="se-pre-con" id="Divloader">
    </div>
    <div id="FondoProgeso" style="display: none; top: 0;">
        <img style="margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%); height: 150px;" src="http://media.giphy.com/media/3o85xITplfSixzj4cg/giphy.gif" />
    </div>
  

    <form id="form1" runat="server">

     <div style="background:#018f7d;height:180px; width:100%;">
    




<img src="https://goodapps.com.ar/RRHH/Imagenes/Isologotipo_Coovilros_horizontal_blanco_total.png" width="250px" style="float:right; margin-top:10px;margin-right:10px" />
</div>


    <asp:HiddenField ID="hfstatus" runat="server" />

<div class="container" style="margin-top:-95px;-webkit-box-shadow: -1px 2px 5px 0px rgba (0,0,0,0.75);
-moz-box-shadow: -1px 2px 5px 0px rgba (0,0,0,0.75);
cuadro de sombra: -1px 2px 5px 0px rgba (0,0,0,0.75);" id="formulario" runat="server">
 <h3 align="center">PASO 1</h3><br />

  <h4 id="h1Titulo" runat="server" align="center">INGRESAR</h4>
 

    <div class="row">

    <div class="col-md-12" style="display:none">
     <div class="form-group">
      <asp:TextBox ID="TxtFechaRegistro" type="text" required runat="server" ></asp:TextBox>

      <label for="input" class="control-label" style="text-align:left">FECHA</label><i class="bar" id="I2"></i>
    </div></div>


      <div class="col-md-12">
     <div class="form-group">
      <asp:TextBox ID="TxtEmail" type="text" required runat="server" ></asp:TextBox>

      <label for="input" class="control-label" style="text-align:left">Email</label><i class="bar" id="barnombre"></i>
    </div></div>
   
      <div class="col-md-12">
     <div class="form-group">
      <asp:TextBox ID="TxtApellido" type="text" required runat="server" ></asp:TextBox>

      <label for="input" class="control-label" style="text-align:left">Apellido</label><i class="bar" id="bar"></i>
    </div></div>

    
      <div class="col-md-12">
     <div class="form-group">
      <asp:TextBox ID="TxtNombre" type="text" required runat="server" ></asp:TextBox>

      <label for="input" class="control-label" style="text-align:left">Nombre</label><i class="bar" id="I1"></i>
    </div></div>


    <div class="col-md-12">
     <div class="form-group">
      <asp:TextBox ID="TxtPass" type="text" required runat="server" TextMode="Password"  ></asp:TextBox>
      
      <label for="input" class="control-label" style="text-align:left">Contraseña</label><i class="bar"></i>
    </div>
    <span runat="server" id="pass" ></span>
    </div>

    <div class="col-md-12">
     <div class="form-group">
       <asp:TextBox ID="TxtConfirmarPass" type="text" required runat="server" TextMode="Password" ></asp:TextBox>
        
      <label for="input" class="control-label" style="text-align:left">Confirmar Contraseña</label><i class="bar"></i>
    </div>
   
    </div>

    <div class="col-md-12" id="mensajeuno" runat="server">
  <div class="alert alert-danger" role="alert">
  <p id="parrafomensaje" runat="server">Las contraseñas deben tener un minimo de 6 caracteres</p>
</div>
</div>


<div class="col-md-12" id="mensajedos" runat="server">
  <div class="alert alert-danger" role="alert">
  <p>ATENCIÓN LA CONTRASEÑA DEBE TENER UN MINIMO DE 6 CARACTERES</p>
</div>
</div>

     </div>
   
         <center> <div class="col-md-12">
     <div class="form-group">
    
    <button type="button" class="btn btn-success" ID="BtnEnviar" runat="server" onmouseup="Alerta();">ENVIAR</button>
    </div></div>
    
    <p>(**) Es importante que ingrese una cuenta de email existente ya que a la misma llegaran las instrucciones para completar el PASO 2
(***) Si ya sos un empleado de Coovilros y tenes un email de Coovilros, te recomendamos usarlo para registrarte</p>
    
    
    </center>
    <br /><br />


    <br /><br />

    

    

    

                                      
                                      


                           
                           
                           
                          
                                       </div>
                                       


                                       

        <div class="container" style="margin-top:-95px;-webkit-box-shadow: -1px 2px 5px 0px rgba (0,0,0,0.75);
-moz-box-shadow: -1px 2px 5px 0px rgba (0,0,0,0.75);
cuadro de sombra: -1px 2px 5px 0px rgba (0,0,0,0.75);" id="oculto" runat="server">
 <h3 align="center">PASO 1 FINALIZADO</h3><br />
 <hr />
 <br />
  <h4 id="h1" runat="server" align="center">DATOS ENVIADOS CON ÉXITO</h4>
 
 <h5 align="center">REVISÁ TU CASILLA DE EMAIL Y SIGUE AL PASO 2</h5>
    
  
    <br /><br />


    <br /><br />
     <br /><br />


    <br /><br />
     <br /><br />


    
    <br /><br />
   </div>
                                            

             
                           
                           
                           
                           <center><img src="https://goodapps.com.ar/RRHH/Imagenes/Isologotipo_Coovilros_horizontal.png" width="300"  id="imagencoop" runat="server"/>       
                                     </center>





     


    <br /><br /> <br /><br /> <br /><br />
  
  
        
             <script>
                 function Alerta() {
                     var User = document.getElementById("TxtApellido").value;
                     var lastName = document.getElementById("TxtNombre").value;
                     var Pass = document.getElementById("TxtPass").value;
                     var Confirm = document.getElementById("TxtConfirmarPass").value;

                     if (User == "" || lastName=="" || Pass == "" || Confirm == "") {
                         //alert("Campos Obligatorios");
                         //document.getElementById("ContactoSucces").style.display = "block";

                         $(document).on('click', '#BtnEnviar', function (e) {
                             swal(
				'Atención!',
				'Debes cargar los datos requeridos!',
				'error'
			)
                             window.setTimeout(function () {
                                 //location.href = "FrmLogin.aspx";
                             }, 6000);
                         });

                     } else {
                         //alert("Consulta Enviada con Éxito");
                         //document.getElementById("ContactoSucces").style.display = "block";
                         $(document).on('click', '#BtnEnviar', function (e) {
                             swal(
				'Esperá un momento',
				'Estamos procesando tu solicitud <br><br><img src="https://flevix.com/wp-content/uploads/2019/07/Ring-Preloader.gif" width="250px">',
				'success'
			)
                             window.setTimeout(function () {
                                 //location.href = "FrmLogin.aspx";
                             }, 6000);

                         });


                     }

                 }
           

           </script>   

        
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
                 document.getElementById('TxtFechaRegistro').value = ano + "-" + mes + "-" + dia;
                 
             }
               </script> 

       
      
       <%-- <button onclick="CerrarModal()" style="float: right; margin-right: 10px; margin-top: 10px;"
            id="edit-ader-eliminar" type="button" class="btn btn-default waves-effect" data-dismiss="modal">
            Cancelar</button>--%>




        

    </form>
    <style type="text/css" media="print">
.carta_no_imprimir {
display: none;
}
#barnombre
{
    width:200px;
    }
#nombreprint
{
    margin-left:-200px;
    }
#TxtNombre, #TxtNacionalidad, #TxtCuil, #TxtTelefono, #TxtPuesto,#TxtEdadActual, #TxtEstudios, #TxtFechaIngreso, #TxtAntig, #TxtEstadoCivil, #TxtObservaciones
{
    
    font-size:25px;
    }
    
    #TxtEdad
    {
       font-size:20px; 
        
        }
img #ImgEmpleado
{
    
    width:300px;
    height:300px;
    }
.material-icons
{
    display: none;
    }
.button-container
{
 display:none;   
    }
.container 
{
    width:300px !important;
display: block ;
border:1px solid black;
margin-top:-50px !important;

}
.checkbox {
display: none
}
#Fecha
{
    display:none;
}
#FechaProxVis
{
    display:none;
}
#ImgPaciente
{
    display:block;}
</style>

       <!-- content -->
          

    <style>
    @import url(https://fonts.googleapis.com/css?family=Roboto);
body,
input,
select,
textarea,
body * {
  font-family: 'Roboto', sans-serif;
  box-sizing: border-box;
  margin:0px;
}
body::after, body::before,
input::after,
input::before,
select::after,
select::before,
textarea::after,
textarea::before,
body *::after,
body *::before {
  box-sizing: border-box;
}

body {
  background-image: -webkit-linear-gradient(top, #f2f2f2, #e6e6e6);
  background-image: linear-gradient(top, #f2f2f2, #e6e6e6);
}

h1 {
  font-size: 2rem;
  text-align: center;
  margin: 0 0 2em;
}

.container {
  position: relative;
  max-width: 40rem;
  margin: 20px auto;
  background: #fff;
  width: 100%;
  padding: 3rem 5rem 0;
  border-radius: 1px;
}
.container::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  box-shadow: 0 8px 10px 1px rgba(0, 0, 0, 0.14), 0 3px 14px 2px rgba(0, 0, 0, 0.12), 0 5px 5px -3px rgba(0, 0, 0, 0.2);
  -webkit-transform: scale(0.98);
          transform: scale(0.98);
  -webkit-transition: -webkit-transform 0.28s ease-in-out;
  transition: -webkit-transform 0.28s ease-in-out;
  transition: transform 0.28s ease-in-out;
  transition: transform 0.28s ease-in-out, -webkit-transform 0.28s ease-in-out;
  z-index: -1;
}
.container:hover::before {
  -webkit-transform: scale(1);
          transform: scale(1);
}

.button-container {
  text-align: center;
}

fieldset {
  margin: 0 0 3rem;
  padding: 0;
  border: none;
}

.form-radio,
.form-group {
  position: relative;
  margin-top: 2.25rem;
  margin-bottom: 2.25rem;
}

.form-inline > .form-group,
.form-inline > .btn {
  display: inline-block;
  margin-bottom: 0;
}

.form-help {
  margin-top: 0.125rem;
  margin-left: 0.125rem;
  color: #b3b3b3;
  font-size: 0.8rem;
}
.checkbox .form-help, .form-radio .form-help, .form-group .form-help {
  position: absolute;
  width: 100%;
}
.checkbox .form-help {
  position: relative;
  margin-bottom: 1rem;
}
.form-radio .form-help {
  padding-top: 0.25rem;
  margin-top: -1rem;
}

.form-group input {
  height: 1.9rem;
}
.form-group textarea {
  resize: none;
}
.form-group select {
  width: 100%;
  font-size: 1rem;
  height: 1.6rem;
  padding: 0.125rem 0.125rem 0.0625rem;
  background: none;
  border: none;
  line-height: 1.6;
  box-shadow: none;
}
.form-group .control-label {
  position: absolute;
  top: 0.25rem;
  pointer-events: none;
  padding-left: 0.125rem;
  z-index: 1;
  color: #b3b3b3;
  font-size: 1rem;
  font-weight: normal;
  -webkit-transition: all 0.28s ease;
  transition: all 0.28s ease;
}
.form-group .bar {
  position: relative;
  border-bottom: 0.0625rem solid #999;
  display: block;
}
.form-group .bar::before {
  content: '';
  height: 0.125rem;
  width: 0;
  left: 50%;
  bottom: -0.0625rem;
  position: absolute;
  background: #337ab7;
  -webkit-transition: left 0.28s ease, width 0.28s ease;
  transition: left 0.28s ease, width 0.28s ease;
  z-index: 2;
}
.form-group input,
.form-group textarea {
  display: block;
  background: none;
  padding: 0.125rem 0.125rem 0.0625rem;
  font-size: 1rem;
  border-width: 0;
  border-color: transparent;
  line-height: 1.9;
  width: 100%;
  color: transparent;
  -webkit-transition: all 0.28s ease;
  transition: all 0.28s ease;
  box-shadow: none;
}
.form-group input[type="file"] {
  line-height: 1;
}
.form-group input[type="file"] ~ .bar {
  display: none;
}
.form-group select,
.form-group input:focus,
.form-group input:valid,
.form-group input.form-file,
.form-group input.has-value,
.form-group textarea:focus,
.form-group textarea:valid,
.form-group textarea.form-file,
.form-group textarea.has-value {
  color: #333;
}
.form-group select ~ .control-label,
.form-group input:focus ~ .control-label,
.form-group input:valid ~ .control-label,
.form-group input.form-file ~ .control-label,
.form-group input.has-value ~ .control-label,
.form-group textarea:focus ~ .control-label,
.form-group textarea:valid ~ .control-label,
.form-group textarea.form-file ~ .control-label,
.form-group textarea.has-value ~ .control-label {
  font-size: 0.8rem;
  color: gray;
  top: -1rem;
  left: 0;
}
.form-group select:focus,
.form-group input:focus,
.form-group textarea:focus {
  outline: none;
}
.form-group select:focus ~ .control-label,
.form-group input:focus ~ .control-label,
.form-group textarea:focus ~ .control-label {
  color: #337ab7;
}
.form-group select:focus ~ .bar::before,
.form-group input:focus ~ .bar::before,
.form-group textarea:focus ~ .bar::before {
  width: 100%;
  left: 0;
}

.checkbox label,
.form-radio label {
  position: relative;
  cursor: pointer;
  padding-left: 2rem;
  text-align: left;
  color: #333;
  display: block;
}
.checkbox input,
.form-radio input {
  width: auto;
  opacity: 0.00000001;
  position: absolute;
  left: 0;
}

.radio {
  margin-bottom: 1rem;
}
.radio .helper {
  position: absolute;
  top: -0.25rem;
  left: -0.25rem;
  cursor: pointer;
  display: block;
  font-size: 1rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  color: #999;
}
.radio .helper::before, .radio .helper::after {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  margin: 0.25rem;
  width: 1rem;
  height: 1rem;
  -webkit-transition: -webkit-transform 0.28s ease;
  transition: -webkit-transform 0.28s ease;
  transition: transform 0.28s ease;
  transition: transform 0.28s ease, -webkit-transform 0.28s ease;
  border-radius: 50%;
  border: 0.125rem solid currentColor;
}
.radio .helper::after {
  -webkit-transform: scale(0);
          transform: scale(0);
  background-color: #337ab7;
  border-color: #337ab7;
}
.radio label:hover .helper {
  color: #337ab7;
}
.radio input:checked ~ .helper::after {
  -webkit-transform: scale(0.5);
          transform: scale(0.5);
}
.radio input:checked ~ .helper::before {
  color: #337ab7;
}

.checkbox {
  margin-top: 3rem;
  margin-bottom: 1rem;
}
.checkbox .helper {
  color: #999;
  position: absolute;
  top: 0;
  left: 0;
  width: 1rem;
  height: 1rem;
  z-index: 0;
  border: 0.125rem solid currentColor;
  border-radius: 0.0625rem;
  -webkit-transition: border-color 0.28s ease;
  transition: border-color 0.28s ease;
}
.checkbox .helper::before, .checkbox .helper::after {
  position: absolute;
  height: 0;
  width: 0.2rem;
  background-color: #337ab7;
  display: block;
  -webkit-transform-origin: left top;
          transform-origin: left top;
  border-radius: 0.25rem;
  content: '';
  -webkit-transition: opacity 0.28s ease, height 0s linear 0.28s;
  transition: opacity 0.28s ease, height 0s linear 0.28s;
  opacity: 0;
}
.checkbox .helper::before {
  top: 0.65rem;
  left: 0.38rem;
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
  box-shadow: 0 0 0 0.0625rem #fff;
}
.checkbox .helper::after {
  top: 0.3rem;
  left: 0;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.checkbox label:hover .helper {
  color: #337ab7;
}
.checkbox input:checked ~ .helper {
  color: #337ab7;
}
.checkbox input:checked ~ .helper::after, .checkbox input:checked ~ .helper::before {
  opacity: 1;
  -webkit-transition: height 0.28s ease;
  transition: height 0.28s ease;
}
.checkbox input:checked ~ .helper::after {
  height: 0.5rem;
}
.checkbox input:checked ~ .helper::before {
  height: 1.2rem;
  -webkit-transition-delay: 0.28s;
          transition-delay: 0.28s;
}

.radio + .radio,
.checkbox + .checkbox {
  margin-top: 1rem;
}

.has-error .legend.legend, .has-error.form-group .control-label.control-label {
  color: #d9534f;
}
.has-error.form-group .form-help,
.has-error.form-group .helper, .has-error.checkbox .form-help,
.has-error.checkbox .helper, .has-error.radio .form-help,
.has-error.radio .helper, .has-error.form-radio .form-help,
.has-error.form-radio .helper {
  color: #d9534f;
}
.has-error .bar::before {
  background: #d9534f;
  left: 0;
  width: 100%;
}

.button {
  position: relative;
  background: currentColor;
  border: 1px solid currentColor;
  font-size: 1.1rem;
  color: #018f7d;
  margin: 3rem 0;
  padding: 0.75rem 3rem;
  cursor: pointer;
  -webkit-transition: background-color 0.28s ease, color 0.28s ease, box-shadow 0.28s ease;
  transition: background-color 0.28s ease, color 0.28s ease, box-shadow 0.28s ease;
  overflow: hidden;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}
.button span {
  color: #fff;
  position: relative;
  z-index: 1;
}
.button::before {
  content: '';
  position: absolute;
  background: #071017;
  border: 50vh solid #1d4567;
  width: 30vh;
  height: 30vh;
  border-radius: 50%;
  display: block;
  top: 50%;
  left: 50%;
  z-index: 0;
  opacity: 1;
  -webkit-transform: translate(-50%, -50%) scale(0);
          transform: translate(-50%, -50%) scale(0);
}
.button:hover {
  color: #337ab7;
  box-shadow: 0 6px 10px 0 rgba(0, 0, 0, 0.14), 0 1px 18px 0 rgba(0, 0, 0, 0.12), 0 3px 5px -1px rgba(0, 0, 0, 0.2);
}
.button:active::before, .button:focus::before {
  -webkit-transition: opacity 0.28s ease 0.364s, -webkit-transform 1.12s ease;
  transition: opacity 0.28s ease 0.364s, -webkit-transform 1.12s ease;
  transition: transform 1.12s ease, opacity 0.28s ease 0.364s;
  transition: transform 1.12s ease, opacity 0.28s ease 0.364s, -webkit-transform 1.12s ease;
  -webkit-transform: translate(-50%, -50%) scale(1);
          transform: translate(-50%, -50%) scale(1);
  opacity: 0;
}
.button:focus {
  outline: none;
}

    
    
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 


    <script>
        function CerrarModal() {

            var urlParams = new URLSearchParams(window.location.search);
            parent.$('#ModalCrearUsuario').modal('hide');
        }
    </script>
    

    <script type="text/javascript">
        $(document).ready(function () {
            setTimeout(function () {

                var hf1 = document.getElementById("hfstatus").value;

                if (hf1 == 1) {
                    var urlParams = new URLSearchParams(window.location.search);
                    parent.$('#ModalCrearUsuario').modal('hide');
                    parent.ShowNotiUserCreate(urlParams.get('Nombre'));
                }
                else if (hf1 == 2) {

                    ShowImagen();
                }
            }, 0000);
        });
    </script>

      <script>
          function ShowImagen() {

              swal("LAS CONSTRASEÑAS NO COINCIDEN", "revisa por favor!", "error");
          }
    </script>

     <script type="text/javascript">

         $(window).on("load", function () {
             console.log("load");
             $("div.se-pre-con").fadeOut();
         });
    </script>
</body>
</html>
