package dominio;

public class Localidad {
	
	public int id_localidad;
	public String Nombre;
	public Provincias provincia;
	
	public Localidad() {
		super();
		
			}
	
	public Localidad(int id_localidad, String nombre, Provincias provincia) {
		super();
		this.id_localidad = id_localidad;
		Nombre = nombre;
		this.provincia = provincia;
	}
	

	public int getId_localidad() {
		return id_localidad;
	}

	public void setId_localidad(int id_localidad) {
		this.id_localidad = id_localidad;
	}

	public String getNombre() {
		return Nombre;
	}

	public void setNombre(String nombre) {
		Nombre = nombre;
	}

	
	

}
