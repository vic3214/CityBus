<?php
  /*
     * #===========================================================#
     * #	Este fichero contiene las funciones de gestión
     * #	de usuarios de la capa de acceso a datos
     * #==========================================================#
     */

 function alta_usuario($conexion,$usuario) {
	try {
		$consulta = "CALL registracliente(:nif, :nombre, :apellidos,:email, :pass, :sistemapuntos)";
		$stmt=$conexion->prepare($consulta);
		$stmt->bindParam(':nif',$usuario["nif"]);
		$stmt->bindParam(':nombre',$usuario["nombre"]);
		$stmt->bindParam(':apellidos',$usuario["apellidos"]);
		$stmt->bindParam(':email',$usuario["email"]);
		$stmt->bindParam(':pass',$usuario["pass"]);
		$stmt->bindParam(':sistemapuntos',$usuario["sistemapuntos"]);
		
		$stmt->execute();
		
		return true;
	} catch(PDOException $e) {
		return false;
		// Si queremos visualizar la excepción durante la depuración: $e->getMessage();
    }
}
 

function consultarUsuario($conexion,$email,$pass) {
 	$consulta = "SELECT COUNT(*) AS TOTAL FROM CLIENTES WHERE CORREO=:email AND CONTRASEÑA=:pass";
	$stmt = $conexion->prepare($consulta);
	$stmt->bindParam(':email',$email);
	$stmt->bindParam(':pass',$pass);
	$stmt->execute();
	return $stmt->fetchColumn();
}

?>