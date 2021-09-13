<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmInicio.aspx.vb" Inherits="CVNoval.FrmInicio" %>



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
   <link href="https://fonts.googleapis.com/css?family=Bitter&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Staatliches" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link runat="server" id="HojaEstilo" href="" rel="stylesheet" type="text/css" />
    <link href="wowCss.css" rel="stylesheet" type="text/css" />
    <link href="catalogo.css" rel="stylesheet" type="text/css" />
    <link href="dist/css/swiper.css" rel="stylesheet" type="text/css" />
    <link href="dist/css/swiper.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- SweetAlert2 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>


<script>
    function resizeIframe(obj) {
        obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
    }
</script>
</head>
<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () { scrollFunction() };

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("myBtn").style.display = "block";
        } else {
            document.getElementById("myBtn").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
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
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					
						
                        <center><img src="https://www.coovilros.com/Imagenes/logo-dark.png" runat="server" id="ImagenLogo" style=" height:auto;  max-height:60px;margin-top:10px"  alt=""></center>
					
				</div>					  

				<div class="col-md-12">	 
					<p id="webcon" style="float:right;margin-left:800px;font-family: 'Bitter',serif;margin-top:-30px"></p>
				</div>

			</div>
		</div>		
       
        <br />
	</nav>
   
  


   
   

  



     <br /><br />
     
<center>
<div class="row" id="resultadoConsulyta" runat="server">
<asp:Repeater ID="Repeater" runat="server">
                                            <ItemTemplate>
   


        
    <div class="col-12 col-sm-6 col-md-4 mx-auto" >
    
          <div class="card text-center justify-content-center align-self-center" style="max-width:400px">
            <div class="card-content">
            <br />
              <img src='<%# Eval("Imagen")%>'alt="Protegemos tu privacidad." style="width:100%;background-size:contain"  />
              <h3 id="textResul" ><%# Eval("Titulo").ToString.ToUpper%></h3>
             <h6 id="H1" ><%# Eval("Contenido").ToString.ToUpper%></h6>
            </div>
          </div>
        </div>

        </div>
        </div>
        
        </ItemTemplate>
        </asp:Repeater>
        </div>
       </center>





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
    

   




 <div style="width:100%;height:auto; background:#fff">  
 <br />










    <center><h4 >Bienvenido! Te invitamos a ser parte de <b>Coovilros</b></h4></center>
   <div class="row">
   
   <div class="col-md-12" >
   
 

 <center><div class="card" style="width: 98%;">
   
 
  <div class="card-body">


 
  <%--<center><h1>¿Qué es CONSTRUYA YA?</h1></center>--%>

 
    <p class="card-text" style="padding:10px;margin:30px;font-size:20px">
    Contamos con una política de empleo que prioriza el bienestar, seguridad y proyección de nuestra gente, favoreciendo la capacitación constante, la integración y participación de la familia de nuestros empleados en actividades sociales generadas desde la empresa y otros beneficios.
    </p>
   
    
  </div>
   <center><img src="https://crear.net.ar/CLIENTES/EGFOTOGRAFIA/Egfotografia/social4_07-01%20(1).jpg" class="card-img-top" alt="..." style="width:100%;max-width:600px;height:auto"></center>

</div>
</center>


   </div>
   
   
   </div>
   
<!------1 ------>
<br />


 <center><a href="FrmIngreso.aspx" target="_blank"><input type="button" value="INGRESAR" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px"/></a></center><br />
  <center><a href="FrmLogin.aspx" target="_blank"> <input type="button" value="CREAR PERFIL" style="background:#047537; color:#fff;   border:1px solid black; width:300px;height:40px"/></a></center>
 


   


   <br />







  <%-- <div class="container">

  
    <footer id="footer" class="midnight-blue" style="background:url(https://construyaya.com.ar/imagenes/fondo3.jpg);background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; /* Resize the background image to cover the entire container */height:100%">
        		<div class="container">
            <div class="row">
               
 <br /><br />
				

                <div class="col-md-4"></div>
				

          
                  <div class="col-md-5" id="ContactoFila" runat="server" style="-webkit-box-shadow: -1px -4px 29px 2px rgba (0,0,0,0.75);
-moz-box-shadow: -1px -4px 29px 2px rgba (0,0,0,0.75);
cuadro de sombra: -1px -4px 29px 2px rgba (0,0,0,0.75);">
                   <br /><br /> <br /><br />
                      <div class="ClaseContactos wow flipInX" style="background:#fff;margin-top:20px;border:solid 1px black;padding:10px;-webkit-box-shadow: -1px -4px 29px 2px rgba (0,0,0,0.75);
-moz-box-shadow: -1px -4px 29px 2px rgba (0,0,0,0.75);
cuadro de sombra: -1px -4px 29px 2px rgba (0,0,0,0.75);">
           <center>
            <h3 class="section-title1 wow flipInX"  data-wow-delay="0.4s" style="color:#000 "> CONSULTA</h3>
           <p style="color:#000">Completá con tus datos.
A continuación le llegará información
acerca de nuestros productos y servicios.</p>
           </center>
           
                 <input id="txtRazonSocial"  placeholder="Nombre/Razon Social" style="border:1px solid black;  margin-bottom:5px; text-align:center;background:transparent;  color:#000; width:100%;text-align:left;font-size:18px" runat="server" class="form-control" required></input>
            
                 <input id="txtTelefono"  placeholder="Teléfono.." style="border:1px solid black; margin-bottom:5px; background:transparent; text-align:center;  color:#000; width:100%;text-align:left;font-size:18px" runat="server" class="form-control" required></input>
            
            <input id="TxtEmail"  placeholder="Email.." style="border:1px solid black; margin-bottom:5px; background:transparent; text-align:center; color:#000; width:100%;text-align:left;font-size:18px" runat="server" class="form-control" required></input>
              <input id="TxtCiudad"  placeholder="Localidad" style="border:1px solid black; margin-bottom:5px; background:transparent; text-align:center; color:#000; width:100%;text-align:left;font-size:18px" runat="server" class="form-control" required></input>




 <textarea id="TxtMensaje"  style=" height:95px; border:1px solid black; margin-bottom:17px; background:transparent; color:#000000; width:100%;text-align:left;font-size:18px" runat="server" required class="form-control" >Hola me interesaría saber más.  </textarea>
           
           
            
           <asp:Button ID="cmdEnviar" style="background:#F4B100; color:#fff;   border:1px solid black; width:100%;height:40px" runat="server" Text="Enviar" onmouseup="validar();"></asp:Button>




           

            
            </div>
            <br /><br /><br /><br />
           
           <script>
               function validar() {
                   var RazonSocial = document.getElementById("txtRazonSocial").value;
                   var Telefono = document.getElementById("txtTelefono").value;
                   var Email = document.getElementById("TxtEmail").value;
                   var Mensaje = document.getElementById("TxtMensaje").value;
                   if (RazonSocial == "" || Telefono == "" || Email == "" || Mensaje == "") {
                       //alert("Campos Obligatorios");
                       //document.getElementById("ContactoSucces").style.display = "block";

                       $(document).on('click', '#cmdEnviar', function (e) {
                           swal(
				'Atención!',
				'Debes cargar los datos requeridos!',
				'error'
			)
                           window.setTimeout(function () {
                               location.href = "FrmLanding.aspx";
                           }, 2000);
                       });

                   } else {
                       //alert("Consulta Enviada con Éxito");
                       //document.getElementById("ContactoSucces").style.display = "block";
                       $(document).on('click', '#cmdEnviar', function (e) {
                           swal(
				'Felicitaciones',
				'Datos Enviados con <b style="color:green;">Éxito</b> Pronto nos pondremos en contacto contigo! <br> <img src="https://construyaya.com.ar/Imagenes/logonuevo.png" width="220px">',
				'success'
			)
                           window.setTimeout(function () {
                               location.href = "FrmLanding.aspx";
                           }, 2000);

                       });


                   }

               }
           

           </script>

                  </div>
                  <br />
                  <div class="col-md-4" id="ContactoSucces" visible="false" runat="server" style="    ">
                    <div class="ClaseContactos wow flipInX" style=" ">
                  <center>
                  <br /><br /><br /><br /><br />
                  <h3 class="section-title1 wow flipInX"  data-wow-delay="0.4s" style=" display:none;  "> CONSULTA</h3>

<img src="succes.png" style=" height:65px;" />
<br /><br />

<span style=" color: #000; font-size:22px;   font-family: 'Exo 2', sans-serif;text-shadow: 0 1px 15px white;"> Consulta enviada con éxito</span>

<br />
    <asp:Button ID="CmdEnviarOtra" style=" background:white; color:black;  border:none; width:100%;" runat="server" Text="Enviar Otra"></asp:Button>
</center>
</div>
                  </div>

                  <br />

                
				</div>
                <br /><br />
    </footer>
    <br />
                </div>--%>

 </div>
              
		
         

     
    <!--/#footer-->
    <div style="background: #383232; padding: 35px;">
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
    

<div class="container" >
 
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
   <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
      
        <div class="modal-body">
        
      <img src="Imagenes/cancel.png"  style=" height:40px; float: right;z-index: 99999; position: relative; margin-top: -17px; margin-right: -17px; cursor:pointer;" onclick="$('#myModal').modal('hide')"/>
 



  
      
        </div>
       
      </div>
      
    </div>
  </div>
  
</div>


    </form>



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js2/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js2/bootstrap.min.js"></script>
    <script src="js2/jquery.prettyPhoto.js"></script>
    <script src="js2/jquery.isotope.min.js"></script>
    <script src="js2/wow.min.js"></script>
    <script src="js2/jquery.easing.min.js"></script>
    <script src="js2/main.js"></script>
    <script src="wowJs.js" type="text/javascript"></script>
    <script>
        new WOW().init();
    </script>

    <!-- Swiper JS -->
  <script src="dist/js/swiper.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 3,
      spaceBetween: 30,
      slidesPerGroup: 3,
      loop: true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  </script>



</body>
</html>
