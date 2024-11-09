<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Solicitudes de prestamos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 

<style>
   			 #txtNombre {
       			 font-size: 24px;
    }
			</style>
</head>
<body>
	<div class="d-flex vh-100">
<!-- Barra lateral -->
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
<!-- Administrador -->
			<header class="d-flex justify-content-center w-100 mt-5 h2">

			<label for="txtNombre" class="form-label">Administrador:</label> <input
				type="text" class="form-control w-50" id="txtNombre"
				name="txtNombre" disabled> <script>
					document.getElementById("txtNombre").value = "Franco Colapinto";
				</script>
			</header>

			<section> 
<!-- Ventana: Transferencia -->
			<div style="width: 100%; margin: 10px;"
				class="py-4">

				<h2 class="text-center">Solicitudes de prestamos</h2>

				<form class="row g-3" action="servletBanco" method="post"
					onsubmit="return validarFormulario();">

					<!-- Tabla con solicitudes -->
					<table class="table">
						<thead>
							<tr class="table-primary text-center">
								<th scope="col">FECHA</th>
								<th scope="col">Cliente</th>
								<th scope="col">N° Cuenta</th>
								<th scope="col">Prestamos actuales</th>
								<th scope="col">Importe NETO</th>
								<th scope="col">Importe BRUTO</th>
								<th scope="col" >Cantidad de cuotas</th>
								<th scope="col">Autorizacion</th>
								<th scope="col">Estado</th>
							</tr>
						</thead>
						<tbody>
							<tr class="text-center">
								<td>12/12/2024</td>
								<td>Don Pepito</td>
								<td>12531315</td>
								<td>0</td>
								<td>$15.000</td>
								<td>$17.589</td>
								<td>12</td>
								<td class="d-flex justify-content-center align-items-center gap-2">
									<button type="submit" class="btn btn-primary" name="btnAceptar">Aceptar</button>
									<button type="submit" class="btn btn-primary" name="btnAceptar">Rechazar</button>
								</td>
								<td>
									<label class="form-label">Aceptado</label>
								</td>
							</tr>
							<tr class="text-center">
								<td>18/02/2025</td>
								<td>Don Jose</td>
								<td>1256587</td>
								<td>3</td>
								<td>$100.000</td>
								<td>$180.589</td>
								<td>6</td>
								<td class="d-flex justify-content-center align-items-center gap-2">
									<button type="submit" class="btn btn-primary" name="btnAceptar">Aceptar</button>
									<button type="submit" class="btn btn-primary" name="btnAceptar">Rechazar</button>
								</td>
								<td>
									<label class="form-label">Rechazado</label>
								</td>
							</tr>
							<tr class="text-center">
								<td>25/06/2024</td>
								<td>Juan Carlos</td>
								<td>18889987</td>
								<td>1</td>
								<td>$20.000</td>
								<td>$23.987</td>
								<td>9</td>
								<td cclass="d-flex justify-content-center align-items-center gap-2">
									<button type="submit" class="btn btn-primary" name="btnAceptar">Aceptar</button>
									<button type="submit" class="btn btn-primary" name="btnAceptar">Rechazar</button>
								</td>
								<td>
									<label class="form-label">-</label>
								</td>
							</tr>
						</tbody>
					</table>

				</form>
			</div>
			</section>
		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>