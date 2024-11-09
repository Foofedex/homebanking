package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class servletBanco
 */
@WebServlet("/servletBanco")
public class servletBanco extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletBanco() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("registro")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/Registro.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("viewInformacionPersonal")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/USER_VIEW/HomeUserDatosPersonal.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("viewCuentas")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/USER_VIEW/HomeUserCuentass.jsp");
			rd.forward(request, response);
		}
		if(request.getParameter("viewPrestamos")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/USER_VIEW/HomeUserPrestamos.jsp");
			rd.forward(request, response);
		}
		if(request.getParameter("viewTransferencias")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/USER_VIEW/HomeUserTransferencias.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("viewABMLClientes")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/ADMIN-VIEW/HomeAdmin_ABML_CLientes.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("viewABLUsuarios")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/ADMIN-VIEW/ABMLUsuario.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("viewABMLCuentas")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/ADMIN-VIEW/Admin_ABML_Cuentass.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("viewReportes")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/ADMIN-VIEW/ReporteAdmin.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("viewPrestamosADMIN")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/ADMIN-VIEW/AdminAutorizacionesPrestamos.jsp");
			rd.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("btnCancelar")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("btnAceptarLogin")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/USER_VIEW/HomeUserDatosPersonal.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("btnAceptarLoginADMIN")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/ADMIN-VIEW/HomeAdmin_ABML_CLientes.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("btnCerrar")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("btnNuevoPrestamo")!=null)
		{
			// Request dispatcher
			RequestDispatcher rd = request.getRequestDispatcher("/USER_VIEW/prestamoCliente.jsp");
			rd.forward(request, response);
		}
	}

}
