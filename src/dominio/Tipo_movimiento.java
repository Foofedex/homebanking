package dominio;

public class Tipo_movimiento {
	
	public int Id_movimiento;
	public String Descripcion;
	
	
	public Tipo_movimiento() {
		super();
	
	}
	
	public Tipo_movimiento(int id_movimiento, String descripcion) {
		super();
		Id_movimiento = id_movimiento;
		Descripcion = descripcion;
	}
	
	public int getId_movimiento() {
		return Id_movimiento;
	}
	public void setId_movimiento(int id_movimiento) {
		Id_movimiento = id_movimiento;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	
	

}
