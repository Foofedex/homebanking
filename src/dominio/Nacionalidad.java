package dominio;

public class Nacionalidad {
	
	public int Id_Nacionalidad;
	public String Pais;
	
	public Nacionalidad() {
		super();
	
	}
	
	public Nacionalidad(int id_Nacionalidad, String pais) {
		super();
		Id_Nacionalidad = id_Nacionalidad;
		Pais = pais;
	}
	
	public int getId_Nacionalidad() {
		return Id_Nacionalidad;
	}
	public void setId_Nacionalidad(int id_Nacionalidad) {
		Id_Nacionalidad = id_Nacionalidad;
	}
	public String getPais() {
		return Pais;
	}
	public void setPais(String pais) {
		Pais = pais;
	}
	

	
}
