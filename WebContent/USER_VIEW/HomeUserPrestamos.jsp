<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prestamos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 

</head>
<body>

    <div class="d-flex vh-100" >
        
        <!-- Barra lateral -->
        <nav class="sidebar bg-info text-white p-3" style="width: 300px;">
            <h2 class="text-center fs-1" >Menú</h2>
            <ul class="nav flex-column fs-4 d-flex gap-4 mt-5">
                <li class="nav-item mb-2">
                    <a class="nav-link text-white" href="servletBanco?viewInformacionPersonal=1">Informacion Personal</a>
                </li>
                <li class="nav-item mb-2">
                    <a class="nav-link text-white" href="servletBanco?viewCuentas=1">Cuentas</a>
                </li>
                <li class="nav-item mb-2">
                    <a class="nav-link text-white" href="servletBanco?viewPrestamos=1">Prestamos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="servletBanco?viewTransferencias=1">Transferencias</a>
                </li>
            </ul>
              
              <form action="servletBanco" method="post">
              <button type="submit" class="btn btn-secondary mt-5" name="btnCerrar">Cerrar Sesion</button>            
            </form>
        </nav>

        <!-- Contenido -->
        <div class="container mt-5">
			<h2 class="text-center mb-4">Pago de Préstamo</h2>

			<div class="card">
				<div class="card-header">Detalle del Préstamo</div>
				<div class="card-body">
					<p>
						<strong>Préstamo N°:</strong> ${prestamo.numeroPrestamo}
					</p>
					<p>
						<strong>Cliente:</strong> ${cliente.nombre} ${cliente.apellido}
					</p>
					<p>
						<strong>Saldo pendiente:</strong> $${prestamo.saldoPendiente}
					</p>
				</div>
			</div>

			<div class="card mt-4">
				<div class="card-header">Cuotas Pendientes</div>
				<div class="card-body">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Cuota N°</th>
								<th>Monto</th>
								<th>Fecha de Pago</th>
								<th>Seleccionar</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cuota" items="${cuotasPendientes}">
								<tr>
									<td>${cuota.numeroCuota}</td>
									<td>$${cuota.monto}</td>
									<td>${cuota.fechaPago == null ? "Pendiente" : cuota.fechaPago}</td>
									<td><input type="checkbox" name="cuotaSeleccionada"
										value="${cuota.numeroCuota}"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<form action="servletBanco" method="post" class="mt-4">
				<div class="form-group">
					<label for="cuentaOrigen">Cuenta de Origen</label> 
					<select
						class="form-control" id="cuentaOrigen" name="cuentaOrigen">
						<c:forEach var="cuenta" items="${cuentasCliente}">
							<option value="${cuenta.numeroCuenta}">${cuenta.tipoCuenta}
								- ${cuenta.numeroCuenta} (Saldo: $${cuenta.saldo})</option>
						</c:forEach>
					</select>
				</div>
				<div class="d-flex justify-content-between">
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-secondary" name="btnNuevoPrestamo" id="btnNuevoPrestamo">Nuevo Prestamo</button>
					</div>
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-primary">Abonar Cuota</button>
					</div>
				</div>
			</form>
		</div>

		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>