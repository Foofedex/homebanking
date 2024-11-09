<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transferencia</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 

</head>
<body>
	<div class="d-flex vh-100" >
	
		<nav class="sidebar bg-info text-white p-3" style="width: 300px;">
			<h2 class="text-center fs-1">Menú</h2>
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
		
		<!-- Ventana: Transferencia -->
		<div style="width: 100%; max-width: 800px; margin: 0 auto;" class="py-4">
		
			<h2 class="text-center">Transferencias</h2>
			
			<form class="row g-3" action="servletBanco" method="post" onsubmit="return validarFormulario();">

                <!-- CBU -->
                <div class="form-group">
                    <label for="cbu">CBU</label>
                    <input type="number" class="form-control" id="cbu" name="cbu"
                        placeholder="Ingrese el CBU destinatario" required>
                </div>

                <!-- Cuenta y Monto -->
                <div class="input-group">
                    <!-- Cuenta -->
                    <select class="form-select" aria-label="Cuenta de origen" id="cuentaOrigen" name="cuentaOrigen"
                        required>
                        <option selected value="">N° Cuenta</option>
                        <option value="1">Cuenta N°1</option>
                        <option value="2">Cuenta N°2</option>
                        <option value="3">Cuenta N°3</option>
                    </select>

                    <!-- Monto -->
                    <input type="text" class="form-control" id="monto" name="monto"
                        placeholder="Ingrese el monto de transferencia" required oninput="formatearNumeroTransferencia()">
                </div>

                <!-- Motivo -->
                <div class="form-group">
                    <label for="motivo">Motivo</label>
                    <input type="text" class="form-control" id="motivo" name="motivo" placeholder="Ingrese un motivo"
                        required>
                </div>

                <!-- Dinero en Cuenta (Input no editable) -->
                <div class="form-group">
                    <label for="dineroCuenta">Dinero en cuenta:</label>
                    <div class="input-group">
                        <div class="input-group-text">$</div>
                        <input type="text" id="dineroCuenta" name="dineroCuenta" class="form-control" readonly
                            value="10.000,00">
                    </div>
                </div>

                <!-- Botón de Envío -->
                <button type="submit" class="btn btn-primary btn-block">Enviar</button>

            </form>
		</div>
	</div>

	<!-- Bootstrap JS y dependencias -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<!-- Validación de Formulario -->
	<script>
    function formatearNumeroTransferencia() {
        const inputMonto = document.getElementById("monto");

        // Eliminar cualquier carácter que no sea un número o un punto decimal
        let valor = inputMonto.value.replace(/\D/g, '');

        // Convertir el valor a un número con decimales
        let numeroConDecimales = (parseFloat(valor) / 100).toFixed(2);

        // Formatear el número con separadores de miles y decimales con coma
        let valorFormateado = new Intl.NumberFormat('es-AR', {
            style: 'currency',
            currency: 'ARS',
            minimumFractionDigits: 2
        }).format(numeroConDecimales);

        // Asignar el valor formateado al campo de texto
        inputMonto.value = valorFormateado;
    }

    function validarFormulario() {
        // Obtener valores del formulario
        const cbu = document.getElementById("cbu").value;
        const monto = parseFloat(document.getElementById("monto").value.replace(/\./g, '').replace(',', '.').replace('$', ''));
        const cuentaOrigen = document.getElementById("cuentaOrigen").value;
        const dineroEnCuenta = parseFloat(document.getElementById("dineroCuenta").value.replace(/\./g, '').replace(',', '.').replace('$', ''));

        // Validar que el CBU tenga 22 dígitos
        if (cbu.length !== 22) {
            alert("El CBU debe tener exactamente 22 dígitos.");
            return false;
        }

        // Validar que se haya seleccionado una cuenta
        if (cuentaOrigen === "") {
            alert("Debe seleccionar una cuenta de origen.");
            return false;
        }

        // Validar que el monto sea mayor a cero
        if (monto <= 0) {
            alert("El monto de transferencia debe ser mayor a cero.");
            return false;
        }

        // Validar que el monto no sea mayor al dinero disponible en la cuenta
        if (monto > dineroEnCuenta) {
            alert("El monto de transferencia no puede ser mayor al saldo en cuenta.");
            return false;
        }

        // Si pasa todas las validaciones
        return true;
    }
    </script>
</body>
</html>