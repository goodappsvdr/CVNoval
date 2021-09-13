<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmMiPerfil.aspx.vb" Inherits="CVNoval.FrmMiPerfil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="es">
<head id="Head1" runat="server">
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
<style>


.BigCheckBox input
        {
            width: 24px;
            height: 24px;
            vertical-align: middle !important;
            webkit-appearance: none;
  -moz-appearance: none;
  background: lightgray;
  appearance: none;
    border:1px solid #203f56;
    margin-top: 10px;
    padding: 10px;
    margin-bottom: 10px;
        }
        
        .BigCheckBox input[type=checkbox]:checked + label
        {
            color: #203f56 !important;
            content: "";
    width: 12px;
    height: 6px;
    border: 4px solid #0fbf12;
    float: left;
    margin-left: -1.95em;
    border-right: 0;
    border-top: 0;
    margin-top: 1em;
    transform: rotate(-55deg);
            
        }
        
      
      input[type="checkbox"]:checked {
  background: #203f56;
  
}



input[type="checkbox"]:hover {
  filter: brightness(90%);
}



input[type="checkbox"]:disabled {
  background: #e6e6e6;
  opacity: 0.6;
  
  pointer-events: none;
  
}

input[type="checkbox"]:after {
  content: '';
  position: relative;
  
  left: 40%;
  top: 16%;
  width: 25%;
  height: 50%;
  border: solid #fff;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
  display: none;
}

input[type="checkbox"]:checked:after {
  display: block;
  
}

input[type="checkbox"]:disabled:after {
  border-color: #7b7b7b;
 
}
     
</style>
<style>
body{overflow : hidden; overflow-y : scroll; 
overflow : -moz-scrollbars-vertica}

::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
  color: #ffffff;
  opacity: 1; /* Firefox */
}

:-ms-input-placeholder { /* Internet Explorer 10-11 */
  color: #ffffff;
}

::-ms-input-placeholder { /* Microsoft Edge */
  color: #ffffff;
}


.modal-dialog
{
            width: 100%;
            height: 620px;
            margin-left:0px;
            padding: 20px;
            
}
.modal-content
{           
            height: 670px;
            border-radius: 0;
}
 @media (max-width: 600px) {
        #borrarimagenes {
            display: none;
           
        }
        #imagenresp2
        {
            display:block;
            }
             #imagenresp
        {
            display:block;
            }
}
@media (min-width: 600px) {
        
        #imagenresp2
        {
            display:none;
            }
            #imagenresp
        {
            display:none;
            }
}

</style>

<body>

   <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/5e31ab8c8e78b86ed8abac7c/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
   
    <form runat="server" id="form1">
    <nav class="navbar navbar-default navbar-fixed-top" style="height:120px;background-color:#047537">
     <center><img src="https://goodapps.com.ar/RRHH/Imagenes/Isologotipo_Coovilros_horizontal_blanco_total.png" runat="server" id="imagenresp" style=" height:auto;  max-height:60px;margin-top:10px;"  alt="">
     <p id="imagenresp2" style="font-family: 'Bitter',serif;margin-top:-30px" >
                    <a href="" runat="server" id="iraperfilmovil"><i class="material-icons" style="margin-top:30px;color:#fff;cursor:pointer;font-size:40px;margin-left:35px" data-toggle="tooltip" title="Ver Mi Perfil">
                     assignment
                     </i> </a></p>
     
     </center>
		<div class="container">
			<div class="row" id="borrarimagenes">
				<div class="col-md-4">
					
						
                        <center><img src="https://www.coovilros.com/Imagenes/logo-dark.png" runat="server" id="ImagenLogo" style=" height:auto;  max-height:60px;margin-top:10px"  alt=""></center>
					
				</div>					  

				<div class="col-md-7">	 
					<p id="webcon" style="float:right;margin-left:800px;font-family: 'Bitter',serif;margin-top:-30px" >
                    <a onserverclick="CerrarSesion" runat="server"><i class="material-icons" style="margin-top:30px;color:#fff;cursor:pointer;font-size:40px;margin-left:35px" data-toggle="tooltip" title="Cerrar Sesión">
                     power_settings_new
                     </i> </a></p>
				</div>

                <div class="col-md-1">	 
					<p id="P1" style="float:right;margin-left:800px;font-family: 'Bitter',serif;margin-top:-30px" >
                    
                    <a href="" runat="server" id="irAPerfil">
                    
                    <i class="material-icons" style="margin-top:30px;color:#fff;cursor:pointer;font-size:40px;margin-left:35px" data-toggle="tooltip" title="Ver Mi Perfil">
                     assignment
                     </i> </a></p>
                     
				</div>
                



			</div>
		</div>		
       
        <br />
	</nav>

    
  




  <script>
      $(document).ready(function () {
          $('[data-toggle="tooltip"]').tooltip();
      });
</script>


   
   

  



     <br /><br />






<style>
/*inscripcion*/
@media only screen and (min-width: 525px) {
  #inscripcion {
    display:none;
  }
}
</style>
    
<style>
/*inscripcion*/
@media only screen and (max-width: 825px) {
  #webcon {
    display:none;
  }
}

@media only screen and (max-width: 600px) {
 #divsup 
 {
  background-size: cover;
   
  }
}

</style>

