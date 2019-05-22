<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<title>Bienvenido a CityBus</title>
<link rel="stylesheet" href="css/CSS.css" />
</head>

<body class="cuerpo">
		<div>
			
			<nav> 
				<ul class="nav">
					<li><a href="form_alta_usuario.php">Registro</a></li>
					<li><a href="Login.php">Conéctate</a></li>
					<li><a href="">Servicios</a>
						<ul>
							<li class="borde3"><a href="#">Compra</a>
								<ul>
									<li class="borde2"><a href="compra_billete.php">Comprar billete</a></li>
									<li class="borde2"><a href="anula_billete.php">Anular billete</a></li>
								</ul>
							</li>
							<li class="borde3"><a href="#">Infórmanos</a>
								<ul>
									<li class="borde2"><a href="atencion_cliente.php">Atención al cliente</a></li>
									<li class="borde2"><a href="contacto.php">¿En qué podemos mejorar? Contáctenos</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="">Sobre nosotros</a>
						<ul class="alineo">
							<li class="borde"><a href="contacto.php"><span class="icon-up-dir"></span>¿Quiénes somos?</a></li>
							<li class="borde"><a href="sobre_nosotros.php">¿A qué nos dedicamos?</a></li>
						</ul>
					</li>
					<li><a href="contacto.php">Contacto</a></li>
				</ul>
			</nav>
		</div>
		
		<img class="pos" src="imagenes/logodef.jpg" alt="Logo CityBus" title="CityBus"/>
		<?php include_once("pie.php")?>
</body>
	
	
	
	
</html>