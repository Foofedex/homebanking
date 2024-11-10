package dominio;

import java.sql.Date;

public class Cuotas {
	
	public int Id_cuota;
	public int Id_Prestamo;
	public int Cbu;
	public double Monto;
	public Date Fecha_pago;
	public boolean Estado_pago;
	
	public Cuotas() {
		super();
		
	}
	public Cuotas(int id_cuota, int id_Prestamo, int cbu, double monto, Date fecha_pago, boolean estado_pago) {
		super();
		Id_cuota = id_cuota;
		Id_Prestamo = id_Prestamo;
		Cbu = cbu;
		Monto = monto;
		Fecha_pago = fecha_pago;
		Estado_pago = estado_pago;
	}
	public int getId_cuota() {
		return Id_cuota;
	}
	public void setId_cuota(int id_cuota) {
		Id_cuota = id_cuota;
	}
	public int getId_Prestamo() {
		return Id_Prestamo;
	}
	public void setId_Prestamo(int id_Prestamo) {
		Id_Prestamo = id_Prestamo;
	}
	public int getCbu() {
		return Cbu;
	}
	public void setCbu(int cbu) {
		Cbu = cbu;
	}
	public double getMonto() {
		return Monto;
	}
	public void setMonto(double monto) {
		Monto = monto;
	}
	public Date getFecha_pago() {
		return Fecha_pago;
	}
	public void setFecha_pago(Date fecha_pago) {
		Fecha_pago = fecha_pago;
	}
	public boolean isEstado_pago() {
		return Estado_pago;
	}
	public void setEstado_pago(boolean estado_pago) {
		Estado_pago = estado_pago;
	}
	
	
	
	

}