<script>
    $(function () {
        $('a[href*="#"]:not([href="#"])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html, body').animate({
                        scrollTop: target.offset().top
                    }, 3000);
                    return false;
                }
            }
        });
    });
  </script> 



  <script>
      function AlertaUno() {

$(document).on('click', '#BtnDatosDeContacto', function (e) {
                  swal(
				'Felicitaciones!',
				'Tus datos se modificaron con Éxito!',
				'success'
			)
                  window.setTimeout(function () {
                      //location.href = "FrmLogin.aspx";
                  }, 6000);
              });

              $(document).on('click', '#BtnDatosPersonles', function (e) {
                  swal(
				'Felicitaciones!',
				'Tus datos se modificaron con Éxito!',
				'success'
			)
                  window.setTimeout(function () {
                      //location.href = "FrmLogin.aspx";
                  }, 6000);
              });

              $(document).on('click', '#BtnRefLab', function (e) {
                  swal(
				'Felicitaciones!',
				'Tus datos se modificaron con Éxito!',
				'success'
			)
                  window.setTimeout(function () {
                      location.href = "FrmMiPerfil.aspx";
                  }, 2000);
              });


          }

      
           

           </script>   
  
   
 <div style="width:100%;height:auto; background:#fff">  



 <br />





<div class="container" id="up">
 <center><h4 id="UserPerfil" runat="server"></h4>
 <p class="card-text" style="padding:10px;margin:30px;font-size:20px">
    
   Recuerda completar los datos Obligatorios, para que podamos encontrarte más rapido. 
   <br />
   Y mantene actualizado tu perfil.


    </p>
 
 </center>


<div  class="row">


     
   <div class="row" id="bienvenida" runat="server">
   
   <div class="col-md-12" >
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

    <center><img src="https://crear.net.ar/CLIENTES/EGFOTOGRAFIA/Egfotografia/social4_07-01%20(1).jpg" class="card-img-top" alt="..." style="width:100%;max-width:200px;height:auto"></center>
 
  <%--<center><h1>¿Qué es CONSTRUYA YA?</h1></center>--%>

 
    <p class="card-text" style="padding:10px;margin:30px;font-size:20px">
    
    Gracias por registrarte en <b>CV Coovilros</b> Para mejorar tus chances de participar en las búsquedas laborales de la empresa, es necesario que completes tu perfil. Mientras más sepamos de vos, más posibilidades tendrás de ser seleccionado.



    </p>
   
    
  </div>
  <%-- <center><img src="https://crear.net.ar/CLIENTES/EGFOTOGRAFIA/Egfotografia/social4_07-01%20(1).jpg" class="card-img-top" alt="..." style="width:100%;max-width:600px;height:auto"></center>--%>

</div>



   </div>
   
   
   </div>
   
<!------1 ------>
<br />















<div class="col-md-4">
 <a href="#primero" onclick="MostrarSig();">
 <div class="card" style="width: 100%;margin:10px auto" >
  <img class="card-img-top" src=" https://crear.net.ar/CLIENTES/MAGICFLOORS/MagicFloors/illustration-quality-check-icon-blue-background_53876-8393.jpg" alt="Card image cap">
 
  <div class="card-body">
    <center><h5 class="card-title">DATOS PERSONALES</h5>
     <p style="color:Red"><b>* CAMPO OBLIGATORIO</b></p>
   <i class="material-icons" style="margin-top:30px;color:#000;cursor:pointer;font-size:40px;" data-toggle="tooltip" title="Modificar mis datos" >
create
</i>
</center>


</div>
 
  </a> 
</div>

</div>

<div class="col-md-4">
<a href="#DatosContactoHide" onclick="MostrarDatosContacto();"><div class="card" style="width: 100%;margin:10px auto">
  <img class="card-img-top" src="https://crear.net.ar/CLIENTES/MAGICFLOORS/MagicFloors/auth.png" alt="Card image cap">
  <div class="card-body">
    <center><h5 class="card-title">DATOS DE CONTACTO</h5>
     <p style="color:Red"><b>* CAMPO OBLIGATORIO</b></p>
     <i class="material-icons" style="margin-top:30px;color:#000;cursor:pointer;font-size:40px;" data-toggle="tooltip" title="Modificar mis datos">
create
</i></center>
  </div>
</div></a>
</div>

<div class="col-md-4">
<a href="#DatosRefLab" onclick="MostrarRefLab();"><div class="card" style="width: 100%;margin:10px auto">
  <img class="card-img-top" src="https://crear.net.ar/CLIENTES/MAGICFLOORS/MagicFloors/storage.png" alt="Card image cap">
  <div class="card-body">
    <center><h5 class="card-title">ANTECEDENTES LABORALES</h5>
     <p style="color:Red"><b>* CAMPO OBLIGATORIO</b></p>
     <i class="material-icons" style="margin-top:30px;color:#000;cursor:pointer;font-size:40px;" data-toggle="tooltip" title="Modificar mis datos">
create
</i></center>
  </div>
</div></a>
</div>



<div class="col-md-4">
<a href="#DatosForma" onclick="MostrarFromAca();"><div class="card" style="width: 100%;margin:10px auto">
  <img class="card-img-top" src="https://crear.net.ar/CLIENTES/SIEMPREBONITA/Siemprebonita/analytics.png" alt="Card image cap">
  <div class="card-body">
    <center><h5 class="card-title">FORMACION ACADEMICA</h5>
    <p style="color:Red"><b>* CAMPO OBLIGATORIO</b></p>
     <i class="material-icons" style="margin-top:30px;color:#000;cursor:pointer;font-size:40px;" data-toggle="tooltip" title="Modificar mis datos">
