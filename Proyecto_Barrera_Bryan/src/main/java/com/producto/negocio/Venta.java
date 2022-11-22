package com.producto.negocio;

import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.producto.datos.Conexion;

public class Venta {
	private int id;
	private String nombre;
	private double precio;
	private InputStream foto;


	public Venta() {

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

	public String mostrarProd()
	{
		String combo1="<select name=cmbProducto>";
		String sql="SELECT * FROM tb_producto";
		ResultSet rs=null;
		Conexion con=new Conexion();
		try
		{
			rs=con.Consulta(sql);
			while(rs.next())
			{
				combo1+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
			}
			combo1+="</select>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return combo1;
	}

}
