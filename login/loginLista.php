<!DOCTYPE html>


<html lang="es">
    <head>
        
<title>Formulario de Login</title>
    <meta charset="UTF-8">
       
<?php
 $con =mysqli_connect("localhost","root","123456","pruebap") or die ("Error");
?>
       
        
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <link rel="stylesheet" href="\css\estilo.css">
    </head>
<body background="Imagenes/fondos">
    
    
    
    
    <?php 
	if(isset($_POST['insert'])){
	
		$Usuario = $_POST['Usuario'];
		$Contrasena = $_POST['Contrasena'];
		
		$insertar = "INSERT INTO usuario (Usuario,Contrasena) values ('$Usuario','$Contrasena')";
		
		$ejecutar = mysqli_query($con,$insertar);
	
		if($ejecutar){
		
		echo "<h3>Insertado correctamente</h3>";
		}
	}
	
	?> 
	<br/>
	<table width="500" border="2" style="background-color: #F9F9F9;">
	
		<tr>
			<th>ID</th>
			<th>Usuario</th>
			<th>Contraseña</th>
			<th>Editar</th>
			<th>Borrar</th>
		</tr>
        
		
		<?php 
			
			
			$consulta = "SELECT * FROM usuario";
			
			$ejecutar = mysqli_query($con, $consulta);  
			
			$i = 0;
			
			while($fila=mysqli_fetch_array($ejecutar)){			
				$idUsuario = $fila['idUsuario'];
				$Usuario = $fila['Usuario']; 
				$Contrasena = $fila['Contrasena'];
				
				$i++;	
			
		?>
		<tr align="center">
			<td><?php echo $idUsuario; ?></td>
			<td><?php echo $Usuario; ?></td>
			<td><?php echo $Contrasena; ?></td>
			<td><a href="loginLista.php?editar=<?php echo $idUsuario; ?>">Editar</a></td>
			<td><a href="loginLista.php?eliminar=<?php echo $idUsuario; ?>">Borrar</a></td>
		</tr>
		<?php } ?>
		
	 
	</table>
	<?php
		if(isset($_GET['editar'])){
		include("editar.php");
		}
	?> 
	<?php 
	if(isset($_GET['eliminar'])){
	
	$eliminar_idUsuario = $_GET['eliminar'];
	
	$eliminar = "DELETE FROM usuario WHERE idUsuario='$eliminar_idUsuario'";
	
	$ejecutar = mysqli_query($con,$eliminar); 
		
		if($ejecutar){
		
		echo "<script>alert('El usuario ha sido borrado!')</script>";
		echo "<script>window.open('loginLista.php','_self')</script>";
		}
	
	}
	
	?>
	<br/>	<br/>
	<br/>

    <input type="submit" value="Atras" onclick="atras()" />
        <script>
    function atras(){
        
        
      window.location="Crear_cuenta.html"; 
           
    }
    </script>
    
    
    
    </body>
</html>