create
</i></center>
  </div>
</div></a>
</div>



<div class="col-md-4">
<a href="#DatosGrupoFam" onclick="MostrarGrupoFam();"><div class="card" style="width: 100%;margin:10px auto">
  <img class="card-img-top" src="https://crear.net.ar/CLIENTES/MAGICFLOORS/MagicFloors/unnamed%20(2).png" alt="Card image cap">
  <div class="card-body">
    <center><h5 class="card-title">GRUPO FAMILIAR</h5><br />
     <i class="material-icons" style="margin-top:30px;color:#000;cursor:pointer;font-size:40px;" data-toggle="tooltip" title="Modificar mis datos">
create
</i></center>
  </div>
</div></a>
</div>





<div class="col-md-4">
<a href="#DatosCursos" onclick="MostrarCursos();"><div class="card" style="width: 100%;margin:10px auto">
  <img class="card-img-top" src="https://crear.net.ar/CLIENTES/MAGICFLOORS/MagicFloors/graf%20(2).png" alt="Card image cap">
  <div class="card-body">
    <center><h5 class="card-title">CURSOS Y SEMINARIOS</h5><br />
     <i class="material-icons" style="margin-top:30px;color:#000;cursor:pointer;font-size:40px;" data-toggle="tooltip" title="Modificar mis datos">
create
</i></center>
  </div>
</div></a>
</div>








<div class="col-md-4">
<a href="#DatosAntSal" onclick="MostrarAntSal();"><div class="card" style="width: 100%;margin:10px auto">
  <img class="card-img-top" src="https://crear.net.ar/CLIENTES/MAGICFLOORS/MagicFloors/experiments.png" alt="Card image cap">
  <div class="card-body">
    <center><h5 class="card-title">ANTECEDENTES DE SALUD</h5><br />
     <i class="material-icons" style="margin-top:30px;color:#000;cursor:pointer;font-size:40px;" data-toggle="tooltip" title="Modificar mis datos">
create
</i></center>
  </div>
</div></a>
</div>








<div class="col-md-4" style="display:none">
<a href="#DatosOtrosCon" onclick="MostrarOtrosCon();"><div class="card" style="width: 100%;margin:10px auto">
  <img class="card-img-top" src="https://crear.net.ar/CLIENTES/SIEMPREBONITA/Siemprebonita/mlkit@2x.png" alt="Card image cap">
  <div class="card-body">
    <center><h5 class="card-title">OTROS CONOCIMIENTOS</h5><br />
     <i class="material-icons" style="margin-top:30px;color:#000;cursor:pointer;font-size:40px;" data-toggle="tooltip" title="Modificar mis datos">
create
</i></center>
  </div>
</div></a>
</div>

</div>






  








<div class="row" >
   
   <div class="col-md-12" id="primero" style="display:none" name="primero">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">








   <h3 align="center">DATOS PERSONALES</h3>
 
 

 
   
    
   
   
  <div class="row">
  <div class="col-md-4">
   <label>Tipo Documento</label>
    <asp:DropDownList ID="CboTipoDoc" runat="server"  class="form-control"></asp:DropDownList>
    </div>


     <div class="col-md-4">
   <label>Número Doc</label>
   <input type="text" class="form-control"  id="TxtNumeroDoc" runat="server"/>
   </div>
  
  <div class="col-md-4">
   <label>Fecha Nacimiento</label>
   <%--<input type="date" class="form-control"  id="TxtFechaNac" runat="server"/>--%>
     <asp:TextBox  class="form-control"  id="TxtFechaNac" runat="server" TextMode="Date"></asp:TextBox>
  </div>

  <div class="col-md-4">
    <label>Sexo</label>
    <asp:DropDownList ID="CboSexo" runat="server"  class="form-control"></asp:DropDownList>
   </div>
    

   <div class="col-md-4">
     <label>Estado Civil</label>
    <asp:DropDownList ID="CboEstadoCivil" runat="server"  class="form-control"></asp:DropDownList>
    </div>
     
     <div class="col-md-4">
    <label>Nacionalidad</label>
    <asp:DropDownList ID="CboNacionalidad" runat="server"  class="form-control"></asp:DropDownList>
 </div>

 <div class="col-md-4">
    <label>Nivel Formación</label>
    <asp:DropDownList ID="CboNivelFormacion" runat="server"  class="form-control"></asp:DropDownList>
   </div>


   <div class="col-md-4">
   <label>CUIL</label>
   <input type="text" class="form-control"  id="TxtCuil" runat="server"/>
  </div>

   </div>

   <center> <div class="col-md-12" style=" margin-bottom:8px;">
   <img id="ImgPersonal" runat="server"  style=" height:150px; width:150px; border:1.5px solid #203f56; padding:2px; border-radius:5%;  object-fit:cover;" src="" />
                          
    </div></center>

    

    


  <center>
                              <script type="text/javascript">
                                  function readURL(input) {
                                      if (input.files && input.files[0]) {
                                          var reader = new FileReader();

                                          reader.onload = function (e) {
                                              $('#ImgPersonal')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(150);
                                          };

                                          reader.readAsDataURL(input.files[0]);
                                      }
                                  }
                                        </script>


                                    
                                  
    <div alt="Cargando Imagen..." style="  background-image:url('https://goodapps.com.ar/rrhh/Imagenes/subir.png');background-size: cover;height:50px;width:50px;cursor:pointer;decoration:none;" required="" name="imagen" id="files" type="file" accept="image/*">
       <asp:FileUpload style=" background-image:url('Imagenes/ErrorTickets.png');background-size: cover; opacity: 0; height:80px;width:80px;cursor:pointer;margin-top:-5px;decoration:none;"  runat="server" id="btnSubirImgEmpleado"  onchange="readURL(this);" runat="server"></asp:FileUpload></div>

                              
                              </center>

  
   
    
  </div>
  

  <%-- <center><a onserverclick="GuardarySeguir" runat="server"><input type="button" value="SIGUIENTE" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="MostrarSig()"/></a></center><br />--%>
   <center><input type="button" id="BtnDatosPersonles" runat="server" value="GUARDAR" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="AlertaUno();"/></center><br />

