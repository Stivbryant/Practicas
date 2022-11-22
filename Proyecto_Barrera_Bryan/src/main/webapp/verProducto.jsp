<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Laptops y Computadoras de Mesa | Bryant Pc</title>
<link href="css/estiloProducto.css" rel="stylesheet" type="text/css">

</head>

<body>
<main>
<a href="registro.jsp"a>	
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
		     <a href="verProducto.jsp">Ver Productos</a>
		     <a href="categoria.jsp">Buscar Por Categoria</a>
		     <a href="registro_producto.jsp">Registrar Productos</a>
		     <a href="sesion.jsp">Iniciar Sesion</a>
		     <a href="venta.jsp">Carrito Venta</a>
	   </nav>
<br></br>
<div class="agrupar">

		<%
	Producto producto=new Producto();
	out.print(producto.consultarTodo());
	%>	
		</div>  
				<div class="title text-center">
					<h1>Computadoras y accesorios</h1>
					<p style ="color:black; font-family:GungSuh; font-size:25px;">
					Las mejores computadoras para tu estudio y juegos.
					</p>
</div>
<table border="2">
	
		<tr>
		<th> Marcas.</th>
		<th> Laptop Acer</th>
		<th> Laptop Hp</th>
		<th> Laptop Acer Chromebook</th>
		<th> Computadora de Mesa Intel</th>
		<th> Computadora de Mesa Intel</th>
		<th> Tarjeta de video</th>
		</tr>
		
		<tr>
		<th> Imagen.</th>
		<th> <img src="Imagenes/Pc_Acer.png" width="250" height="250"/></th>
		<th> <img src="Imagenes/Pc_Hp.png" width="250" height="250"/></th>
		<th> <img src="Imagenes/Acer Chromebook.jpg" width="250" height="250"/></th>
		<th> <img src="Imagenes/compu_mesa.webp" width="250" height="250"/></th>
		<th> <img src="Imagenes/compu_mesa2.webp" width="250" height="250"/></th>
		<th> <img src="Imagenes/tarjeta6.png" width="250" height="250"/></th>
		</tr>
		
		<tr>
		<th> Descripcion.</th>
		<th> Peso con empaque: 2.475 kg<br>
			 Producto con devolución<br>
			 Producto de: Amazon OC</th>
		<th> Peso con empaque: 1.626 kg <br>
			 Producto con devolución <br>
			 Producto de: Amazon</th>
		<th> Series= CB512-C1KJ<br>
		     Screen Size= 12 Inches<br>
			 Color=	Black<br>
			 CPU Model=	Celeron N4020<br>
			 Ram Memory Installed Size= 4 GB<br>
			 Operating System= Chrome OS<br>
			 Card Description= Integrated<br>
			 CPU Speed=	2.8 GHz<br>
			 Hard Disk Description=	SSD</th>
		<th> Modelo= 1165G7<br>
			 Procesador= Intel Core i7<br>
			 Disco duro= 1 TB</th>
		<th> Modelo= 10700<br>
			 Procesador= Intel Core i7<br>
			 Disco duro= 1 TB<br>
		     Otras características<br>
			 RAM: 8 GB<br>
			 Sistema operativo: Windows 10<br>
			 Es gamer: Sí</th>
		<th> Zotac RTX 3060TI Twin Edge 8GB<br>
		  	 (ZT-A30610E-10MLHR</th>
		</tr>
		
		<tr>
		<th> Precio.</th>
		<th> $ 1415.88</th>
		<th> $ 364.79</th>
		<th> $ 215.86</th>
		<th> $ 1.059</th>
		<th> $ 1.399</th>
		<th> $ 1139.99</th>
		</tr>
</table>
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