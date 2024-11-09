<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    #txtNombre {
        font-size: 24px;
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
        <header class="d-flex justify-content-center align-items-baseline w-100 mt-5 h2">
            <label for="txtNombre" class="form-label me-2  ">Administrador:  </label>
            <h2 id="txtNombre"> Juan</h2>	
            
            <script>
                document.getElementById("txtNombre").value = "Franco Colapinto";
            </script>
        </header>
	
<div class="mb-3 ms-5">
<label for="txtBusqueda" class="mb-3 ">Buscar por:</label>

<div class="form-group">
  <label for="txtBusqueda" class="form-label">Filtro</label>
  <select name="Filtro" id="txtBusqueda" class="form-select w-25 mb-2">
    <option value="Todos">Todos</option>
    <option value="User">User</option>
    <option value="DNI">DNI</option>
    <option value="Apellido">Apellido</option>
    <option value="Nombre">Nombre</option>
  </select>
</div>
    
    <input type="text" id="txtBusqueda" placeholder="Ingrese su busqueda" name="name" class="form-control w-25" required minlength="4" maxlength="8" size="10" />
</div>
<div class="mb-3 ms-5">
    <input type="button" id="btnBuscar" value="Buscar" class="btn btn-primary" />
</div>


<h1 class="mb-3 ms-5">LISTADOS DE USUARIOS</h1>	


        <table class="table">
            <thead>
                <tr class="table-primary">
                <th scope="col">USUARIO</th>
                    <th scope="col">DNI</th>
                    <th scope="col">APELLIDO</th>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">CUIL</th>
                    <th scope="col">NACIONALIDAD</th>
                    <th scope="col">Fecha de Nacimiento</th>
                    <th scope="col">Dirección</th>
                      <th scope="col">Estado</th>
                    <th scope="col">Acción</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <td>User1</td>
                    <td>33344351</td>
                    <td>MESSI</td>
                    <td>LIONEL</td>
                    <td>203334434514</td>
                    <td>ARGENTINO</td>
                    <td>12/01/1968</td>
                    <td>DEAN FUNES 375</td>
                    <td>ACTIVO</td>
                                      <td><button class="btn btn-primary btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Activar</button>
                        <button class="btn btn-danger btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Eliminar</button></td>
                </tr>
                <tr>
                <td>User2</td>
                    <td>32911988</td>
                    <td>ROCUZZO</td>
                    <td>ANTONELA</td>
                    <td>20329119882</td>
                    <td>ARGENTINO</td>
                    <td>12/03/1978</td>
                    <td>DEAN FUNES 375</td>
                      <td>ACTIVO</td>
                    <td><button class="btn btn-primary btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Activar</button>
                        <button class="btn btn-danger btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Eliminar</button></td>
                </tr>
                <tr>
                 <td>User3</td>
                    <td>22512521</td>
                    <td>MARTINEZ</td>
                    <td>EMILIANO</td>
                    <td>20225125214</td>
                    <td>ARGENTINO</td>
                    <td>21/01/1967</td>
                    <td>AV LA PLATA 1245</td>
                      <td>ACTIVO</td>
                    <td>
                    <button class="btn btn-primary btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Activar</button>
                        <button class="btn btn-danger btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Eliminar</button></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- Modal para editar-->

