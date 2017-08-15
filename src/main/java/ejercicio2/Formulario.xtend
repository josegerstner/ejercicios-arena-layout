package ejercicio2

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

@Accessors
@Observable
class Formulario {
	var String nombre
	var String apellido
	var int edad
	var String sexo
	var boolean vive
}