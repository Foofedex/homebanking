<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reportes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
#txtNombre {
	font-size: 24px;
}

.sidebar {
	background-color: #343a40;
}

.card {
	margin: 20px 0;
	border: none;
}

.card-body {
	border: 2px solid black;
	border-radius: 3px;
}
</style>
</head>
<body>
	<div class="d-flex vh-100">

		<ul class="bg-info d-flex flex-column fs-3 gap-5 p-3 sidebar text-white" style="width: 300px;">
        <h2 class="text-center fs-1">Menú Admin</h2>
         <li class="nav-item">
            <a class="nav-link" href="servletBanco?viewABMLClientes=1">ABML Clientes</a>
        </li>
        <li class="nav-item ">
            <a class="nav-link" href="servletBanco?viewABLUsuarios=1" aria-expanded="false">ABL Usuarios</a>
        </li>
        <li class="nav-item ">
            <a class="nav-link" href="servletBanco?viewABMLCuentas=1"  aria-expanded="false">ABML Cuentas</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="servletBanco?viewReportes=1">Reportes</a>
        </li>
         <li class="nav-item">
            <a class="nav-link" href="servletBanco?viewPrestamosADMIN=1">Solicitudes de Prestamos</a>
        </li>
    <form action="servletBanco" method="post">
    <button type="submit" class="btn btn-secondary mt-5" name="btnCerrar" id="btnCerrar">Cerrar Sesion</button>    
    </form>
    </ul>

		<div class="main-content w-100">

			<div class="content flex-grow-1 p-4">
				<h1>Reportes</h1>
				<form>
					<div class="form-row mb-3">
					<div class="col">
							
						</div>
						<div class="col-4">
							<label for="startDate">Fecha de Inicio</label> <input type="date"
								class="form-control" id="startDate" required>
						</div>
						<div class="col-4">
							<label for="endDate">Fecha de Fin</label> <input type="date"
								class="form-control" id="endDate" required>
						</div>
					</div>
					<button type="submit" class="btn btn-primary">Generar
						Reporte</button>
				</form>

				<div class="mt-4">
					<h3>Resultados del Reporte</h3>
					<div class="row">



						<div class="card col-4">

							<div class="card-body ">
								<h5 class="card-title">Cantidad de Clientes</h5>
								
								<p class="card-text">
									Número de clientes Activos: <strong>55</strong>
								</p>
								<p class="card-text">
									Número de clientes No Activos: <strong>55</strong>
								</p>
							</div>
						</div>

						<!-- Cuadro 2: Clientes Deudores -->
						<div class="card col-4">
							<div class="card-body ">
								<h5 class="card-title">Clientes Deudores</h5>
								<p class="card-text">
									Clientes con deuda: <strong>10</strong> 
								</p>
								<p class="card-text">
									Dinero total de deuda: <strong>1000</strong> 
								</p>
							</div>
						</div>

						<!-- Cuadro 3: Clientes con Tarjetas de Crédito -->
						<div class="card col-4">
							<div class="card-body ">
								<h5 class="card-title">Detalle Cuentas Corriente</h5>
								<p class="card-text">
									Cant cuenta corriente: <strong>2</strong>
								</p>
								<p class="card-text">
									Capital total: <strong>500000</strong>
								</p>
							</div>
						</div>

						<!-- Cuadro 4: Clientes con Préstamos -->
						<div class="card col-4">
							<div class="card-body ">
								<h5 class="card-title">Detalle Caja de Ahorro</h5>
								<p class="card-text">
									Cantidad de caja de ahorros: <strong>6</strong>
								</p>
								<p class="card-text">
									Capital total: <strong>500000</strong>
								</p>
							</div>
						</div>

						<!-- Cuadro 5: Clientes Nuevos -->
						<div class="card col-4">
							<div class="card-body ">
								<h5 class="card-title">Capital Otorgado en Prestamo</h5>
								<p class="card-text">
									Cantidad Total Otorgados: <strong>600</strong>
								</p>
								<p class="card-text">
									Capital total: <strong>500000</strong>
								</p>
							</div>
						</div>

						<!-- Cuadro 6: Clientes Recurrentes -->
						<div class="card col-4">
							<div class="card-body ">
								<h5 class="card-title">Trasferencias</h5>
								<p class="card-text">
									Cantidad de Transferencias: <strong>10</strong> 
								</p>
								<p class="card-text">
									Promedio Montos Transferidos: <strong>10</strong> 
								</p>
								
							</div>
						</div>
					</div>
					
				</div>
			</div>




			<table class="table">

			</table>
		</div>
	</div>
</body>
</html>