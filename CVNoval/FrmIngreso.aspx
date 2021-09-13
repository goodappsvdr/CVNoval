<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FrmIngreso.aspx.vb" Inherits="CVNoval.FrmIngreso" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
         <link rel="shortcut icon" href="http://www.coovilros.com/Imagenes/favicon16.ico" />
    <title runat="server" id="TituloPaginaWeb">CV Coovilros-Ingreso</title>
       

        <link href="https://fonts.googleapis.com/css?family=Lato|Questrial|Roboto+Condensed&display=swap" rel="stylesheet">
          <!-- SweetAlert2 -->
     <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<style>
html, body{

 /* background: url(https://www.navitasventures.com/wp-content/uploads/2016/06/Material-design-background-514054880_2126x1416.jpeg) no-repeat center center fixed; */
   background: url(http://imgur.com/eXyPQAT.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}

.html, body:before {
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  /* Safari 4-5, Chrome 1-9 */
  background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#2F2727), to(#008e7c));

  opacity: .9;
}

.DivLogin{ background-color: white  ; 
          margin: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
 box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
  height:500px; 
    width:100%; 
    max-width:400px; 
    
    padding: 25px
    
    }
 
 
 .TextBoxClase
 {background:white;
font-family: 'PT Sans', Arial, sans-serif;
  color:#009ddc;
  font-size:20px;
  text-align:center;
  width:100%;
  height:35px;
  border:none;
     }
     
     .ButtonClase
     { background:#018f7d;
  font-family: 'PT Sans', Arial, sans-serif;
  color:white;
  font-size:20px;
  text-align:center;
  width:100%;
  height:45px;
  border:none;
  cursor:pointer;
         }
 
 
 
 
  
.field {
  display: flex;
  flex-flow: column-reverse;

}
/**
* Add a transition to the label and input.
* I'm not even sure that touch-action: manipulation works on
* inputs, but hey, it's new and cool and could remove the 
* pesky delay.
*/
label, input {
  transition: all 0.2s;
  font-family: 'PT Sans', Arial, sans-serif;
  touch-action: manipulation;
 
}



/**
* Translate down and scale the label up to cover the placeholder,
* when following an input (with placeholder-shown support).
* Also make sure the label is only on one row, at max 2/3rds of the
* field—to make sure it scales properly and doesn't wrap.
*/
input:placeholder-shown + label {
  cursor: text;
  overflow: hidden;
      text-align: left;
  font-size:15px;
  transform: translate(0, 2.125rem) scale(1);
}
/**
* By default, the placeholder should be transparent. Also, it should 
* inherit the transition.
*/
::-webkit-input-placeholder {
  opacity: 0;
  transition: inherit;
}
/**
* Show the placeholder when the input is focused.
*/
input:focus::-webkit-input-placeholder {
  opacity: 1;
}
/**
* When the element is focused, remove the label transform.
* Also, do this when the placeholder is _not_ shown, i.e. when 
* there's something in the input at all.
*/
input:not(:placeholder-shown) + label,
input:focus + label {
  transform: translate(0, 0) scale(1);
  cursor: pointer;
}
 
 
 
 
 input,
textarea {
	display: block;
	width: 98%;
	border: 0;
	padding: 10px 5px;
  background: white no-repeat;
	
	/*
	* IMPORTANT PART HERE
	*/
	
  /* 2 imgs : 1px gray line (normal state) AND 2px green line (focus state) */
	background-image: linear-gradient(to bottom, #1abc9c, #1abc9c), linear-gradient(to bottom, silver, silver);
	/* sizes for the 2 images (default state) */
	background-size: 0 2px, 100% 1px;
	/* positions for the 2 images. Change both "50%" to "0%" or "100%" and tri again */
	background-position: 50% 100%, 50% 100%;

	/* animation solely on background-size */
  transition: background-size 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);

}



input:focus,
textarea:focus{
  /* sizes for the 2 images (focus state) */
	background-size: 100% 2px, 100% 1px;
	outline: none;
}



input:not(:placeholder-shown) + label, input:focus + label {
    transform: translate(0, 0) scale(1);
    cursor: pointer;
    text-align:left;
    font-size:13px
}

</style>
<body>

<script>
    function alerta() {
        alert("hola");
    }
</script>

<script>

            function resetear() {

            Swal.fire({
                          title: "ESPERA UN MOMENTO! 🖐",
                          html: "ESTAMOS VALIDANDO LA INFORMACIÓN<br> <b style='color:green;'>ESPERA POR FAVOR...</b><br><img src='https://crear.net.ar/CLIENTES/loader.gif' width='260px'>",
                          icon: "warning",
                          showCancelButton: false,
                          showConfirmButton: false,
                          cancelButtonColor: "#DD6B55",
                          confirmButtonColor: "#DD6B55",


                      });

            var email = document.getElementById("TxtEmailReset").value;

            if (email != ""){
             var cadena = {Email: email};
                var payload = { cadena: JSON.stringify(cadena) };

                // alert(cadena);

                $.ajax({
                    type: "POST",
                    url: "FrmIngreso.aspx/reset",

                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(payload),
                    dataType: "json",

                    success: function (data) {
                        var json = $.parseJSON(data.d);
                        var status = json.Status;
                       


                        if (status == 200) {

                            Swal.fire({
                                title: "FELICITACIONES!",
                                html: "<br>DATOS ENVIADOS CON EXITO<br> VERIFICA TU CASILLA DE EMAIL",
                                icon: "success",
                                showCancelButton: false,
                                showConfirmButton: false,
                                cancelButtonColor: "#DD6B55",
                                confirmButtonColor: "#DD6B55",


                            });

                            /*window.setTimeout(function () {
                                location.href = "FrmNovedades.aspx";
                            }, 2000);*/

                        } else {
                            Swal.fire({
                                title: "LO SIENTO ALGO SALIO MAL",
                                html: "Intenta mas tarde",
                                icon: "warning",
                                showCancelButton: false,
                                showConfirmButton: false,
                                cancelButtonColor: "#DD6B55",
                                confirmButtonColor: "#DD6B55",


                            });

                        }


                    }

                });
            }else{
            
            Swal.fire({
                                title: "LO SIENTO ALGO SALIO MAL",
                                html: "Ingresá tú email por favor",
                                icon: "warning",
                                showCancelButton: false,
                                showConfirmButton: true,
                                cancelButtonColor: "#DD6B55",
                                confirmButtonColor: "#DD6B55",


                            });

            }

               




            }


        </script> 


    <form id="form1" runat="server">
     

    <div class="DivLogin">
    <center>


        <img src="https://www.coovilros.com/Imagenes/logo-dark.png"  style=" height:70px; margin-top:30px;"/>
        <br />
        <h2><b style=" text-align:left; background:transparent; height:60px; color:#000; border:none; font-size:18px; font-family: 'Lato', sans-serif;border:none !important ">BIENVENIDO</b></h2>
        <label for="TxtEmail"><b style=" text-align:left; background:transparent; height:60px; color:#000; border:none; font-size:18px; font-family: 'Lato', sans-serif;border:none !important ">INGRESA CON TU USUARIO Y CONTRASEÑA</b></label>

       <div class="field">
    <input type="text" name="fullname" runat="server"  id="TxtEmail" placeholder=" ">
    <label for="TxtEmail">Email</label>
  </div>
      
       
        
  <div class="field">
    <input type="password" name="fullname2"  runat="server" id="TxtPass" placeholder=" ">
    <label for="TxtPass">Contraseña</label>
  </div>


         <br /> 

        <asp:Button ID="Cmdlogin"  class="ButtonClase" runat="server" Text="Ingresar"  />
        <br />
        <a runat="server" style="cursor:pointer"  data-bs-toggle="modal" data-bs-target="#exampleModal"><label style="cursor:pointer"><b>*Olvide mi contraseña</b></label></a>
        </center>
    </div>

      <center>
    <div id="DivStatus" runat="server" visible="false" class="wow fadeInUp" style=" position:relative;     line-height: 2em;  z-index:999;  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); background:#eb0c0c; margin-top:584px;  height:40px; width:100%; max-width:401px;   padding: 25px;  font-family: 'PT Sans', Arial, sans-serif; font-size:20px; color:White;">
   
    <span> Usuario o Contraseña incorrectos </span>
  
    </div>
    <div id="divAproved" runat="server" visible="false" class="wow fadeInUp" style=" position:relative;     line-height: 2em;  z-index:999;  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); background:#eb0c0c; margin-top:80px;  height:70px; width:100%; max-width:301px;   padding: 25px;  font-family: 'PT Sans', Arial, sans-serif; font-size:20px; color:White;">
   
    <span>Debes validar tu email. Verifica tu casilla de correo electrónico</span>
  
    </div>

     <div id="div1" runat="server" visible="false" class="wow fadeInUp" style=" position:relative;     line-height: 2em;  z-index:999;  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); background:#eb0c0c; margin-top:80px;  height:70px; width:100%; max-width:301px;   padding: 25px;  font-family: 'PT Sans', Arial, sans-serif; font-size:20px; color:White;">
   
    <span>Ingresa los datos requeridos</span>
  
    </div>



    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <center><h5 class="modal-title" id="exampleModalLabel" style="height:60px; color:#15579f; font-size:18px; font-family: 'Lato', sans-serif;border:none !important;margin:auto ">Restablecer Contraseña</h5></center>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <center>
      <video src="https://crear.net.ar/CLIENTES/PLAY/Play/khk20ut9.mp4"  width="100%" height="200" autoplay muted loop></video>
      

      <p style=" text-align:left;  height:60px; color:#15579f; border:none; font-size:18px; font-family: 'Lato', sans-serif;border:none !important ">Se te enviará un correo electrónico para validar tus datos y podrás reestablecer tú contraseña.</p>
      </center>

       <div class="field">
    <input type="email" name="fullname"  id="TxtEmailReset" placeholder=" " requerid >
    <label for="TxtEmailReset" >Ingresá tú Email</label>
  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >Cerrar</button>
        <button type="button" class="btn btn-primary" id="resset" onmouseup="resetear()"; >Confirmar</button>

        <a href="ResetEmail.aspx"><button type="button" class="btn btn-secondary" >ResetEmail</button></a>

      </div>
    </div>
  </div>
</div>


      </center>
    </form>
    <%--<script src="Scripts/wowJs.js" type="text/javascript"></script>
        <script>
            new WOW().init();
</script>--%>










        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
       <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
    

    <script type="text/javascript">
        $(document).ready(function () {


            setTimeout(function () {
                document.getElementById("DivStatus").style.display = "none";
            }, 4000);

            setTimeout(function () {
                document.getElementById("divAproved").style.display = "none";
            }, 4000);

            setTimeout(function () {
                document.getElementById("div1").style.display = "none";
            }, 4000);

        });
</script>
</body>
</html>

