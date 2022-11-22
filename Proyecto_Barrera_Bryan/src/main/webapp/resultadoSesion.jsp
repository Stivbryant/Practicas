<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro Usuario</title>
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
<center><div class="agrupar">

		<section>

		<%
	String nombre=request.getParameter("txtNombre");
	String cedula=request.getParameter("txtCedula");	
	String edad=request.getParameter("edad");
	String contraseña=request.getParameter("txtContraseña");
	String estadoCivil=request.getParameter("cmbECivil");
	String residencia=request.getParameter("rdResidencia");
	String foto=request.getParameter("fileFoto");
	String fechas=request.getParameter("fecha");
	String color=request.getParameter("colorFavorito");
	String email=request.getParameter("txtemail");


	
	
	
	Usuario usuario=new Usuario();
	out.print(usuario.ingresarUsuario(nombre,cedula,edad,estadoCivil,color,contraseña,residencia,email));
	
	
%>
	<br><font color=<%=request.getParameter("colorFavorito")%>> Este es tu color favorito </font>
	
	<%
	out.print(usuario.consultarUsuarios());
	%>
		</section>
		
			</div></center>
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