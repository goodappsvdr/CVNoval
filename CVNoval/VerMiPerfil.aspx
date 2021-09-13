<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VerMiPerfil.aspx.vb" Inherits="CVNoval.VerMiPerfil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Panel de Control para la Administración de tu sitio Web">
    <meta name="author" content="Coderthemes">
   <link rel="shortcut icon" href="http://www.coovilros.com/Imagenes/favicon16.ico" />
    <title>RR HH</title>
    <!--Morris Chart CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">
    <!-- App css -->
   <%-- <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />--%>
    <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
   <%-- <link href="assets/css/components.css" rel="stylesheet" type="text/css" />--%>
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
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
</head>


<style>
    
     /* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript, 
if it's not present, don't show loader */
.no-js #loader { display: none;  }
.js #loader { display: block; position: absolute; left: 100px; top: 0; }
.se-pre-con
    {
        position: fixed;
        left: 0px;
        top: 0px;
        width: 100%;
        height: 100%;
        z-index: 9999;
        background: url(https://goodapps.com.ar/RRHH/Imagenes/cargando.gif) center no-repeat #fff;
       background-size:700px 400px;

    
    
    }
    
 #FondoProgeso {
  width: 100%; height: 100%; min-height:100%; 
  background: white;
    
     overflow: hidden;
    position: absolute;
    z-index:999;
     top: 0;
    right: 0;
    bottom: 0;
    left: 0;"
}

 .StatusModal
      {
          
     background:white;  
      box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
  height:300px; 
    width:100%; 
    max-width:300px; 
    border-radius:15px; 
    padding: 15px  15px 15px 15px;
       margin-top:250px;
        } 
        
        
        .icon-list-demo .col-md-4:hover {
     background-color: transparent;
}


input[type=checkbox], input[type=radio] {
    margin: 11px 0 0;
    margin-top: 1px\9;
    line-height: normal;
    cursor:pointer;
}



