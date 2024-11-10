package dominio;

import java.sql.Date;

public class Cuenta_Bancaria {
	
	public int Numero_Cuenta;
	public int Dni_cliente;
	public Date Fecha_alta;
	public Tipo_Cuenta Tipo_cuenta;
	public int Cbu;
	public Double Saldo;
	public boolean Estado;
	
	public Cuenta_Bancaria() {
		super();
		
	}
	
	public Cuenta_Bancaria(int numero_Cuenta, int dni_cliente, Date fecha_alta, Tipo_Cuenta tipo_cuenta, int cbu,
			Double saldo, boolean estado) {
		super();
		Numero_Cuenta = numero_Cuenta;
		Dni_cliente = dni_cliente;
		Fecha_alta = fecha_alta;
		Tipo_cuenta = tipo_cuenta;
		Cbu = cbu;
		Saldo = saldo;
		Estado = estado;
	}



	public int getNumero_Cuenta() {
		return Numero_Cuenta;
	}



	public void setNumero_Cuenta(int numero_Cuenta) {
		Numero_Cuenta = numero_Cuenta;
	}



	public int getDni_cliente() {
		return Dni_cliente;
	}



	public void setDni_cliente(int dni_cliente) {
		Dni_cliente = dni_cliente;
	}



	public Date getFecha_alta() {
		return Fecha_alta;
	}



	public void setFecha_alta(Date fecha_alta) {
		Fecha_alta = fecha_alta;
	}



	public int getCbu() {
		return Cbu;
	}



	public void setCbu(int cbu) {
		Cbu = cbu;
	}



	public Double getSaldo() {
		return Saldo;
	}



	public void setSaldo(Double saldo) {
		Saldo = saldo;
	}



	public boolean isEstado() {
		return Estado;
	}



	public void setEstado(boolean estado) {
		Estado = estado;
	}

	
	
}
