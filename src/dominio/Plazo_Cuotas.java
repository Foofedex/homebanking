package dominio;

public class Plazo_Cuotas {
	
	public int Id_cuotas;
	public int Cantidad;
	public double Interes;
	
	
	public Plazo_Cuotas() {
		super();
		
	}
	public Plazo_Cuotas(int id_cuotas, int cantidad, double interes) {
		super();
		Id_cuotas = id_cuotas;
		Cantidad = cantidad;
		Interes = interes;
	}
	public int getId_cuotas() {
		return Id_cuotas;
	}
	public void setId_cuotas(int id_cuotas) {
		Id_cuotas = id_cuotas;
	}
	public int getCantidad() {
		return Cantidad;
	}
	public void setCantidad(int cantidad) {
		Cantidad = cantidad;
	}
	public double getInteres() {
		return Interes;
	}
	public void setInteres(double interes) {
		Interes = interes;
	}
	
	

	
}
