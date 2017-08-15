package ejercicio3

import org.uqbar.arena.windows.MainWindow
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.List
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.Button

class SeriesWindow extends MainWindow<Series> {
	new() {
		super(new Series)
	}

	override createContents(Panel mainPanel) {
		
		this.title = "Series: ejercicio3Arena"
		
		//primero armo el panel izquierdo
		mainPanel.layout = new ColumnLayout(2)
		var panelIzq = new Panel(mainPanel)
		panelIzq.layout = new VerticalLayout
		
		new List(panelIzq) => [
            items <=> "series"
            value <=> "serieSeleccionada"
            width = 200
            height = 220
        ]
        new Button(panelIzq) => [
        	caption = "Nueva"
        ]
				
		//Armo el panel derecho
		
		var panelDer = new Panel(mainPanel)
		panelDer.layout = new VerticalLayout
		
		var panelDerMed = new Panel(panelDer)
		panelDerMed.layout = new ColumnLayout(2)
		
		new Label(panelDerMed).text = "Nombre"
		new TextBox(panelDerMed) => [
			enabled
			value <=> "serieSeleccionada"
			width = 100
		]
		
		new Label(panelDerMed).text = "Temporadas"
		new TextBox(panelDerMed) => [
			value <=> "temporadas"
			width = 100
		]
		
		new List(panelDer) => [
			allowNull(false)
            items <=> "actores"
            //value <=> "actorSeleccionado"
            width = 200
            height = 150
        ]
        
        var panelBot = new Panel(panelDer)
		panelBot.layout = new HorizontalLayout
		
		new Button(panelBot) => [
			caption = "Guardar"
		]
		new Button(panelBot) => [
			caption = "Cancelar"
		]
		new Button(panelBot) => [
			caption = "Agregar actor"
		]
	}

	def static main(String[] args) {
		new SeriesWindow().startApplication
	}

}