<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado Producto</title>
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
	 <div class="agrupar">

		<section>

		<%
		
	String foto=request.getParameter("fileFoto");	
	int id=Integer.parseInt(request.getParameter("txtNumero"));
	int cat=Integer.parseInt(request.getParameter("cmbCategoria"));
	String desc=request.getParameter("txtDescripcion");
	int cant=Integer.parseInt(request.getParameter("txtCant"));
	Double precio=Double.parseDouble(request.getParameter("txtPrecio"));
	
	Producto producto=new Producto();
	out.print(producto.ingresarProducto(id,cat,desc,cant,precio));
	%>
		</section>
		
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

</body>
</html>