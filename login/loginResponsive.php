<!DOCTYPE html>
<html lang="es">
    <head>
<title>Formulario de Login</title>
    <meta charset="UTF-8">

    
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <link rel="stylesheet" href="estilologin.css">
    </head>
    
<body >
    
    <form  name="loginR">
    <h2>Inicio Sesión</h2>
    <input type="text" placeholder="       Usuario" name="Usuario" />
    
    <input type="password" placeholder="&#128272; Contraseña" name="Contrasena" />
        <center>
            
     <input type="button"  onclick="login1()" value="Ingresar"/>
        </center>
    </form>
    
    <script>
    function login1(){
        
        
      window.location="Bienvenido.html"; 
           
    }
    </script>
   
    
    </body>
</html>
