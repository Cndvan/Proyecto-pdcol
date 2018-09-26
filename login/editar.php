	<?php 
    
if(isset($_GET['editar'])){
    $editar_idUsuario= $_GET['editar'];
    
    $consulta = "SELECT * FROM usuario WHERE idUsuario'$editar_idUsuario'";
    $ejecutar = mysqli_query($con, $consulta);
    
    #$fila=mysqli_fetch_array($ejecutar);
    
    $Usuario = $fila['Usuario'];
     $Contrasena = $fila['Contrasena'];
    
}
?>

<form method="post" action="">
     <h2>Actualizar Datos</h2>
<input type="text" name="Usuario" value="<?php echo $Usuario;?>"/><br/>
<input type="text" name="Contrasena" value="<?php echo $Contrasena;?>"/><br/>
<input type="submit" name="actualizar" value="ACTUALIZAR DATOS"/>

</form>

<?php 
	if(isset($_POST['actualizar'])){
	
		$actualizar_Usuario = $_POST['Usuario'];
		$actualizar_Contrasena = $_POST['Contrasena'];
		
		
		$actualizar = "UPDATE usuario SET Usuario='$actualizar_Usuario', Contrasena='$actualizar_Contrasena' WHERE idUsuario='$editar_idUsuario'";
		
		$ejecutar = mysqli_query($con, $actualizar);
	
		if($ejecutar){
		
		echo "<script>alert('Datos actualizados!')</script>";
		echo "<script>window.open('loginLista.php','_self')</script>";
		}
	}
	
	?> 
    