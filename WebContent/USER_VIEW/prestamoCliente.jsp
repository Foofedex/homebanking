<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Solicitud de Préstamo</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 

</head>
<body>
	<div class="d-flex vh-100" >


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
	
		
		<div style="width: 100%; max-width: 800px; margin: 0 auto;" class="py-4">
			<h2 class="text-center">Solicitud de Préstamo</h2>
			<form action="ProcesarPrestamo" method="post">
				
				<!-- Monto del Préstamo -->
				<div class="form-group mt-2">
					<label for="monto">Monto del Préstamo</label> <input type="number"
						class="form-control" id="monto" name="monto"
						placeholder="Ingrese el monto del préstamo" required>
				</div>
	
				<!-- Cantidad de Cuotas -->
				<div class="form-group mt-2">
					<label for="cuotas">Cantidad de Cuotas</label> <select
						class="form-control" id="cuotas" name="cuotas" required>
						<option value="">Seleccione la cantidad de cuotas</option>
						<option value="6">6 cuotas</option>
						<option value="12">12 cuotas</option>
						<option value="24">24 cuotas</option>
						<option value="36">36 cuotas</option>
					</select>
				</div>
	
				<!-- Cuenta de Depósito -->
				<div class="form-group mt-2">
					<label for="cuenta">Cuenta de Depósito</label> <select
						class="form-control" id="cuenta" name="cuenta" required>
						<option value="">Seleccione la cuenta</option>
						<option value="cuenta1">Cuenta N°458</option>
						<option value="cuenta1">Cuenta N°563</option>
						<option value="cuenta1">Cuenta N°125</option>
					</select>
				</div>
	
				<!-- Botón de Envío -->
				<button type="submit" class="btn btn-primary btn-block">Solicitar
					Préstamo</button>
			</form>
		</div>
	</div>

	<!-- Bootstrap JS y dependencias -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
