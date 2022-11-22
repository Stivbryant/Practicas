package com.producto.negocio;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.producto.datos.Conexion;

public class Producto {

	private int id;
	private String nombre;
	private double precio;
	private InputStream foto;
	private int cantidad_pr;
	private int categoria_pr;


	public Producto() {

	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public InputStream getFoto() {
		return foto;
	}

	public void setFoto(InputStream foto) {
		this.foto = foto;
	}

	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Producto</th><th>Precio</th><th>Cantidad</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}


	public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT descripcion_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	
	public String editarProductoCategoria(int cat)
	{
		String sentencia="SELECT id_pr,id_cat,descripcion_pr, precio_pr ,cantidad FROM public.tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3><th>ID</th><th>CATEGORIA</th><th>DESCRIPCION</th><th>PRECIO</th><th>CANTIDAD</th>";
		

		
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getInt(1)+"</td>"
						+ "<td>"+rs.getInt(2)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getDouble(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "<td> <a href= formulario.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align:center\">Modificar</pre></a></td>"
						+ "<td> <a href= eliminar.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"textalign: center\">Eliminar</pre></a></td>"
						+ "</tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	
	
	public String ingresarProducto(int id, int cat,String nombre, int cantidad, double precio)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_producto (id_pr,id_cat,"
				+ "descripcion_pr,precio_pr,cantidad) "
				+ "VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setDouble(4, precio);
			pr.setInt(5, cantidad);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
// CONSULTAR EDITAR
	public void ConsultarEditarProducto(int cod) {
		Conexion obj = new Conexion();
		ResultSet rs = null;
		
		String sql = "SELECT id_pr,id_cat,descripcion_pr,precio_pr,cantidad FROM tb_producto where id_pr = '" + cod + "'";
		
		try {
			rs = obj.Consulta(sql);
			while(rs.next()) {
				setId_pr(rs.getInt(1));
				setId_cat(rs.getInt(2));
				setDescripcion_pr(rs.getString(3));
				setPrecio_pr(rs.getFloat(4));
				setCantidad(rs.getInt(5));				
			}
		}catch (Exception e) {
		}
	}
	



private void setCantidad(int int1) {
		// TODO Auto-generated method stub
		
	}


private void setPrecio_pr(float float1) {
		// TODO Auto-generated method stub
		
	}


private void setDescripcion_pr(String string) {
		// TODO Auto-generated method stub
		
	}


private void setId_cat(int int1) {
	// TODO Auto-generated method stub
	
}


private void setId_pr(int int1) {
	// TODO Auto-generated method stub
	
}
//MODIFICAR PRODUCTO
public boolean ModificarProducto(Producto mp) {
	boolean agregado = false;
	Conexion obj = new Conexion();
	String sql = "UPDATE tb_producto SET descripcion_pr='"+ mp.getDescripcion_pr() + "', precio_pr = ' " + mp.getPrecio() + "',"
			+ "cantidad = '"+mp.getCantidad()+"' WHERE \"id_pr\"='"+ mp.getId() + "'";
	try {
		obj.Ejecutar(sql);
		agregado = true;
	}
	catch(Exception e) {
		agregado = false;
	}
	return agregado;
}


private String getCantidad() {
	// TODO Auto-generated method stub
	return null;
}


private String getDescripcion_pr() {
	// TODO Auto-generated method stub
	return null;
}

//ELIMINAR PRODUCTO
public boolean eliminarProducto(int cod) {
	boolean f = false;
	Conexion con = new Conexion();
	String sql = "delete from tb_producto where id_pr='"+ cod + "'";
	
	try {
		con.Ejecutar(sql);
		f = true;
		
	}catch (Exception e) {
		f = false;
	}
	return f;
}


public int getCantidad_pr() {
	return cantidad_pr;
}


public void setCantidad_pr(int cantidad_pr) {
	this.cantidad_pr = cantidad_pr;
}


public int getCategoria_pr() {
	return categoria_pr;
}


public void setCategoria_pr(int categoria_pr) {
	this.categoria_pr = categoria_pr;
}

}















