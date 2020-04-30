package modelo.util;

import java.util.Comparator;

import modelo.bean.Usuario;

public class DniComparator0 implements Comparator<Usuario>{

	
	@Override
	public int compare(Usuario u1, Usuario u2) {
		return u1.getDni().compareToIgnoreCase(u2.getDni());
	}

}