<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Editar Cliente</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="editForm">
          <div class="mb-3">
            <label for="dni" class="form-label">DNI</label>
            <input type="text" class="form-control" id="dni" name="dni" readonly>
          </div>
          <div class="mb-3">
            <label for="apellido" class="form-label">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido">
          </div>
          <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre">
          </div>
          <div class="mb-3">
            <label for="cuil" class="form-label">CUIL</label>
            <input type="text" class="form-control" id="cuil" name="cuil">
          </div>
          <div class="mb-3">
            <label for="nacionalidad" class="form-label">Nacionalidad</label>
            <input type="text" class="form-control" id="nacionalidad" name="nacionalidad">
          </div>
          <div class="mb-3">
            <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento</label>
            <input type="text" class="form-control" id="fechaNacimiento" name="fechaNacimiento">
          </div>
          <div class="mb-3">
            <label for="direccion" class="form-label">Dirección</label>
            <input type="text" class="form-control" id="direccion" name="direccion">
          </div>
           <div class="mb-3">
            <label for="direccion" class="form-label">Localidad</label>
            <input type="text" class="form-control" id="direccion" name="direccion">
          </div>
            <div class="mb-3">
           <label for="Provincia" class="form-label">Provincia</label>
		        <select class="form-select" id="Provincia" name="Provincia" required>
				<option value="Buenos Aires">Buenos Aires</option>
				<option value="Capital Federal">Capital Federal</option>
				<option value="Catamarca">Catamarca</option>
				<option value="Chaco">Chaco</option>
				<option value="Chubut">Chubut</option>
				<option value="Córdoba">Córdoba</option>
				<option value="Corrientes">Corrientes</option>
				<option value="Entre Ríos">Entre Ríos</option>
				<option value="Formosa">Formosa</option>
				<option value="Jujuy">Jujuy</option>
				<option value="La Pampa">La Pampa</option>
				<option value="La Rioja">La Rioja</option>
				<option value="Mendoza">Mendoza</option>
				<option value="Misiones">Misiones</option>
				<option value="Neuquén">Neuquén</option>
				<option value="Río Negro">Río Negro</option>
				<option value="Salta">Salta</option>
				<option value="San Juan">San Juan</option>
				<option value="San Luis">San Luis</option>
				<option value="Santa Cruz">Santa Cruz</option>
				<option value="Santa Fe">Santa Fe</option>
				<option value="Santiago del Estero">Santiago del Estero</option>
				<option value="Tierra del Fuego">Tierra del Fuego</option>
				<option value="Tucumán">Tucumán</option>
				</select>
         	 </div>
          		 <div class="mb-3">
                <label for="txtUMail" class="form-label">E-mail</label>
                <input type="email" class="form-control" id="txtUMail" name="txtUMail" required>
                </div>
          <div class="col-md-6">
        <label for="txtTelefono" class="form-label">Teléfono</label>
        <input type="tel" class="form-control" id="txtTelefono" name="txtTelefono" required>
        </div>
        <div class="col-md-6">
        <label for="txtUsuario" class="form-label">Usuario</label>
        <input type="text" class="form-control" id="txtUsuario" name="txtUsuario" required>
        </div>
        <div class="col-md-6">
        <label for="txtClave" class="form-label">Clave</label>
        <input type="password" class="form-control" id="txtClave" name="txtClave" required>
        </div>
        <div class="col-md-6">
        <label for="txtClave" class="form-label">Repetir Clave</label>
        <input type="password" class="form-control" id="txtClave2" name="txtClave2" required>
        </div>
        <div class="col-md-6">
        <label for="Sexo" class="form-label">Sexo</label>
        <select class="form-select" id="Sexo" name="Sexo" required>
                <option value="MASCULINO">MASCULINO</option>
                <option value="FEMENINO">FEMENINO</option>
        </select>
        </div>
   
          
          
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary" onclick="guardarCambios()">Guardar</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="activateModal" tabindex="-1" aria-labelledby="activateModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="activateModalLabel">Activar Cliente</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>¿Estás seguro de que deseas activar este cliente?</p>
        <form id="activateForm">
         <div class="mb-3">
            <label for="dni" class="form-label">DNI</label>
            <input type="text" class="form-control" id="dni" name="dni" readonly>
          </div>
          <div class="mb-3">
            <label for="apellido" class="form-label">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido">
          </div>
          <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre">
          </div>
          <div class="mb-3">
            <label for="cuil" class="form-label">CUIL</label>
            <input type="text" class="form-control" id="cuil" name="cuil">
          </div>
          <div class="mb-3">
            <label for="nacionalidad" class="form-label">Nacionalidad</label>
            <input type="text" class="form-control" id="nacionalidad" name="nacionalidad">
          </div>
          <div class="mb-3">
            <label for="fechaNacimiento" class="form-label">Fecha de Nacimiento</label>
            <input type="text" class="form-control" id="fechaNacimiento" name="fechaNacimiento">
          </div>
          <div class="mb-3">
            <label for="direccion" class="form-label">Dirección</label>
            <input type="text" class="form-control" id="direccion" name="direccion">
          </div>
           <div class="mb-3">
            <label for="localidad" class="form-label">Localidad</label>
            <input type="text" class="form-control" id="localidad" name="localidad">
          </div>
            <div class="mb-3">
           <label for="provincia" class="form-label">Provincia</label>
            <input type="text" class="form-control" id="provincia" name="provincia">
         	</div>
          	<div class="mb-3">
                <label for="mail" class="form-label">E-mail</label>
                <input type="email" class="form-control" id="mail" name="mail" required>
             </div>
          <div class="col-md-6">
        <label for="telefono" class="form-label">Teléfono</label>
        <input type="tel" class="form-control" id="telefono" name="telefono" required>
        </div>
        <div class="col-md-6">
        <label for="Usuario" class="form-label">Usuario</label>
        <input type="text" class="form-control" id="Usuario" name="Usuario" required>
        </div>
  
        <div class="col-md-6">
        <label for="sexo" class="form-label">Sexo</label>
        <input type="password" class="form-control" id="sexo" name="sexo" required>
        </div>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary" onclick="confirmarActivacion()">Confirmar Activación</button>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
