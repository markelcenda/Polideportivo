package api;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONStringer;

import modelo.bean.Usuario;
import modelo.dao.ModeloUsuario;
import modelo.util.DniComparator0;
import modelo.util.DniComparator1;
import modelo.util.NombreComparator0;
import modelo.util.NombreComparator1;

/**
 * Servlet implementation class ApiUsuariosOrdenados
 */
@WebServlet("/ApiUsuariosOrdenados")
public class ApiUsuariosOrdenados extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApiUsuariosOrdenados() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ModeloUsuario modeloUsuario=new ModeloUsuario();
		ArrayList<Usuario> usuarios=modeloUsuario.selectAll();
		
		String eremua=request.getParameter("eremua");
		int ordena=Integer.parseInt(request.getParameter("ordena"));
		
		if(eremua.equals("nombreApellido")) {
			
			if(ordena==0) {
				usuarios.sort(new NombreComparator0());
			}else if(ordena==1) {
				usuarios.sort(new NombreComparator1());
			}
			
		}else if(eremua.equals("dni")){
			
			if(ordena==0) {
				usuarios.sort(new DniComparator0());
			}else if(ordena==1) {
				usuarios.sort(new DniComparator1());
			}
			
		}
		
		
		
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setContentType("application/json");
		
		String jsonString=JSONStringer.valueToString(usuarios);
		
		PrintWriter out=response.getWriter();
		out.print(jsonString);
		out.flush();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
