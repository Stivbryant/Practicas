<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro Producto</title>
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
	 </center>

<form action="resultado_producto.jsp" method="post">
	<div class="agrupar">
		<section>

		<h1>Registrar Productos</h1>

				<table border="0">
					<tr>
						<td>Id.<td>
						<input type="number" name="txtNumero" maxlength="10" "required />*
					</tr>

					<tr>
						<td>Categoria.<td>
						<%
						Categoria categoria = new Categoria();
						String combo = categoria.mostrarCategoria();
						out.print(combo);
						%></td>
					</tr>

					<tr>
						<td>Descripcion.<td>
						<input type="text" name="txtDescripcion" minlength="2" required/>*
						</td>
					</tr>

					<tr>
						<td>Precio.<td>
						<input type="int" name="txtPrecio" required/>*
						</td>
					</tr>

					<tr>
						<td>Cantidad.<td>
						<input type="int" name="txtCant" required/>*
						</td>
					</tr>
	
	
					<tr>
						<td>Foto.<td>
						<input type="file" name="fileFoto" required/>*
						</td>
					</tr>
					
					<tr>
						<td><input type="submit" /> <td>
						<input type="reset" />
					</tr>
				</table>
			</form>
		</section>

	</div>
		
	<div class="agrupar">
	<p style ="color: black; font-family:GungSuh; font-size:35
	px;"> 
	 Modificar / Eliminar</p>
		<section>
			<%
	Producto producto=new Producto();
	out.print(producto.editarProductoCategoria(1));
	%>
		</section>
	
	 <div class="agrupar">

		<section>
<!--  

-->	
		
		</section>
		
			</div>
	</div>
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
</main>
</body>
</html>