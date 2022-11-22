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
	   </nav>
	 </center>
	 
	 <%
	int cod =Integer.parseInt(request.getParameter("cod"));
	Producto mp = new Producto();
	mp.ConsultarEditarProducto(cod);

%>	
<form action="registro_producto.jsp" method="post">	 
	 <table border="0">
					<tr>
						<td>Codigo Producto:<td>
						<td><input type="text" name="editarcod" value="<%=cod%>"/> </td>
					</tr>

					<tr>
						<td>Categoria:<td>
						<td><output > <%=mp.getId()%></output></td>
					</tr>

					<tr>
						<td>Descripcion.<td>
						<td><input type = "text" name="editardesc" value="<%=mp.getDescripcion_pr()%>"/></td>
												
					</tr>

					<tr>
						<td>Precio.<td>
						<td><input type="text" name="editarprec"  value="<%= mp.getPrecio()%>"/></td>
						</td>
					</tr>

					<tr>
						<td>Cantidad.<td>
						<td><input type="text" name="editarcant" value="<%= mp.getCantidad_pr()%>"/></td>
						</td>
					</tr>
				</table>
	 <br />
	 <br /><input type="submit" name="Actualizar" />
	 </form>
	 
	 
<br></br>
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