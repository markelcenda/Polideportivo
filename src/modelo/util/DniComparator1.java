package modelo.util;

import java.util.Comparator;

import modelo.bean.Usuario;

public class DniComparator1 implements Comparator<Usuario>{

	@Override
	public int compare(Usuario u1, Usuario u2) {
		return u2.getDni().compareToIgnoreCase(u1.getDni());
	}

}
