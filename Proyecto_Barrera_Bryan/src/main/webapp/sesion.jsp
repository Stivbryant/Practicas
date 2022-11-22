<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Iniciar Sesion</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">

</head>
<body>
<main>
		
<center>
    <header>
		<a href="index.jsp">
		
			<p style ="color:#6f2dbd; font-family:GungSuh; font-size:50px;"> 
			BRYANT PC 			
			</p>
		
	</header>
<center/>
	
      </p>
	       <center><img src="Imagenes/Pc.png" width="400" height="300"/></center>
      </p>	
      
       <nav>
             <a href="index.jsp">Inicio</a>
		     <a href="verProducto.jsp">Ver Productos</a>
		     <a href="categoria.jsp">Buscar Por Categoria</a>
		     <a href="registro_producto.jsp">Registrar Productos</a>
		     <a href="sesion.jsp">Iniciar Sesion</a>
		     <a href="venta.jsp">Carrito Venta</a>
	   </nav>
      <form action="resultadoSesion.jsp" method="post">	   


		<div class="agrupar">
			
<center>		<section>
<p style ="color: black; font-family:GungSuh; font-size:30px;"> 
Registro
</p>

				
				<table border="0">
				<tr>
				<td>Nombre.</td>
				<td><input type="text" name="txtNombre"  required/>*</td>
				</tr>
				<tr>
				<td>Cedula.</td>
				<td><input type="char" name="txtCedula"  minlength="10" required/>*</td>
				</tr>	
							
				<tr>
				<td>Contraseña.</td>
				<td><input type="password" name="txtContraseña"  minlength="5" required/>*</td>
				</tr>
				
				<tr>
				<td>Edad.</td>
				<td><input type="int" name="edad"  minlength="1" required/>*</td>
				</tr>				
				
				<tr>
				<td>Estado Civil.</td>
				<td><select name="cmbECivil">
					<option value="Soltero">Soltero</option>
					<option value="Casado">Casado</option>
					<option value="Divorciado">Divorciado</option>
					<option value="Viudo">Viudo</option>				
				</select></td>
				</tr>
				
				<tr>
				<td> Lugar de Residencia.</td>
				<td><input type="radio" name="rdResidencia" value="Sur" />Sur 
				<input type="radio" name="rdResidencia" value="Norte" />Norte
				<input type="radio" name="rdResidencia"value="Centro" />Centro
				</td>
				</tr>
				
				<tr>
				<td>Foto.</td>
				<td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" required/>*</td>
				</tr>
				
				<tr>
				<td>Fecha de Nacimiento</td>
				<td><input type="datetime-local" name="fecha" required/>*</td>
				</tr>
				
				<tr>
				<td>Color Favorito.
				<input type="color" name="colorFavorito" required/>*/</td>
				</tr>
				
					
				<tr>
				<td>Correo Electronico.</td>
				<td><input type="email" name="txtemail" required/>*</td>
				</tr>
										
				<tr>
				<td><br><input type="submit" value="REGISTRAR" "/><td/><br>
				<input type="reset" value="BORRAR"/><br>
				</tr>
				</table>
			</form>


		</section></center>
		</div>

<br><br>
<footer >
	<ul>
		<li>
		<a href="https://www.facebook.com/profile.php?id=100004943611752">
		<img src="Imagenes/facebook.png" width="50" height="30"/>
		</a>
		</li>
		<li>
		<a href="https://www.instagram.com/stivenm_2001/"> 
		<img src="Imagenes/instagram.png" width="50" height="30"/>		
		</a>
		</li>
		<li>
		<a href=https://twitter.com/BryanMu05281680>
		<img src="Imagenes/twitter.png" width="50" height="30"/>		
		</a>
		</li>
	    </ul>
	    </footer>	

</body>
</html>


