</div>

<script>

    function MostrarSig() {

        document.getElementById("primero").style = "display:block";
        document.getElementById("DatosContactoHide").style = "display:none";
        document.getElementById("DatosRefLab").style = "display:none";
        document.getElementById("DatosGrupoFam").style = "display:none";
        document.getElementById("DatosForma").style = "display:none";
        document.getElementById("DatosCursos").style = "display:none";
        document.getElementById("DatosAntSal").style = "display:none";
        document.getElementById("subir").style = "display:block;float:right; width:80px;height:100px;margin-top:-200px;z-index:999999";
    }

    function MostrarDatosContacto() {
        document.getElementById("DatosContactoHide").style = "display:block";
        document.getElementById("primero").style = "display:none";
        document.getElementById("DatosRefLab").style = "display:none";
        document.getElementById("DatosGrupoFam").style = "display:none";
        document.getElementById("DatosForma").style = "display:none";
        document.getElementById("DatosCursos").style = "display:none";
        document.getElementById("DatosAntSal").style = "display:none";
        document.getElementById("subir").style = "display:block;float:right; width:80px;height:100px;margin-top:-200px;z-index:999999";
    }
    function MostrarRefLab() {
        document.getElementById("DatosRefLab").style = "display:block";
        document.getElementById("DatosContactoHide").style = "display:none";
        document.getElementById("primero").style = "display:none";
        document.getElementById("DatosGrupoFam").style = "display:none";
        document.getElementById("DatosForma").style = "display:none";
        document.getElementById("DatosCursos").style = "display:none";
        document.getElementById("DatosAntSal").style = "display:none";
        document.getElementById("subir").style = "display:block;float:right; width:80px;height:100px;margin-top:-200px;z-index:999999";
    }
    function MostrarGrupoFam() {
        document.getElementById("DatosRefLab").style = "display:none";
        document.getElementById("DatosContactoHide").style = "display:none";
        document.getElementById("primero").style = "display:none";
        document.getElementById("DatosGrupoFam").style = "display:block";
        document.getElementById("DatosForma").style = "display:none";
        document.getElementById("DatosCursos").style = "display:none";
        document.getElementById("DatosAntSal").style = "display:none";
        document.getElementById("subir").style = "display:block;float:right; width:80px;height:100px;margin-top:-200px;z-index:999999";
    }
    function MostrarFromAca() {
        document.getElementById("DatosRefLab").style = "display:none";
        document.getElementById("DatosContactoHide").style = "display:none";
        document.getElementById("primero").style = "display:none";
        document.getElementById("DatosGrupoFam").style = "display:none";
        document.getElementById("DatosForma").style = "display:block";
        document.getElementById("DatosCursos").style = "display:none";
        document.getElementById("DatosAntSal").style = "display:none";
        document.getElementById("subir").style = "display:block;float:right; width:80px;height:100px;margin-top:-200px;z-index:999999";

    }
    function MostrarCursos() {
        document.getElementById("DatosRefLab").style = "display:none";
        document.getElementById("DatosContactoHide").style = "display:none";
        document.getElementById("primero").style = "display:none";
        document.getElementById("DatosGrupoFam").style = "display:none";
        document.getElementById("DatosForma").style = "display:none";
        document.getElementById("DatosCursos").style = "display:block";
        document.getElementById("DatosAntSal").style = "display:none";
        document.getElementById("subir").style = "display:block;float:right; width:80px;height:100px;margin-top:-200px;z-index:999999";

    }
    function MostrarAntSal() {
        document.getElementById("DatosRefLab").style = "display:none";
        document.getElementById("DatosContactoHide").style = "display:none";
        document.getElementById("primero").style = "display:none";
        document.getElementById("DatosGrupoFam").style = "display:none";
        document.getElementById("DatosForma").style = "display:none";
        document.getElementById("DatosCursos").style = "display:none";
        document.getElementById("DatosAntSal").style = "display:block";
        document.getElementById("subir").style = "display:block;float:right; width:80px;height:100px;margin-top:-200px;z-index:999999";
        
    }
