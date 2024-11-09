<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTRO</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 
</head>
<body class="bg-info-subtle">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<div class="container mt-5">
    <h1 class="text-center mb-4">Registro</h1>
    <form action="servletBanco" method="post" class="row g-3">
        <div class="col-md-6">
            <label for="txtNombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="txtNombre" name="txtNombre" required>
        </div>
        <div class="col-md-6">
            <label for="txtApellido" class="form-label">Apellido</label>
            <input type="text" class="form-control" id="txtApellido" name="txtApellido" required>
        </div>
        <div class="col-md-6">
            <label for="txtDni" class="form-label">DNI</label>
            <input type="text" class="form-control" id="txtDni" name="txtDni" required>
        </div>
        <div class="col-md-6">
            <label for="txtCuil" class="form-label">CUIL</label>
            <input type="text" class="form-control" id="txtCuil" name="txtCuil" required>
        </div>
        <div class="col-md-6">
            <label for="txtNacionalidad" class="form-label">Nacionalidad</label>
            <input type="text" class="form-control" id="txtNacionalidad" name="txtNacionalidad" required>
        </div>
        <div class="col-md-6">
            <label for="txtNacimiento" class="form-label">Fecha de Nacimiento</label>
            <input type="date" class="form-control" id="txtNacimiento" name="txtNacimiento" required>
        </div>
        <div class="col-md-6">
            <label for="txtDireccion" class="form-label">Dirección</label>
            <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" required>
        </div>
        <div class="col-md-6">
            <label for="txtLocalidad" class="form-label">Localidad</label>
            <input type="text" class="form-control" id="txtLocalidad" name="txtLocalidad" required>
        </div>
        <div class="col-md-6">
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
        <div class="col-md-6">
            <label for="txtMail" class="form-label">E-mail</label>
            <input type="email" class="form-control" id="txtMail" name="txtMail" required>
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
        <div class="col-12 text-center mt-4">
            <button type="submit" class="btn btn-primary" name="btnAceptar">Aceptar</button>
            <button type="submit" class="btn btn-secondary" name="btnCancelar" formnovalidate>Cancelar</button>
        </div>
    </form>
</div>

</body>
</html>