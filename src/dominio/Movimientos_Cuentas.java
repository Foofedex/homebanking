package dominio;

public class Movimientos_Cuentas {
	
	public int Cbu;
	public int Id_movimiento;
	
	public Movimientos_Cuentas() {
		super();
	
	}
	
	public Movimientos_Cuentas(int cbu, int id_movimiento) {
		super();
		Cbu = cbu;
		Id_movimiento = id_movimiento;
	}
	
	public int getCbu() {
		return Cbu;
	}
	public void setCbu(int cbu) {
		Cbu = cbu;
	}
	public int getId_movimiento() {
		return Id_movimiento;
	}
	public void setId_movimiento(int id_movimiento) {
		Id_movimiento = id_movimiento;
	}
	


}
