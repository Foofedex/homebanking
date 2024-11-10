package dominio;

public class Usuarios {
	
	public int Id_usuario;
	public String Nombre_Usuario;
	public int Dni_cliente;
	public String password;
	public char Tipo_Usuario;
	public int Cantidad_cuentas;
	public boolean estado;
	
	public Usuarios() {
		super();
		
	}
	public Usuarios(int id_usuario, String nombre_Usuario, int dni_cliente, String password, char tipo_Usuario,
			int cantidad_cuentas, boolean estado) {
		super();
		Id_usuario = id_usuario;
		Nombre_Usuario = nombre_Usuario;
		Dni_cliente = dni_cliente;
		this.password = password;
		Tipo_Usuario = tipo_Usuario;
		Cantidad_cuentas = cantidad_cuentas;
		this.estado = estado;
	}
	public int getId_usuario() {
		return Id_usuario;
	}
	public void setId_usuario(int id_usuario) {
		Id_usuario = id_usuario;
	}
	public String getNombre_Usuario() {
		return Nombre_Usuario;
	}
	public void setNombre_Usuario(String nombre_Usuario) {
		Nombre_Usuario = nombre_Usuario;
	}
	public int getDni_cliente() {
		return Dni_cliente;
	}
	public void setDni_cliente(int dni_cliente) {
		Dni_cliente = dni_cliente;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public char getTipo_Usuario() {
		return Tipo_Usuario;
	}
	public void setTipo_Usuario(char tipo_Usuario) {
		Tipo_Usuario = tipo_Usuario;
	}
	public int getCantidad_cuentas() {
		return Cantidad_cuentas;
	}
	public void setCantidad_cuentas(int cantidad_cuentas) {
		Cantidad_cuentas = cantidad_cuentas;
	}
	public boolean isEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
	}
	
	
	
	

}