</script>

   </div>
    <br /> <br />
   <div class="col-md-12" id="DatosContactoHide" style="display:none" >
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">
  <h3 align="center">DATOS DE CONTACTO</h3>
   
 
 

 
     
  <div class="row">
 


     <div class="col-md-4">
   <label>Calle</label>
   <input type="text" class="form-control" runat="server" id="TxtCalle"/>
   </div>
    

    <div class="col-md-4">
   <label>Número</label>
   <input type="text" class="form-control" id="TxtNumeroCalle" runat="server"/>
   </div>

    <div class="col-md-4">
   <label>Piso</label>
   <input type="text" class="form-control" id="TxtPiso" runat="server" />
   </div>


    <div class="col-md-4">
   <label>Depto</label>
   <input type="text" class="form-control" id="TxtDepto" runat="server"/>
   </div>

   <div class="col-md-4">
   <label>Telefono Fijo</label>
   <input type="text" class="form-control"  id="TxtTelefonoFijo" runat="server"/>
   </div>


   
   <div class="col-md-4">
   <label>Telefono Móvil</label>
   <input type="text" class="form-control"  id="TxtTelefonMovil" runat="server"/>
   </div>


    <div class="col-md-4">
   <label>Redes</label>
        <asp:DropDownList ID="ComboRedes"   runat="server" class="form-control" >
        <asp:ListItem>SELECCIONE...</asp:ListItem>
        <asp:ListItem>FACEBOOK</asp:ListItem>
         <asp:ListItem>INSTAGRAM</asp:ListItem>
          <asp:ListItem>TWITTER</asp:ListItem>
          <asp:ListItem>YOUTUBE</asp:ListItem>
        </asp:DropDownList>
  <%-- <select >
 
  <option  id="FACEBOOK" value="FACEBOOK"  class="form-control" >FACEBOOK</option>
  <option  id="INSTAGRAM" value="INSTAGRAM"  class="form-control" >INSTAGRAM</option>
  <option  id="TWITTER" value="TWITTER"  class="form-control" >TWITTER</option>
  <option  id="YOUTUBE" value="YOUTUBE"  class="form-control" >YOUTUBE</option>

</select>--%>


   </div>

  <div class="col-md-8">
   <label>Link Red Social</label>
 
      <asp:TextBox  class="form-control"  ID="TxtLinkRedsocial" runat="server" ></asp:TextBox>

   </div>


  <div class="col-md-4">
  <label>Localidad</label>
        <asp:DropDownList ID="CboLocalidad" runat="server"  class="form-control">
        </asp:DropDownList>
   </div>



   
    
   
    
  </div>
  <br />


   <center><input type="button" id="BtnDatosDeContacto" runat="server" value="GUARDAR" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="AlertaUno();"/></center><br />

</div>


 </div>


 <div class="card-body" style="border:1px solid #ccc;width:100%;border-radius:3px" >
 <!---aca las redes--->
  <asp:Repeater ID="RepeaterRedes" runat="server">
 <ItemTemplate>
 <div class="row">
 <div class="col-md-4">
 <img src='<%#Eval("Imagen")%>' width="50px"> 
 </div>
 
 <div class="col-md-8">
 <span> <%#Eval("Link")%></span>
 </div>
 </div>
 <hr />

 </ItemTemplate>
 </asp:Repeater>




 </div>



   </div>



   <div class="col-md-12" id="DatosRefLab" style="display:none">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center">AGREGAR REFERENCIAS LABORALES</h3>
 

 
     
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
   <label>Si conoces a una persona que ya está trabajando en Coovilros, agregalo como referencia. Podés cargar nombres, teléfonos, email y direcciones</label>
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
  
    
   
    
  </div>
  
  <br /><br />

  <center><input type="button" id="BtnRefLab" runat="server" value="AGREGAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="AlertaUno();"/></center><br />

</div>



   </div>
   <div class="card-body" style="border:1px solid #ccc;width:100%;border-radius:3px" >
  <center> <h4 id="MisReferencias" runat="server"></h4></center>
     <asp:GridView ID="Grilla" runat="server" CellPadding="8" ForeColor="#000000" 
                    GridLines="none" 
              FooterStyle-BackColor="#6699FF" CellSpacing="8" AllowPaging="False" 
               PageSize="10" HorizontalAlign="Center" BorderColor="#000000" >

                    <AlternatingRowStyle BackColor="White" />

                    <Columns>
                     <asp:TemplateField HeaderText="Seleccionar">
                        <ItemTemplate>
                        <center> <asp:CheckBox ID="ChkProfesional" runat="server" CssClass="BigCheckBox" style="height:40px;margin-top:20px;font-size:40px"   /></center>

                         
                        </ItemTemplate>

                        </asp:TemplateField> 

                         

                  <asp:TemplateField HeaderText="Eliminar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtEliminar"  class="btn btn-danger" runat="server" Text="Eliminar"  PostBackUrl='<%#Eval("urlEliminar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 
                       
                      
                  <asp:TemplateField HeaderText="Modificar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtModificar"  class="btn btn-success" runat="server" Text="Modificar"   PostBackUrl='<%#Eval("urlEditar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 

                    </Columns>

                   </asp:GridView>
                </div>
                <center>
               
               
              
                </center><br />




                   <asp:TextBox ID="TxtID" runat="server" style="display:none"></asp:TextBox><br />
</div>


 
  <div class="col-md-12" id="DatosGrupoFam" style="display:none">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center">AGREGAR FAMILIAR</h3>
 

 
     
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
 
  <option  id="Option13" value="HIJO"  class="form-control" >HIJO</option>
 

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
   </div>--%>

   <div class="col-md-6">
   <label>Ocupación</label>
   <asp:TextBox ID="TxtOcupacion" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" placeholder="Informatico"></asp:TextBox>
   </div>
</div>
  
  <br /><br />

  <center><input type="button" id="BtnAgregarGrupoFam" runat="server" value="AGREGAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="Alert();"/></center><br />

