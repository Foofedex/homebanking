<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cuentas personales</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"> 
  <style>
   			 #txtDinero {
       			 font-size: 50px;
    }
			</style>
</head>
<body>

    <div class="d-flex vh-100" >
        <!-- Sidebar -->
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

      
        <div style="width: 100%; max-width: 800px; margin: 0 auto;" class="py-4">
        <header class="d-flex justify-content-center w-100 mt-5 h2">
           <label for="txtNombre" class="form-label">Cliente:</label>
           <input type="text" class="form-control w-50" id="txtNombre" name="txtNombre" disabled>
           
       
           
        </header>

       <section class="g-4 h-50 m-4 row">
          	<div class="align-items-baseline d-flex justify-content-center">
            <h1 class="me-4">Cuenta</h1>
            <select class="form-select form-select-lg mb-3 me-4" aria-label=".form-select-lg example">
			  <option selected="">Seleccione Cuenta</option>
			  <option value="1">Cuenta1</option>
			  <option value="2">Cuenta2</option>
			  <option value="3">Cuenta3</option>
			</select>
			<label for="txtCbu" class="form-label">Cbu:</label>
			 <input type="text" class="form-control" id="txtCbu" name="txtCbu" disabled="">
          	</div>  
        
             <div class="d-flex justify-content-center row">
                <div class="align-items-center col-9 d-flex justify-content-center">
                    <label for="txtDinero" class="form-label">Dinero en Cuenta</label>
                    <input type="text" class="form-control h-75" id="txtDinero" name="txtDinero" disabled >
                </div>
                <div class="col-md-4 mb-3">
                    <label for="txtAlta" class="form-label">Fecha de Alta</label>
                    <input type="text" class="form-control" id="txtAlta" name="txtAlta" disabled required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="txtTipoCuenta" class="form-label">Tipo de Cuenta</label>
                    <input type="text" class="form-control" id="txtTipoCuenta" name="txtTipoCuenta" disabled required>
                </div>
                	   <script>
     				   document.getElementById("txtDinero").value = "$ 500.000";
     				  document.getElementById("txtTipoCuenta").value = "caja de ahorro";
     				 document.getElementById("txtAlta").value = "01-12-2023";
     				 document.getElementById("txtCbu").value = "12221121212354513232131515313";
     				 document.getElementById("txtNombre").value = "Franco Colapinto";
     				  
    				</script>
            </div>
          
        </section>
        
        <table class="table">
  <thead>
    <tr class="table-primary">
      <th scope="col">FECHA</th>
      <th scope="col">DESCRIPCION</th>
      <th scope="col">MOVIMIENTO</th>
      <th scope="col">SALDO</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1/12/2024</th>
      <td>CUENTA 12531315</td>
      <td>TRANSFERENCIA A TERCEROS</td>
      <td>$10.000</td>
    </tr>
    <tr>
      <th scope="row">12/12/2024</th>
      <td>CAJA DE AHORRRO</td>
      <td>RECIBO TRANSFERENCIA</td>
      <td>$25.000</td>
    </tr>
    <tr>
      <th scope="row">12/1/2025</th>
      <td >CUENTA 3551111</td>
      <td> TRASFERENCIA A TERCERO </td>
      <td>$2000</td>
    </tr>
  </tbody>
</table>

           
     	</div>
</div>
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
   
</body>
</html>