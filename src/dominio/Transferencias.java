package dominio;

public class Transferencias {
	
	public int Id_transferencia;
	public int Cbu_origen;
	public int Cbu_destino;
	public Movimientos movimiento;
	
	
	
	public Transferencias() {
		super();
	
	}
	public Transferencias(int id_transferencia, int cbu_origen, int cbu_destino, Movimientos movimiento) {
		super();
		Id_transferencia = id_transferencia;
		Cbu_origen = cbu_origen;
		Cbu_destino = cbu_destino;
		this.movimiento = movimiento;
	}
	
	public int getId_transferencia() {
		return Id_transferencia;
	}
	public void setId_transferencia(int id_transferencia) {
		Id_transferencia = id_transferencia;
	}
	public int getCbu_origen() {
		return Cbu_origen;
	}
	public void setCbu_origen(int cbu_origen) {
		Cbu_origen = cbu_origen;
	}
	public int getCbu_destino() {
		return Cbu_destino;
	}
	public void setCbu_destino(int cbu_destino) {
		Cbu_destino = cbu_destino;
	}
	
	

}
