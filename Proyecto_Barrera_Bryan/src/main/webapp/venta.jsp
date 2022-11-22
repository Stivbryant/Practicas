<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "com.producto.negocio.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buscar Categoria</title>
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
	   <p>Registro de venta</p>
	 <form action ="pago_tarjeta.jsp" method="post"> 
	   <table border="0">
	 <tr>
						<td>Cliente.<td>
<%
						Usuario usuario=new Usuario();
						String combo = usuario.mostrarUsuario();
						out.print(combo);
						%>							</td>
					</tr>

					<tr>
						<td>Producto.<td>
						<%
						Venta venta=new Venta();
						String combo1 = venta.mostrarProd();
						out.print(combo);
						%>	
						</td>
					</tr>

					<tr>
						<td>Cantidad.<td>
						<input type="int" name="txtCant" required/>*
						</td>
					</tr>
					<tr>
						<td><input type="submit" /> <td>
						
					</tr>
	   
	   </table>
	   </form>
</body>
</html>