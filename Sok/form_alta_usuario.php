<?php
	session_start();
	
	require_once("gestionBD.php");
	
	// Si no existen datos del formulario en la sesión, se crea una entrada con valores por defecto
	if (!isset($_SESSION["formulario"])) {
		$formulario['nif'] = "";
		$formulario['nombre'] = "";
		$formulario['apellidos'] = "";
		$formulario['tipoviaje'] = "PLACER";
		$formulario['email'] = "";
		$formulario['pass'] = "";
		$_SESSION["formulario"] = $formulario;
	}
	// Si ya existían valores, los cogemos para inicializar el formulario
	else
		$formulario = $_SESSION["formulario"];
			
	// Si hay errores de validación, hay que mostrarlos y marcar los campos (El estilo viene dado y ya se explicará)
	if (isset($_SESSION["errores"])){
		$errores = $_SESSION["errores"];
		unset($_SESSION["errores"]);
	}
		
	// Creamos una conexión con la BD
	$conexion = crearConexionBD();
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/CSS.css" />
  <title>CityBus | Registro</title>
</head>

<body>
	
	<?php
		include_once("cabecera.php");
	?>
	
	<?php 
		// Mostrar los erroes de validación (Si los hay)
		if (isset($errores) && count($errores)>0) { 
	    	echo "<div id=\"div_errores\" class=\"error\">";
			echo "<h4> Errores en el formulario:</h4>";
    		foreach($errores as $error){
    			echo $error;
			} 
    		echo "</div>";
  		}
	?>
	
	<form id="altaUsuario" method="get" action="validacion_alta_usuario.php">
		<!--novalidate-> 
		<!--onsubmit="return validateForm()"-->   
		<p><i>Los campos obligatorios están marcados con </i><em>*</em></p>
		<fieldset><legend>Datos personales</legend>
			<div></div><label for="nif">NIF<em>*</em></label>
			<input id="nif" name="nif" type="text" placeholder="12345678X" pattern="^[0-9]{8}[A-Z]" title="Ocho dígitos seguidos de una letra mayúscula" value="<?php echo $formulario['nif'];?>" required>
			</div>

			<div><label for="nombre">Nombre:<em>*</em></label>
			<input id="nombre" name="nombre" type="text" size="40" value="<?php echo $formulario['nombre'];?>" required/>
			</div>

			<div><label for="apellidos">Apellidos:</label>
			<input id="apellidos" name="apellidos" type="text" size="80" value="<?php echo $formulario['apellidos'];?>"/>
			</div>
			<div><label for="email">Email:<em>*</em></label>
			<input id="email" name="email"  type="email" placeholder="usuario@dominio.extension" value="<?php echo $formulario['email'];?>" required/><br>
			</div>
		</fieldset>

		<fieldset><legend>Datos de cuenta</legend>
			
			<div><label for="nick">Nickname:</label>
				<input id="nick" name="nick" type="text" size="40" value="<?php echo $formulario['email'];?>" />
			</div>
			<div><label for="pass">Password:<em>*</em></label>
                <input type="password" name="pass" id="pass" placeholder="Mínimo 8 caracteres entre letras y dígitos" required oninput="passwordValidation(); "/>
			</div>
			<div><label for="confirmpass">Confirmar Password: </label>
				<input type="password" name="confirmpass" id="confirmpass" placeholder="Confirmación de contraseña"  oninput="passwordConfirmation();" required/>
			</div>
		</fieldset>

		<fieldset>
			<legend>
				!Cúentanos¡
			</legend>

			<div><label for="tipoviaje">¿Sueles viejar por placer o por necesidad?:<em>*</em></label>
			<label>
				<input name="tipoviaje" type="radio" value="NECESIDAD" <?php if($formulario['tipoviaje']=='NECESIDAD'){ echo ' checked ';} ?>/>
				Necesidad</label>
			<label>
				<input name="tipoviaje" type="radio" value="PLACER" <?php if($formulario['tipoviaje']=='PLACER'){echo ' checked ';} ?>/>
				Placer</label>
			</div>

		</fieldset>

		<div><input type="submit" value="Enviar" /></div>
	</form>
	
	<?php
		include_once("pie.php");
		cerrarConexionBD($conexion);
	?>
	
	</body>
</html>