.BigCheckBox input
        {
            width: 24px;
            height: 24px;
            vertical-align: middle !important;
            -webkit-appearance: none;
  -moz-appearance: none;
  background: lightgray;
  appearance: none;
    border:1px solid #203f56;
        }
        
        .BigCheckBox input[type=checkbox]:checked + label
        {
            color: #203f56 !important;
            
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

.Status
{  width: 100%;
    height: 100%;
     min-height:100%; 
background-color:rgba(0, 0, 0, 0.5);
    
     overflow: hidden;
    position: absolute;
    z-index:99999;
     top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    }
      

      .waves-input-wrapper .waves-button-input {
    /* position: relative; */
    /* top: 0; */
    /* left: 0; */
    background: transparent;
    border: none;
    font-style: normal;
}


</style>


<body class="fixed-left">
    <div class="se-pre-con" style="display:none">
    </div>
   <form id="form1" runat="server">

    <div style="background:#047537;height:180px; width:100%;">
    <a onClick="window.history.back();"><!--<input type="button"  class="btn btn-primary" value="<-- VOLVER"  style="margin-top:-90px;border:#176fc57a 2px solid;border-radius:35px;-webkit-box-shadow: -1px 2px 17px 1px rgba(107,89,107,1);
-moz-box-shadow: -1px 2px 17px 1px rgba(107,89,107,1);
box-shadow: -1px 2px 17px 1px rgba(107,89,107,1);" >--><i class="material-icons" style="margin-top:30px;color:#fff;cursor:pointer;font-size:40px;margin-left:35px">
arrow_back
</i></a><!--For modern browsers-->

<i class="material-icons" onclick="window.print()" style="margin-top:30px;color:#fff;cursor:pointer;font-size:40px;margin-left:55px">
print
</i>


<img src="https://www.coovilros.com/Imagenes/logo-dark.png" width="250px" style="float:right; margin-top:10px;margin-right:10px" />
</div>

    <div class="container" style="margin-top:-95px;-webkit-box-shadow: -1px 2px 5px 0px rgba (0,0,0,0.75);
-moz-box-shadow: -1px 2px 5px 0px rgba (0,0,0,0.75);
cuadro de sombra: -1px 2px 5px 0px rgba (0,0,0,0.75);width:98%;max-width:750px" >
  <h1 id="h1Titulo" runat="server">MI PERFIL</h1>
    <div class="row">
    
    <div class="col-md-6">

<img src="" id="ImgEmpleado" runat="server"  style="margin-top:10px; width:150px;  height:150px;border: 8px solid #fff;
    box-shadow: 0px 0px 30px rgba(0, 0, 0, 0.2); object-fit:cover;" />

                                                      </div>
 <div class="col-md-6" id="nombreprint">
     <div class="form-group">
      <input  type="text" ID="TxtNombre" required runat="server"/>
      <label for="input" class="control-label" style="text-align:left">Apellido y Nombre</label><i class="bar" id="barnombre"></i>

         <input  type="text" ID="txtFechaIngreso" style="margin-top:50px" runat="server"/>
      <label for="input" class="control-label" style="text-align:left;margin-top:80px">Fecha ingreso</label><i class="bar" id="aa"></i>

    </div>
    </div>

    <div class="col-md-6">
     <div class="form-group">
      <input  type="text" ID="TxtNacionalidad" required runat="server"/>
      <label for="input" class="control-label" style="text-align:left">Nacionalidad</label><i class="bar"></i>
    </div>
    </div>

    <div class="col-md-6">
     <div class="form-group">
      <input  type="text" ID="TxtTelefono" required runat="server"/>
      <label for="input" class="control-label" style="text-align:left">Telefono</label><i class="bar"></i>
    </div>
    </div>

    <div class="col-md-6">
     <div class="form-group">
      <input  type="text" ID="TxtDireccion" required runat="server"/>
      <label for="input" class="control-label" style="text-align:left">Dirección</label><i class="bar"></i>
    </div>
    </div>



    <div class="col-md-6">
            <div class="form-group">
      <input  type="text" ID="TxtEmail" required runat="server"/>
      <label for="input" class="control-label" style="text-align:left">Email</label><i class="bar"></i>
    </div>
    </div>



    <div class="col-md-12">
     <div class="form-group" >
    
        <asp:TextBox ID="TxtEstudios" type="text" required runat="server"></asp:TextBox>
          <label for="input" class="control-label" style="text-align:left">Estudios</label><i class="bar"></i>
                                                    
    </div></div>
         


          



          <div class="col-md-12">
     <div class="form-group">
      <input  type="text" ID="TxtTitulo" required runat="server"/>
      <label for="input" class="control-label" style="text-align:left">Titulo</label><i class="bar"></i>
    </div>
    </div>

    
          <div class="col-md-6">
     <div class="form-group">
      <input  type="text" ID="TxtLocalidad" required runat="server" />
      <label for="input" class="control-label" style="text-align:left">Localidad</label><i class="bar"></i>
    </div>
    </div>

    <div class="col-md-6">
     <div class="form-group" >
     
        <asp:TextBox ID="TxtEdad" type="text" required runat="server"></asp:TextBox>
         <label for="input" class="control-label" style="text-align:left">Fecha Cumpleaños</label><i class="bar"></i>
                                                    
    </div></div>

    

    <div class="col-md-6">
     <div class="form-group" >
      
        <asp:TextBox ID="TxtEstadoCivil" type="text" required runat="server" ></asp:TextBox>
        <label for="input" class="control-label" style="text-align:left">Estado Civil</label><i class="bar"></i>
                                                    
    </div></div>

        
    <div class="col-md-6">
     <div class="form-group" >
      
        <asp:TextBox ID="TxtEdadActual" type="text" required runat="server" ></asp:TextBox>
        <label for="input" class="control-label" style="text-align:left">Edad</label><i class="bar"></i>
                                                    
    </div></div>


    <div class="col-md-12">
     <div class="form-group" >
      
       
        <br />
        <label for="input" class="control-label" style="text-align:left"><br />Archivo Adjunto: </label> <br /> <a href="" id="hrefArchivoAdj" runat="server"><span id="ArchivoAdjunto" runat="server"></span></a><br /><i class="bar"></i> <br />
                                                    
    </div></div>




           <div class="col-md-12">
                <p>Formación académica</p>
            <div class="form-group" >                           
        <asp:Repeater ID="RepeaterFA" runat="server">
 <ItemTemplate>
  <div class="form-group" >
       <input type="text" value="<%#Eval("Institucion")%>"/>
<label for="input" class="control-label" style="text-align:left">Institución</label><i class="bar"></i><br />
     </div>
 
 
     <div class="form-group" >
       <input type="text" value="<%#Eval("Especialidad")%>"/>
<label for="input" class="control-label" style="text-align:left">Especialidad</label><i class="bar"></i><br />
     </div>
 
 </ItemTemplate>
 </asp:Repeater>   
     </div>     
     </div> 

<hr />

              <div class="col-md-12">
             <p>Antecedentes Laborales</p>
            <div class="form-group" >                           
        <asp:Repeater ID="RepeaterAL" runat="server">
 <ItemTemplate>
 <div class="form-group" >
       <input type="text" value="<%#Eval("Empresa")%>"/>
<label for="input" class="control-label" style="text-align:left">Empresa</label><i class="bar"></i><br />
     </div>
     <div class="form-group" >
     <input type="text" value="<%#Eval("Area")%>"/>
<label for="input" class="control-label" style="text-align:left">Area</label><i class="bar"></i><br />
         </div>
 <div class="form-group" >
 <input type="text" value="<%#Eval("DescripcionArea")%>"/>
<label for="input" class="control-label" style="text-align:left">Descripción Tarea</label><i class="bar"></i><br />
 </div>
     <div class="form-group" >
 <input type="text" value="<%#Eval("DatosReferentes")%>"/>
<label for="input" class="control-label" style="text-align:left">Datos Referentes</label><i class="bar"></i><br />
</div>
 
 </ItemTemplate>
 </asp:Repeater>   
     </div>     
     </div> 

  <hr />
           <div class="col-md-12">
            <div class="form-group" >                           
        <asp:Repeater ID="RepeaterRedes" runat="server">
 <ItemTemplate>
 
 
 <a href='<%#Eval("Link")%>' target="_blank"><img src='<%#Eval("Imagen")%>' style="width:50px;margin:20px"> </a>
 
 
 

 
 </ItemTemplate>
 </asp:Repeater>   
     </div>     
     </div> 
        

     


 <div class="col-md-12" >
  <div class="form-group">
       


      <center><a class='copi' id='getlink' href='javascript:void();'>
      <img src="https://crear.net.ar/CLIENTES/CONSTRUC/Construc/share-symbol_icon-icons.com_68493.png" width="50px" /></a><br />COMPARTIR</center> 

<script>//<![CDATA[
    var boton = document.getElementById('getlink');
    boton.addEventListener('click', function (e) {
        if (boton.id == 'getlink') {
            var aux = document.createElement('input');
            aux.setAttribute('value', window.location.href);
            document.body.appendChild(aux);
            aux.select();
            try {
                document.execCommand('copy');
                var aviso = document.createElement('div');
                aviso.setAttribute('id', 'aviso');
                aviso.style.cssText = 'position:fixed; z-index: 9999999; top: 50%;left:50%;margin-left: -100px;padding: 20px; background: #047537;border-radius: 8px;font-family: sans-serif;color:#fff';
                aviso.innerHTML = 'URL copiada para compartir';
                document.body.appendChild(aviso);
                document.load = setTimeout('document.body.removeChild(aviso)', 4000);
                document.load = setTimeout('boton.id = "getlink"', 4000);
                boton.id = '';
            } catch (e) {
                alert('Tu navegador no soporta la función de copiar');
            }
            document.body.removeChild(aux);
        }
    });
//]]></script>


    </div>
    </div>
                                     

                                       </div>



                                         <br /><br />

             







    <%-- <div class="checkbox">
      <label>
        <input type="checkbox"  checked="checked"  CssClass="BigCheckBox" ID="ChkActivo" runat="server"/><i class="helper"></i>Activo
      </label>
   </div>--%>
    <br /><br />
  <%--
  <div class="button-container">
    <button type="button" class="button"  runat="server"   ID="cmdAceptar" ><span>GUARDAR</span></button>
     
  </div>--%>
  
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
                document.getElementById('TxtFechaHoy').value = ano + "-" + mes + "-" + dia;
            }
     </script>                            
       

  
  <center> 
                    <footer>
                     
                     <img src="https://www.coovilros.com/Imagenes/logo-dark.png" width="250px" /><br />
                     2019 - 2021 © GoodApps. 
                    </footer>
                    </center>
  


   <asp:HiddenField ID="HfID_Propietarios" runat="server" />


    
                                    <br />
                                    <asp:Label ID="lblError" class="lbl2" ForeColor="Red" runat="server" Text=""></asp:Label>
                                    <br />
                                    <br />



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
   /* width:300px !important;*/
   width:650px;
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
  /*max-width: 40rem;*/
  max-width:650px;
  width:98%;
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
    <!-- END wrapper -->
    <script>
        var resizefunc = [];
    </script>
    <!-- jQuery  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/detect.js"></script>
    <script src="assets/js/fastclick.js"></script>
    <script src="assets/js/jquery.blockUI.js"></script>
    <script src="assets/js/waves.js"></script>
    <script src="assets/js/jquery.nicescroll.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <!-- KNOB JS -->
    <!--[if IE]>
        <script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
    <script src="assets/plugins/jquery-knob/jquery.knob.js"></script>
    <!--Morris Chart-->
    <script src="assets/plugins/morris/morris.min.js"></script>
    <script src="assets/plugins/raphael/raphael-min.js"></script>
    <!-- Dashboard init -->
    <script src="assets/pages/jquery.dashboard.js"></script>
    <!-- App js -->
    <script src="assets/js/jquery.core.js"></script>
    <script src="assets/js/jquery.app.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {


            setTimeout(function () {
                document.getElementById("DivStatus").style.display = "none";
            }, 5000);

        });
    </script>
    <script>
        function CerrarStatus() {
            document.getElementById("DivStatus").style.display = "none";
        }
    </script>
    <script type="text/javascript">
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow"); ;
        });
    </script>
    <script src="Scripts/wowJs.js" type="text/javascript"></script>
    <script>
        new WOW().init();
    </script>
</body>
</html>