</div>

<script>
    function Alert() {

        $(document).on('click', '#BtnAgregarGrupoFam', function (e) {
            swal(
				'Felicitaciones!',
				'Tus datos se Agregaron con Éxito!',
				'success'
			)
            window.setTimeout(function () {
                //location.href = "FrmLogin.aspx";
            }, 6000);
        });




    }

      
           

           </script>  

   </div>
   <div class="card-body" style="border:1px solid #ccc;width:100%;border-radius:3px" >
  <center> <h4 id="TituloGF" runat="server"></h4></center>
     <asp:GridView ID="GrillaGrupoFam" runat="server" CellPadding="8" ForeColor="#000000" 
                    GridLines="none" 
              FooterStyle-BackColor="#6699FF" CellSpacing="8" AllowPaging="False" 
               PageSize="10" HorizontalAlign="Center" BorderColor="#000000" >

                    <AlternatingRowStyle BackColor="White" />

                    <Columns>
                     <asp:TemplateField HeaderText="Seleccionar">
                        <ItemTemplate>
                        <center> <asp:CheckBox ID="ChkProfesional" runat="server" CssClass="BigCheckBox" style="height:40px;margin-top:20px;font-size:40px"   /></center>

                         
                        </ItemTemplate>

                        </asp:TemplateField> 

                         

                  <asp:TemplateField HeaderText="Eliminar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtEliminar"  class="btn btn-danger" runat="server" Text="Eliminar"  PostBackUrl='<%#Eval("urlEliminar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 
                       
                      
                  <asp:TemplateField HeaderText="Modificar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtModificar"  class="btn btn-success" runat="server" Text="Modificar"   PostBackUrl='<%#Eval("urlEditar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 

                    </Columns>

                   
                  
  
                    
                    
                   
                                  
                    
                </asp:GridView>
                </div>
                <center>
               
               
              
                </center><br />




                   <asp:TextBox ID="TextBox4" runat="server" style="display:none"></asp:TextBox><br />


                                   
                                     </div>


    <div class="col-md-12" id="DatosForma" style="display:none">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center">AGREGAR FORMACION ACADEMICA</h3>
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
<option  id="Option15" value="SECUNDARIO COMPLETO"  class="form-control" >SECUNDARIO COMPLETO</option>
<option  id="Option16" value="SECUNDARIO EN CURSO"  class="form-control" >SECUNDARIO EN CURSO</option>
<option  id="Option32" value="SECUNDARIO INCOMPLETO"  class="form-control" >SECUNDARIO INCOMPLETO</option>
<option  id="Option33" value="TERCIARIO COMPLETO"  class="form-control" >TERCIARIO COMPLETO</option>
<option  id="Option34" value="TERCIARIO EN CURSO"  class="form-control" >TERCIARIO EN CURSO</option>
<option  id="Option35" value="TERCIARIO INCOMPLETO"  class="form-control" >TERCIARIO INCOMPLETO</option>
<option  id="Option36" value="UNIVERSITARIO COMPLETO"  class="form-control" >UNIVERSITARIO COMPLETO</option>
<option  id="Option37" value="UNIVERSITARIO EN CURSO"  class="form-control" >UNIVERSITARIO EN CURSO</option>
<option  id="Option38" value="UNIVERSITARIO INCOMPLETO"  class="form-control" >UNIVERSITARIO INCOMPLETO</option>

</select>

   </div>



   <div class="col-md-4">
    <label>Especialidad</label>
    <select id="ComboEspecilidad" name="select"  runat="server" class="form-control">
<option  id="Option22" value="ELECTROMECANICA"  class="form-control" >ELECTROMECANICA</option>
<option  id="Option14" value="ADMINISTRACION Y GESTION"  class="form-control" >ADMINISTRACION Y GESTION</option>
<option  id="Option17" value="ELECTRONICA"  class="form-control" >ELECTRONICA</option>
<option  id="Option18" value="INFORMATICA"  class="form-control" >INFORMATICA</option>
<option  id="Option19" value="PROGRAMADOR"  class="form-control" >PROGRAMADOR</option>
<option  id="Option20" value="MAESTRO MAYOR DE OBRAS"  class="form-control" >MAESTRO MAYOR DE OBRAS</option>
<option  id="Option21" value="AUTOMOTORES"  class="form-control" >AUTOMOTORES</option>
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






</div>
  
  <br /><br />

  <center><input type="button" id="BtnFormacionAca" runat="server" value="AGREGAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="Alert();"/></center><br />

</div>

