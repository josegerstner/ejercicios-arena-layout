package ejercicio2

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.TextBox
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Spinner
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.RadioSelector
import org.uqbar.arena.bindings.ObservableProperty
import org.uqbar.arena.widgets.CheckBox

class FormularioWindow extends MainWindow<Formulario> {
	new() {
		super(new Formulario)
	}

	override createContents(Panel mainPanel) {
		
		this.title = "Formulario: ejercicio2Arena"
		
		mainPanel.layout = new ColumnLayout(2)
		
		
		new Label(mainPanel).text = "Nombre"
		new TextBox(mainPanel) => [
			value <=> "nombre"
		]
		
		new Label(mainPanel).text = "Apellido"
		new TextBox(mainPanel) => [
			value <=> "apellido"
		]
		
		new Label(mainPanel).text = "Edad"
		new Spinner(mainPanel) => [
			value <=> "edad"
		]
		
		new Label(mainPanel).text = "Sexo"
		var panelH = new Panel(mainPanel)
		panelH.layout = new HorizontalLayout
		new RadioSelector(panelH) => [
			bindItems(new ObservableProperty(this, "sexos"))
            bindValueToProperty("sexo")
			value <=> "sexo"
		]
		
		new Label(mainPanel).text = "Vive"
		new CheckBox(mainPanel) => [
			value <=> "vive"
		]
		
	}
	
	def getSexos(){
		#["M", "F", "Otro"]
	}

	def static main(String[] args) {
		new FormularioWindow().startApplication
	}

}
