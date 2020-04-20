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

import modelo.bean.Actividad;
import modelo.bean.Usuario;
import modelo.dao.ModeloActividad;
import modelo.dao.ModeloUsuario;

/**
 * Servlet implementation class ApiActividades
 */
@WebServlet("/ApiActividades")
public class ApiActividades extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApiActividades() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ModeloActividad modeloActividad=new ModeloActividad();
		ArrayList<Actividad> actividades=modeloActividad.selectAll();
		
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setContentType("application/json");
		
		String jsonString=JSONStringer.valueToString(actividades);
		
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
