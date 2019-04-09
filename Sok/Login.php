<?php
	session_start();
  	
  	include_once("gestionBD.php");
 	include_once("gestionUsuarios.php");
	
	if (isset($_POST['submit'])){
		$email= $_POST['email'];
		$pass = $_POST['pass'];

		$conexion = crearConexionBD();
		$num_usuarios = consultarUsuario($conexion,$email,$pass);
		cerrarConexionBD($conexion);	
	
		if ($num_usuarios == 0)
			$login = "error";	
		else {
			$_SESSION['login'] = $email;
			Header("Location: inicio.php");
		}	
	}

?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/CSS.css" />
  <title>CityBus: Login</title>
</head>

<body>
	<?php
	include_once("cabecera.php");
?>

<main>
	<?php if (isset($login)) {
		echo "<div class=\"error\">";
		echo "Error en la contraseña o no existe el usuario.";
		echo "</div>";
	}	
	?>
	
	
	
	<form action="Login.php" method="post">
	<div align="center">
		<h1 align="center">¡Conéctate con nosotros!</h1>
		<hr />
		<div><label for="email">Email: </label><input type="text" name="email" id="email" /></div>
		<br/>
		<div><label for="pass">Contraseña: </label><input type="password" name="pass" id="pass" /></div>
		<br />
		<input class="boton" type="submit" name="submit" value="Conectar" />
	</form>
		
	<p>¿No estás registrado? <a class="enlace" href="form_alta_usuario.php">¡Registrate!</a></p>
	</div>
	<hr/>
</main>
<?php
     include_once("pie.php");
?>
	
	
</body>

</html>