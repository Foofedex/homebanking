package dominio;

public class Tipo_Cuenta {
	
	public int Id_cuenta;
	public String Nombre_cuenta;
	
	public Tipo_Cuenta() {
		super();
	}
	
	public Tipo_Cuenta(int id_cuenta, String nombre_cuenta) {
		super();
		Id_cuenta = id_cuenta;
		Nombre_cuenta = nombre_cuenta;
	}
	public int getId_cuenta() {
		return Id_cuenta;
	}
	public void setId_cuenta(int id_cuenta) {
		Id_cuenta = id_cuenta;
	}
	public String getNombre_cuenta() {
		return Nombre_cuenta;
	}
	public void setNombre_cuenta(String nombre_cuenta) {
		Nombre_cuenta = nombre_cuenta;
	}
	
	

}