<script>
    function Alert() {

        $(document).on('click', '#BtnAgregarGrupoFam', function (e) {
            swal(
                'Felicitaciones!',
                'Tus datos se Agregaron con Éxito!',
                'success'
            )
            window.setTimeout(function () {
                //location.href = "FrmLogin.aspx";
            }, 6000);
        });
        $(document).on('click', '#BtnFormacionAca', function (e) {
            swal(
                'Felicitaciones!',
                'Tus datos se Agregaron con Éxito!',
                'success'
            )
            window.setTimeout(function () {
                //location.href = "FrmLogin.aspx";
            }, 6000);
        });



    }




           </script>  

   </div>
   <div class="card-body" style="border:1px solid #ccc;width:100%;border-radius:3px" >
  <center> <h4 id="H1" runat="server"></h4></center>
     <asp:GridView ID="GrillaFA" runat="server" CellPadding="8" ForeColor="#000000" 
                    GridLines="none" 
              FooterStyle-BackColor="#6699FF" CellSpacing="8" AllowPaging="False" 
               PageSize="10" HorizontalAlign="Center" BorderColor="#000000" >

                    <AlternatingRowStyle BackColor="White" />

                    <Columns>
                     <asp:TemplateField HeaderText="Seleccionar">
                        <ItemTemplate>
                        <center> <asp:CheckBox ID="ChkProfesional" runat="server" CssClass="BigCheckBox" style="height:40px;margin-top:20px;font-size:40px"   /></center>

                         
                        </ItemTemplate>

                        </asp:TemplateField> 

                         

                  <asp:TemplateField HeaderText="Eliminar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtEliminar"  class="btn btn-danger" runat="server" Text="Eliminar"  PostBackUrl='<%#Eval("urlEliminar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 
                       
                      
                  <asp:TemplateField HeaderText="Modificar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtModificar"  class="btn btn-success" runat="server" Text="Modificar"   PostBackUrl='<%#Eval("urlEditar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 

                    </Columns>

                   
                  
  
                    
                    
                   
                                  
                    
                </asp:GridView>
                </div>
                <center>
               
               
              
                </center><br />




                   <asp:TextBox ID="TextBox6" runat="server" style="display:none"></asp:TextBox><br />


                                   
                                     </div>


    <div class="col-md-12" id="DatosCursos" style="display:none">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center">AGREGAR CURSOS</h3>
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
   <asp:TextBox ID="TxtHoras" type="number" runat="server"  ForeColor="Black"
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

  <center><input type="button" id="BtnAgregarCurso" runat="server" value="AGREGAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="AlertCursos();"/></center><br />

</div>

<script>
    function AlertCursos() {

        $(document).on('click', '#BtnAgregarCurso', function (e) {
            swal(
                'Felicitaciones!',
                'Tus datos se Agregaron con Éxito!',
                'success'
            )
            window.setTimeout(function () {
                //location.href = "FrmLogin.aspx";
            }, 6000);
        });
        



    }




           </script>  

   </div>
   <div class="card-body" style="border:1px solid #ccc;width:100%;border-radius:3px" >
  <center> <h4 id="H2" runat="server"></h4></center>
     <asp:GridView ID="GrillaCurso" runat="server" CellPadding="8" ForeColor="#000000" 
                    GridLines="none" 
              FooterStyle-BackColor="#6699FF" CellSpacing="8" AllowPaging="False" 
               PageSize="10" HorizontalAlign="Center" BorderColor="#000000" >

                    <AlternatingRowStyle BackColor="White" />

                    <Columns>
                     <asp:TemplateField HeaderText="Seleccionar">
                        <ItemTemplate>
                        <center> <asp:CheckBox ID="ChkProfesional" runat="server" CssClass="BigCheckBox" style="height:40px;margin-top:20px;font-size:40px"   /></center>

                         
                        </ItemTemplate>

                        </asp:TemplateField> 

                         

                  <asp:TemplateField HeaderText="Eliminar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtEliminar"  class="btn btn-danger" runat="server" Text="Eliminar"  PostBackUrl='<%#Eval("urlEliminar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 
                       
                      
                  <asp:TemplateField HeaderText="Modificar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtModificar"  class="btn btn-success" runat="server" Text="Modificar"   PostBackUrl='<%#Eval("urlEditar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 

                    </Columns>

                   
                  
  
                    
                    
                   
                                  
                    
                </asp:GridView>
                </div>
                <center>
               
               
              
                </center><br />




                   <asp:TextBox ID="TextBox7" runat="server" style="display:none"></asp:TextBox><br />


                                   
                                     </div>












 <div class="col-md-12" id="DatosAntSal" style="display:none">
   
 

 <div class="card" style="width: 100%;">
   
 
  <div class="card-body">

   
 <h3 align="center" id="h3AntecedeSalud" runat="server">AGREGAR ANTECEDENTES SALUD</h3>
 <div class="row">
 <div class="col-md-2">
   <label>Altura</label>
  <asp:TextBox ID="TxtAltura" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

   <div class="col-md-2">
   <label>Peso</label>
   <asp:TextBox ID="TxtPeso" type="text"  runat="server"  ForeColor="Black"
         class="form-control"  Height="40px" Width="100%" ></asp:TextBox>
   </div>

      <div class="col-md-7">
   <label>¿Padece alguna enfermedad crónica y/o esta bajo tratamiento?</label>
  <%-- SI <asp:RadioButton ID="RadioBEnfSi" runat="server" />
    NO <asp:RadioButton ID="RadioBEnfNo" runat="server" />--%>
         <br /> 
    <input type="checkbox" value="1" id="EnfermedadSI" name="check" onchange = "comprobar(this)" CssClass="BigCheckBox" runat="server" />SI<br/>
    <input type="checkbox" value="0" id="EnfermedadNO" name="check" onchange = "comprobar(this)" CssClass="BigCheckBox" checked="checked" runat="server" />NO<br/>
    
   </div>
    
  <script type="text/javascript">
      function comprobar(checkbox) {
          otro = checkbox.parentNode.querySelector("[type=checkbox]:not(#" + checkbox.id + ")");
          console.log(checkbox.id);
          if (otro.checked) {
              otro.checked = false;
              
          }

          if (checkbox.id = "EnfermedadSI") {
              document.getElementById("tratamiento").style = "display:block";

          } 

         
      }
     
