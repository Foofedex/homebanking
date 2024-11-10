package dominio;

import java.sql.Date;

public class Prestamos {

	public int Id_prestamo;
	public int Numero_cuenta;
	public Date Fecha_alta;
	public double Importe_neto;
	public Plazo_Cuotas cantidad_cuotas;
	public boolean Estado_autorizacion;
	public int Id_movimiento;
	
	public Prestamos() {
		super();
		
	}
	
	public Prestamos(int id_prestamo, int numero_cuenta, Date fecha_alta, double importe_neto,
			Plazo_Cuotas cantidad_cuotas, boolean estado_autorizacion, int id_movimiento) {
		super();
		Id_prestamo = id_prestamo;
		Numero_cuenta = numero_cuenta;
		Fecha_alta = fecha_alta;
		Importe_neto = importe_neto;
		this.cantidad_cuotas = cantidad_cuotas;
		Estado_autorizacion = estado_autorizacion;
		Id_movimiento = id_movimiento;
	}

	public int getId_prestamo() {
		return Id_prestamo;
	}

	public void setId_prestamo(int id_prestamo) {
		Id_prestamo = id_prestamo;
	}

	public int getNumero_cuenta() {
		return Numero_cuenta;
	}

	public void setNumero_cuenta(int numero_cuenta) {
		Numero_cuenta = numero_cuenta;
	}

	public Date getFecha_alta() {
		return Fecha_alta;
	}

	public void setFecha_alta(Date fecha_alta) {
		Fecha_alta = fecha_alta;
	}

	public double getImporte_neto() {
		return Importe_neto;
	}

	public void setImporte_neto(double importe_neto) {
		Importe_neto = importe_neto;
	}

	

	public boolean isEstado_autorizacion() {
		return Estado_autorizacion;
	}

	public void setEstado_autorizacion(boolean estado_autorizacion) {
		Estado_autorizacion = estado_autorizacion;
	}

	public int getId_movimiento() {
		return Id_movimiento;
	}

	public void setId_movimiento(int id_movimiento) {
		Id_movimiento = id_movimiento;
	}
	
	
	
}
