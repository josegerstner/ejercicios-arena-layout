package ejercicio3

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Observable
@Accessors
class Serie {
	var String nombre
	var int temporadas
	var List<Actor> actores
	
	new(String name, int temp, List<Actor>actors){
		nombre = name
		temporadas = temp
		actores = actors
	}
}