</script>

   <div class="col-md-6" id="tratamiento" style="display:none">
   <label>Descripción y detalle tratamiento</label>
   <asp:TextBox ID="TxtTratamiento" type="text" runat="server"  ForeColor="Black"
         class="form-control"  Height="80px" Width="100%" placeholder="Descripcion y detalle tratamiento" TextMode="MultiLine"></asp:TextBox>
   </div>
 <div class="col-md-7">
   <label>¿Tiene intervenciones quirurgicas y/o cirugias?</label>
  <%-- SI <asp:RadioButton ID="RadioBEnfSi" runat="server" />
    NO <asp:RadioButton ID="RadioBEnfNo" runat="server" />--%>
         <br /> 
    <input type="checkbox" value="1" id="cirugiaSi" name="check" onchange = "comprobar2(this)" CssClass="BigCheckBox" runat="server"  />SI<br/>
    <input type="checkbox" value="0" id="CirugiaNo" name="check" onchange = "comprobar2(this)" CssClass="BigCheckBox" checked="checked" runat="server" />NO<br/>
    
   </div>



     <script type="text/javascript">
         function comprobar2(checkbox) {
             otro = checkbox.parentNode.querySelector("[type=checkbox]:not(#" + checkbox.id + ")");
             console.log(checkbox.id);
             if (otro.checked) {
                 otro.checked = false;

             }

             if (checkbox.id = "cirugiaSi") {
                 document.getElementById("cirugia").style = "display:block";

             }


         }

</script>

      <div class="col-md-6" id="cirugia" style="display:none">
   <label>Descripción y detalle de cirugia/s</label>
   <asp:TextBox ID="TxtCirugia" type="text" runat="server"  ForeColor="Black"
         class="form-control"  Height="80px" Width="100%" placeholder="Descripcion y detalle cirugia" TextMode="MultiLine"></asp:TextBox>
   </div>





</div>
  
  <br /><br />

  <center><input type="button" id="BtnAgregarAntSalud" runat="server" value="AGREGAR DATOS" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px" onmouseup="AlertCursos();"/></center><br />





</div>

<script>
    function AlertCursos() {

        $(document).on('click', '#BtnAgregarAntSalud', function (e) {
            swal(
                'Felicitaciones!',
                'Tus datos se Agregaron con Éxito!',
                'success'
            )
            window.setTimeout(function () {
                //location.href = "FrmLogin.aspx";
            }, 6000);
        });




    }




           </script>  

   </div>
   <div class="card-body" style="border:1px solid #ccc;width:100%;border-radius:3px" >
  <center> <h4 id="H3" runat="server"></h4></center>
     <asp:GridView ID="GridView1" runat="server" CellPadding="8" ForeColor="#000000" 
                    GridLines="none" 
              FooterStyle-BackColor="#6699FF" CellSpacing="8" AllowPaging="False" 
               PageSize="10" HorizontalAlign="Center" BorderColor="#000000" >

                    <AlternatingRowStyle BackColor="White" />

                    <Columns>
                     <asp:TemplateField HeaderText="Seleccionar">
                        <ItemTemplate>
                        <center> <asp:CheckBox ID="ChkProfesional" runat="server" CssClass="BigCheckBox" style="height:40px;margin-top:20px;font-size:40px"   /></center>

                         
                        </ItemTemplate>

                        </asp:TemplateField> 

                         

                  <asp:TemplateField HeaderText="Eliminar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtEliminar"  class="btn btn-danger" runat="server" Text="Eliminar"  PostBackUrl='<%#Eval("urlEliminar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 
                       
                      
                  <asp:TemplateField HeaderText="Modificar">
                        <ItemTemplate> 
                        <%--<asp:TextBox ID="" runat="server" class="form-control" ></asp:TextBox>--%> 
                            <asp:Button ID="TxtModificar"  class="btn btn-success" runat="server" Text="Modificar"   PostBackUrl='<%#Eval("urlEditar").ToString()%>' />
                            </ItemTemplate>
                    </asp:TemplateField> 

                    </Columns>

                   
                  
  
                    
                    
                   
                                  
                    
                </asp:GridView>
                </div>
                <center>
               
               
              
                </center><br />




                   <asp:TextBox ID="TextBox10" runat="server" style="display:none"></asp:TextBox><br />


                                   
                                     </div>













   
   </div>


   <br />

</div>
              
	
     <br /> <br /> <br /> <br /> <br />

      <a href="#up"><div id="subir" style="display:none;float:right; width:80px;height:80px;position:relative">
    <i class="material-icons" style="font-size:40px;color:red;cursor:pointer">
arrow_upward
</i>
     </div></a>

    
    <footer>
    <!--/#footer-->
    <div style="background: #383232; padding: 35px;bottom:0px;width:100%">
        <div class="row">
            <div class="col-md-6">
                <center>
                    <img src="https://goodapps.com.ar/RRHH/Imagenes/Isologotipo_Coovilros_horizontal_blanco_total.png" style="height: 40px;" />
                </center>
            </div>
            <div class="col-md-6">
                <center>
                    <span style="color: White;" runat="server" id="Span8">Copyright © 2020 Todos los Derechos
                        Reservados </span>
                </center>
            </div>
        </div>
    </div>
    
    </footer>




    </form>

<script src="https://crear.net.ar/CLIENTES/NEW_VISION/NewVisionWeb/alertasweeft.js"></script>
 <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>

</body>
</html>