// Captura datos de la fila y los pasa al modal de activación
document.querySelectorAll('.btn-activate').forEach(button => {
    button.addEventListener('click', function() {
        const row = this.closest('tr');
        document.getElementById('dniActivate').value = row.cells[0].textContent;
        document.getElementById('apellidoActivate').value = row.cells[1].textContent;
        document.getElementById('nombreActivate').value = row.cells[2].textContent;
        document.getElementById('cuilActivate').value = row.cells[3].textContent;
        document.getElementById('nacionalidadActivate').value = row.cells[4].textContent;
        document.getElementById('fechaNacimientoActivate').value = row.cells[5].textContent;
        document.getElementById('direccionActivate').value = row.cells[6].textContent;
        document.getElementById('localidadActivate').value = row.cells[7].textContent;
        document.getElementById('provinciaActivate').value = row.cells[8].textContent;
        document.getElementById('emailActivate').value = row.cells[9].textContent;
        document.getElementById('telefonoActivate').value = row.cells[10].textContent;
        document.getElementById('usuarioActivate').value = row.cells[11].textContent;
        document.getElementById('sexoActivate').value = row.cells[12].textContent;
    });
});





// Captura datos de la fila y los pasa al modal
document.querySelectorAll('.btn-edit').forEach(button => {
    button.addEventListener('click', function() {
        const row = this.closest('tr');
        document.getElementById('dni').value = row.cells[0].textContent;
        document.getElementById('apellido').value = row.cells[1].textContent;
        document.getElementById('nombre').value = row.cells[2].textContent;
        document.getElementById('cuil').value = row.cells[3].textContent;
        document.getElementById('nacionalidad').value = row.cells[4].textContent;
        document.getElementById('fechaNacimiento').value = row.cells[5].textContent;
        document.getElementById('direccion').value = row.cells[6].textContent;
        document.getElementById('localidad').value = row.cells[7].textContent;
        document.getElementById('provincia').value = row.cells[8].textContent;
        document.getElementById('email').value = row.cells[9].textContent;
        document.getElementById('telefono').value = row.cells[10].textContent;
        document.getElementById('usuario').value = row.cells[11].textContent;
        document.getElementById('sexo').value = row.cells[12].textContent;
    });
});

// Función para confirmar activación
function confirmarActivacion() {
    alert("Cliente activado exitosamente");
    // Aquí puedes enviar los datos al servidor para activar el cliente.
}
// Función para guardar los cambios
function guardarCambios() {
    alert("Cambios guardados exitosamente");
   
}
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>