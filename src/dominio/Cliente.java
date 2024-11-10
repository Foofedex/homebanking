package dominio;

import java.sql.Date;

public class Cliente {
	
	public int Dni;
	public int Cuil;
	public String Nombre;
	public String Apellido;
	public char Sexo;
	public Nacionalidad nacionalidad;
	public Date Fecha_Nacimiento;
	public String Direccion;
	public Localidad localalidad;
	public String Mail;
	public int Telefono;
	public Boolean estado;
	
	public Cliente() {
		super();
	}
	
	public Cliente(int dni, int cuil, String nombre, String apellido, char sexo, Nacionalidad nacionalidad,
			Date fecha_Nacimiento, String direccion, Localidad localalidad, String mail, int telefono, Boolean estado) {
		super();
		Dni = dni;
		Cuil = cuil;
		Nombre = nombre;
		Apellido = apellido;
		Sexo = sexo;
		this.nacionalidad = nacionalidad;
		Fecha_Nacimiento = fecha_Nacimiento;
		Direccion = direccion;
		this.localalidad = localalidad;
		Mail = mail;
		Telefono = telefono;
		this.estado = estado;
	}

	public int getDni() {
		return Dni;
	}

	public void setDni(int dni) {
		Dni = dni;
	}

	public int getCuil() {
		return Cuil;
	}

	public void setCuil(int cuil) {
		Cuil = cuil;
	}

	public String getNombre() {
		return Nombre;
	}

	public void setNombre(String nombre) {
		Nombre = nombre;
	}

	public String getApellido() {
		return Apellido;
	}

	public void setApellido(String apellido) {
		Apellido = apellido;
	}

	public char getSexo() {
		return Sexo;
	}

	public void setSexo(char sexo) {
		Sexo = sexo;
	}

	public Nacionalidad getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(Nacionalidad nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public Date getFecha_Nacimiento() {
		return Fecha_Nacimiento;
	}

	public void setFecha_Nacimiento(Date fecha_Nacimiento) {
		Fecha_Nacimiento = fecha_Nacimiento;
	}

	public String getDireccion() {
		return Direccion;
	}

	public void setDireccion(String direccion) {
		Direccion = direccion;
	}

	
	public String getMail() {
		return Mail;
	}

	public void setMail(String mail) {
		Mail = mail;
	}

	public int getTelefono() {
		return Telefono;
	}

	public void setTelefono(int telefono) {
		Telefono = telefono;
	}

	public Boolean getEstado() {
		return estado;
	}

	public void setEstado(Boolean estado) {
		this.estado = estado;
	}
	
	
	
	

}
