<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ResetEmail.aspx.vb" Inherits="CVNoval.ResetEmail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
        <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
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
  height:550px; 
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
<body onload="init()">
    <form id="form1" runat="server">
     

    <div class="DivLogin">
    <center>


        <img src="https://www.coovilros.com/Imagenes/logo-dark.png"  style=" height:70px; margin-top:30px;"/>
        <br /><br />
        <h3><b>RESTABLECER CONTRASEÑA</b></h3>
        
       <div class="field">
    <input type="text" name="fullname" runat="server"  id="TxtEmail"  runat="server" readonly>
    <label for="TxtEmail">Email</label>
  </div>
      
       <br />
       
        <label for="TxtEmail"><b>INGRESA TU NUEVA CONTRASEÑA</b></label>
  <div class="field">
    <input type="password" name="fullname2"  runat="server" id="TxtPassReset" placeholder=" ">
    <label for="TxtPassReset">Nueva Contraseña</label>
  </div>
  <br />

       

     <button type="button" class="btn btn-primary" id="resset" onmouseup="preReset()"; >Confirmar</button>

     <br /><br />
        </center>
    </div>

      <center>
    
      </center>
    </form>


    <script>
        function init() {

            var urlParams = new URLSearchParams(window.location.search);
            var email = urlParams.get('Email');


            document.getElementById("TxtEmail").value = email;
        }
    </script>


     <script>
               function preReset() {

                   Swal.fire({
                       icon: 'warning',
                       title: "¿CAMBIAR CONTRASEÑA?",
                       html: "Estas por restablecer tu contraseña!",
                                             showCancelButton: true,
                       confirmButtonColor: '#3085d6',
                       cancelButtonColor: '#d33',
                       confirmButtonText: 'CONFIRMAR',
                       cancelButtonText: 'CANCELAR'
                   }).then((result) => {
                       if (result.isConfirmed) {
                           //window.location.href = "https://crear.net.ar?ID=" + ID;
                           resetear();
                       }
                   })

               }

   //window.location.href = "//stackoverflow.com";      
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
                      var urlParams = new URLSearchParams(window.location.search);
            var email = urlParams.get('Email');
            var pass = document.getElementById("TxtPassReset").value;

            if (pass != "" && email != ""){

            
            if (pass.length < 6){
             Swal.fire({
                                title: "LO SIENTO ALGO SALIO MAL",
                                html: "La contraseña debe tener al menos 6 caracteres",
                                icon: "warning",
                                showCancelButton: false,
                                showConfirmButton: true,
                                cancelButtonColor: "#DD6B55",
                                confirmButtonColor: "#DD6B55",


                            });

                            return
            }
            

             var cadena = {Pass: pass, Email: email};
                var payload = { cadena: JSON.stringify(cadena) };

                // alert(cadena);

                $.ajax({
                    type: "POST",
                    url: "ResetEmail.aspx/reset",

                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(payload),
                    dataType: "json",

                    success: function (data) {
                        var json = $.parseJSON(data.d);
                        var status = json.Status;
                       


                        if (status == 200) {

                            Swal.fire({
                                title: "FELICITACIONES!",
                                html: "<br>DATOS ENVIADOS CON EXITO<br>",
                                icon: "success",
                                showCancelButton: false,
                                showConfirmButton: false,
                                cancelButtonColor: "#DD6B55",
                                confirmButtonColor: "#DD6B55",


                            });

                            window.setTimeout(function () {
                                location.href = "https://www.coovilros.com/RRHH/FrmIngreso.aspx";
                            }, 2000);

                        } else if (status == 0) {
                            Swal.fire({
                                title: "LO SIENTO ALGO SALIO MAL",
                                html: "Éste email todavia no se valido en el paso 2",
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
                                html: "Ingresá tú nueva contraseña por favor",
                                icon: "warning",
                                showCancelButton: false,
                                showConfirmButton: true,
                                cancelButtonColor: "#DD6B55",
                                confirmButtonColor: "#DD6B55",


                            });

            }

               




            }


        </script> 

       <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    

</body>
</html>