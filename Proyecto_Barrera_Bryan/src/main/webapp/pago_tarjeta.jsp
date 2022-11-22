<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pago Tarjeta</title>
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
		</a>
	</header>
<center/>
	
      </p>
	       <center><img src="Imagenes/Pc.png" width="400" height="300"/></center>
      </p>	
      
       <nav>
             <a href="index.jsp">Inicio</a>
		     <a href="sesion.jsp">Iniciar Sesion</a>
		     <a href="venta.jsp">Carrito Venta</a>
	   </nav>
	   <p>Datos de Tarjeta</p>
	   <form action ="resultado_tarjeta.jsp" method="post"> 
	   <table border="0">
					 <tr>
						<td>Cliente.<td>
						<input type="text" name ="name"/>*	
						</td>
					</tr>

					 <tr>
						<td>Monto.<td>
						<input type="char" name ="monto"/>*	
						</td>
					</tr>

					<tr>
						<td>Titular.<td>
						<input type="text" name="titular" required/>*
						</td>
					</tr>

					<tr>
						<td>Tarjeta.<td>
						<input type="character" name="tarjeta"  maxlenght= "10" required/>*
						</td>
					</tr>
					
					<tr>
						<td>Fecha.<td>
						<input type="text" name="fecha"  required/>*
						</td>
					</tr>
					
					<tr>
						<td>CVV.<td>
						<input type="integer" name="cvv" maxlenght= "3" required/>*
						</td>
					</tr>
					<tr>
						<td><input type="submit" /> <td>
						
					</tr>
	   
	   </table>
	   </form>
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