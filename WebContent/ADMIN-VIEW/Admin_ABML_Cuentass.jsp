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
            <h2 id="txtNombre"> Franco Colapinto</h2>	
            
            
        </header>
	
	<div class="d-flex justify-content-sm-between mb-3 me-5 mt-4">
	
	<h1>Listado de Cuentas</h1>	
	<button class="btn btn-success btn-edit" data-bs-toggle="modal" data-bs-target="#ActiveModal">Nueva Cuenta</button>
	</div>
	
<div class="mb-3 ms-5">

<div class="form-group">
  <label for="txtBusqueda" class="form-label">Filtro</label>
  <select name="Filtro" id="txtBusqueda" class="form-select w-25 mb-2">
    <option value="Todos">Todos</option>
    <option value="Cuenta">N° cuenta</option>
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
	
 <table class="table">
            <thead>
                <tr class="table-primary">
                	<th scope="col">CUENTA</th>
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
                	<td>121221321</td>
                    <td>33344351</td>
                    <td>PAREDES</td>
                    <td>LEANDRO</td>
                    <td>203324434514</td>
                    <td>ARGENTINO</td>
                    <td>12/01/1965</td>
                    <td>DEAN FUNES 4175</td>
                    <td>INACTIVO</td>
                 <td><button class="btn btn-primary btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Editar Cuenta</button>
                        <button class="btn btn-danger btn-edit" data-bs-toggle="modal" data-bs-target="#deleteModal">Eliminar Cuenta</button></td>
                </tr>
                <tr>
               		<td>123544545</td>
                    <td>32911988</td>
                    <td>ROCUZZO</td>
                    <td>ANTONELA</td>
                    <td>20329119882</td>
                    <td>ARGENTINO</td>
                    <td>12/03/1978</td>
                    <td>DEAN FUNES 375</td>
                      <td>ACTIVO</td>
                <td><button class="btn btn-primary btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Editar Cuenta</button>
                        <button class="btn btn-danger btn-edit" data-bs-toggle="modal" data-bs-target="#deleteModal">Eliminar Cuenta</button></td>
                </tr>
                <tr>
               		<td>5555544545</td>
                    <td>22512521</td>
                    <td>MARTINEZ</td>
                    <td>EMILIANO</td>
                    <td>20225125214</td>
                    <td>ARGENTINO</td>
                    <td>21/01/1967</td>
                    <td>AV LA PLATA 1245</td>
                      <td>ACTIVO</td>
                                     <td><button class="btn btn-primary btn-edit" data-bs-toggle="modal" data-bs-target="#editModal">Editar Cuenta</button>
                        <button class="btn btn-danger btn-edit" data-bs-toggle="modal" data-bs-target="#deleteModal">Eliminar Cuenta</button></td>

                </tr>
            </tbody>
        </table>






    </div>
</div>



<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Editar Cuenta</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="editForm">
         <div class="mb-3">
            <label for="cuenta_dni" class="form-label">DNI Cuenta</label>
            <input type="text" class="form-control" id="cuenta_dni" name="cuenta_dni" readonly>
          </div>
          <div class="mb-3">
            <label for="num_cuenta" class="form-label">Numero de Cuenta</label>
            <input type="text" class="form-control" id="num_cuenta" name="num_cuenta" readonly>
          </div>
          <div class="mb-3">
            <label for="ecbu" class="form-label">CBU</label>
            <input type="text" class="form-control" id="ecbu" name="ecbu" readonly>
          </div>
          
            <div class="mb-3">
           <label for="Tipo_Cuenta" class="form-label">Tipo de Cuenta</label>
		        <select class="form-select" id="Tipo_Cuenta" name="Tipo_Cuenta" required>
				<option value="Cuenta corriente">Cuenta corriente</option>
				<option value="Caja de Ahorro">Caja de ahorro</option>
				</select>
         	 </div>
          		 <div class="mb-3">
                <label for="Saldo" class="form-label">Saldo</label>
                <input type="text" class="form-control" id="Saldo" name="Saldo" required>
                </div>
                	 <div class="mb-3">
                <label for="efecha_alta" class="form-label">fecha de alta</label>
                <input type="date" class="form-control" id="efecha_alta" name="efecha_alta" required>
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




<div class="modal fade" id="ActiveModal" tabindex="-1" aria-labelledby="activateModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Activar Cuenta</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="editForm">
          <div class="row">
            <div class="mb-3">
              <label for="cuenta_dni" class="form-label">DNI Cuenta</label>
              <div class="input-group">
                <input type="text" class="form-control" id="cuenta_dni" name="cuenta_dni" >
                <button type="button" class="btn btn-secondary ms-2">Buscar</button>
              </div>
            </div>
            <div class=" mb-3">
              <label class="form-label">Nombre Cliente</label>
              <h4 class="border-bottom py-1">Juan Carlos</h4>
            </div>
          </div>

          <div class="row">
            <div class="mb-3">
              <label class="form-label">Apellido Cliente</label>
              <h4 class="border-bottom py-1">Zaragoza</h4>
            </div>
            <div class=" mb-3">
              <label for="num_cuenta" class="form-label">Número de Cuenta</label>
              <input type="text" class="form-control" id="num_cuenta" name="num_cuenta" >
            </div>
          </div>

          <div class="row">
            <div class="mb-3">
              <label for="ecbu" class="form-label">CBU</label>
              <input type="text" class="form-control" id="ecbu" name="ecbu" >
            </div>
            <div class="mb-3">
              <label for="Tipo_Cuenta" class="form-label">Tipo de Cuenta</label>
              <select class="form-select" id="Tipo_Cuenta" name="Tipo_Cuenta" required>
                <option value="Cuenta corriente">Cuenta Corriente</option>
                <option value="Caja de Ahorro">Caja de Ahorro</option>
              </select>
            </div>
          </div>

          <div class="row">
            <div class=" mb-3">
              <label for="Saldo" class="form-label">Saldo</label>
              <input type="number" class="form-control" id="Saldo" name="Saldo" required>
            </div>
            <div class=" mb-3">
              <label for="efecha_alta" class="form-label">Fecha de Alta</label>
              <input type="date" class="form-control" id="efecha_alta" name="efecha_alta" required>
            </div>
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







<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
 <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Eliminar Cuenta</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="editForm">
         <div class="mb-3">
            <label for="cuenta_dni" class="form-label">DNI Cuenta</label>
            <input type="text" class="form-control" id="cuenta_dni" name="cuenta_dni" readonly disabled>
          </div>
          <div class="mb-3">
            <label for="num_cuenta" class="form-label">Numero de Cuenta</label>
            <input type="text" class="form-control" id="num_cuenta" name="num_cuenta" readonly disabled>
          </div>
          <div class="mb-3">
            <label for="ecbu" class="form-label">CBU</label>
            <input type="text" class="form-control" id="ecbu" name="ecbu" readonly disabled>
          </div>
          
            <div class="mb-3">
           <label for="Tipo_Cuenta" class="form-label">Tipo de Cuenta</label>
		        <input type="text" class="form-control" id="Saldo" name="Saldo" required disabled>
			     	 </div>
          		 <div class="mb-3">
                <label for="Saldo" class="form-label">Saldo</label>
                <input type="text" class="form-control" id="Saldo" name="Saldo" required disabled>
                </div>
                	 <div class="mb-3">
                <label for="efecha_alta" class="form-label">fecha de alta</label>
                <input type="date" class="form-control" id="efecha_alta" name="efecha_alta" required disabled>
                </div>
             
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-danger" onclick="confirmarActivacion()">Confirmar Eliminacion</button>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>