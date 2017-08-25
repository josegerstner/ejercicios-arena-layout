package ejercicio3

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable
import org.uqbar.commons.model.annotations.Dependencies

@Accessors
@Observable
class Series {
	var String serieSeleccionada
	var String actorSeleccionado
	var List<Serie> series = #[
		new Serie("Rick And Morty", 3, #[new Actor("Rick", "Abuelo"), new Actor("Morty", "Nieto")]),
		new Serie("Archer", 8, #[new Actor("Sterling Archer", "principal"), new Actor("Lana", "principal"), new Actor("Malory Archer", "madre"), new Actor("Pam", "la gorda"), new Actor("Ray", "el putazo"), new Actor("Carla", "la masoquista")]),
		new Serie("Tortugas ninja", 2, #[new Actor("Leonardo", "Tortuga 1"), new Actor("Donatello", "Tortuga 2"), new Actor("Michelangelo", "Tortuga 3"), new Actor("Rafael", "Tortuga 4"), new Actor("Splinter", "La Rata-sensei")])
	]
	
	@Dependencies("serieSeleccionada")
	def getSeries(){		
		series.map[ nombre ]
	}
	
	@Dependencies("serieSeleccionada")
	def List<String> getActores(){
		series.findFirst(serie | serie.nombre.equals(serieSeleccionada)).actores.map[nombre]
	}
	
	@Dependencies("serieSeleccionada", "actorSeleccionado")
	def List<String> getPersonajes(){
		series.findFirst(serie | serie.nombre.equals(serieSeleccionada)).actores.map[actor | actor.personaje]
	}
	
	@Dependencies("serieSeleccionada")
	def getTemporadas(){
		series.findFirst(ser | ser.nombre.equals(serieSeleccionada)).temporadas
	}
	 
}