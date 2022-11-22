package com.producto.negocio;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.producto.datos.Conexion;

public class Tarjeta {
	private String name;
	private String monto;
	private String titular;
	private String tarjeta;
	private String fecha;
	private String cvv;
	public String respuestaTarjeta()
	{
		String sql="SELECT * FROM tb_tarjeta ORDER BY id_tarjeta";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>Cliente</th><th>Monto</th><th>Titular</th><th>Tarjeta</th><th>Fecha</th><th>CVV</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getString(1)+"</td>"
						+ "<td>"+rs.getString(2)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getString(4)+"</td>"
						+ "<td>"+rs.getString(5)+"</td>"
						+ "<td>"+rs.getString(6)+"</td>"
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitular() {
		return titular;
	}
	public void setTitular(String titular) {
		this.titular = titular;
	}
	public String getMonto() {
		return monto;
	}
	public void setMonto(String monto) {
		this.monto = monto;
	}
	public String getTarjeta() {
		return tarjeta;
	}
	public void setTarjeta(String tarjeta) {
		this.tarjeta = tarjeta;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
}
