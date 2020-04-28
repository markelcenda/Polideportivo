package api;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import modelo.bean.MiUsuario;
import modelo.bean.Usuario;
import modelo.dao.ModeloUsuario;

/**
 * Servlet implementation class ApiCrearUsuario
 */
@WebServlet("/ApiCrearUsuario")
public class ApiCrearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApiCrearUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String jsonUsuario=request.getParameter("usuario");
		
		JSONObject jsonObject=new JSONObject(jsonUsuario);
		
		MiUsuario usuario=new MiUsuario();
		usuario.setNombreApellido(jsonObject.getString("nombreApellido"));
		usuario.setCodigo(jsonObject.getString("codigo"));
		usuario.setDni(jsonObject.getString("dni"));
		
		ModeloUsuario modeloUsuario=new ModeloUsuario();
		
		if(usuario.validar()) {
			if(modeloUsuario.existCodigo(usuario.getCodigo()) || modeloUsuario.existDni(usuario.getDni()) ) {
				System.out.println("El codigo o DNI ya han sido utilizados");
			}else {
				modeloUsuario.insert(usuario);
			}
		}else {
			System.out.println("La largura del codigo o DNI son incorrectas");
		}
		
		try {
			modeloUsuario.getConexion().close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.setHeader("Access-Control-Allow-Origin","*"); 
		response.setCharacterEncoding("UTF-8");
		
	}

}
