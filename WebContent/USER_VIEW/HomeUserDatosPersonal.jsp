<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Datos personales</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 

</head>
<body>

    <div class="d-flex vh-100" >
        <!-- Sidebar -->
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

      
        <div class="main-content flex-grow-1">
        <header>
            <h1>Datos personales</h1>
        </header>

        <section class="row g-4 m-4">
          
            <div class="col-md-6">
               <div class="mb-3">
               <label for="txtUNombre" class="form-label">Nombre</label>
               <input type="text" class="form-control" id="txtUNombre" name="txtUNombre" disabled required>
               </div>
               <div class="mb-3">
               <label for="txtUApellido" class="form-label">Apellido</label>
               <input type="text" class="form-control" id="txtUApellido" name="txtUApellido" disabled required>
               </div>
               <div class="mb-3">
               <label for="txtUDni" class="form-label">DNI</label>
               <input type="text" class="form-control" id="txtUDni" name="txtUDni" disabled required>
               </div>
               <div class="mb-3">
               <label for="txtUCuil" class="form-label">CUIL</label>
               <input type="text" class="form-control" id="txtUCuil" name="txtUCuil" disabled required>
               </div>
               <div class="mb-3">
               <label for="txtUNacionalidad" class="form-label">Nacionalidad</label>
               <input type="text" class="form-control" id="txtUNacionalidad" name="txtUNacionalidad" disabled required>
               </div>
               <div class="mb-3">
               <label for="txtUNacimiento" class="form-label">Fecha de Nacimiento</label>
               <input type="date" class="form-control" id="txtUNacimiento" name="txtUNacimiento" required>
               </div>
            </div>

          
            <div class="col-md-6">
                <div class="mb-3">
                <label for="txtUDireccion" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="txtUDireccion" name="txtUDireccion" disabled required>
                </div>
                <div class="mb-3">
                <label for="txtULocalidad" class="form-label">Localidad</label>
                <input type="text" class="form-control" id="txtULocalidad" name="txtULocalidad" disabled required>
                </div>
                <div class="mb-3">
                <label for="Provincia" class="form-label">Provincia</label>
                <input type="text" class="form-control" id="Provincia" name="Provincia" disabled required>
                </div>
                <div class="mb-3">
                <label for="txtUMail" class="form-label">E-mail</label>
                <input type="email" class="form-control" id="txtUMail" name="txtUMail" disabled required>
                </div>
                <div class="mb-3">
                <label for="txtUTelefono" class="form-label">Teléfono</label>
                <input type="tel" class="form-control" id="txtTelefono" name="txtUTelefono" disabled required>
                </div>
                <div class="mb-3">
                <label for="SexoU" class="form-label">Sexo</label>
                <input type="text" class="form-control" id="SexoU" name="SexoU" required disabled>
                </div>
            </div>
        </section>

             <div class=" d-flex justify-content-around mt-4">
            <button type="submit" class="btn btn-secondary w-25" name="btnEditar">Editar</button>
        	</div>
     </div>
</div>
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
   
</body>
</html>