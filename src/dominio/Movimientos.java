package dominio;

import java.sql.Date;

public class Movimientos {

	public int Id_movimiento;
	public Date Fecha;
	public String Detalle;
	public double Importe;
	public Tipo_movimiento Movimiento;
	
	public Movimientos() {
		super();
		
	}
	
	
	public Movimientos(int id_movimiento, Date fecha, String detalle, double importe, Tipo_movimiento movimiento) {
		super();
		Id_movimiento = id_movimiento;
		Fecha = fecha;
		Detalle = detalle;
		Importe = importe;
		Movimiento = movimiento;
	}


	public int getId_movimiento() {
		return Id_movimiento;
	}


	public void setId_movimiento(int id_movimiento) {
		Id_movimiento = id_movimiento;
	}


	public Date getFecha() {
		return Fecha;
	}


	public void setFecha(Date fecha) {
		Fecha = fecha;
	}


	public String getDetalle() {
		return Detalle;
	}


	public void setDetalle(String detalle) {
		Detalle = detalle;
	}


	public double getImporte() {
		return Importe;
	}


	public void setImporte(double importe) {
		Importe = importe;
	}
	
	
	
}
