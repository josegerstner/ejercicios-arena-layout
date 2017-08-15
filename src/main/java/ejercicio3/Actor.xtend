package ejercicio3

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Actor {
	var String nombre
	var String personaje
	
	new(String nombre, String personaje){
		this.nombre = nombre
		this.personaje = personaje
	}
}