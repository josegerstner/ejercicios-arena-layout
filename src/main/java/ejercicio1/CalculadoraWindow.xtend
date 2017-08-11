package ejercicio1

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.NumericField
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.layout.HorizontalLayout
import org.uqbar.arena.widgets.Button

class CalculadoraWindow extends MainWindow<Calculadora> {
	new() {
		super(new Calculadora)
	}

	override createContents(Panel mainPanel) {
		
		this.title = "Calculadora: ejercicio1Arena"
		
		new Label(mainPanel).text = "Operando 1"
		new NumericField(mainPanel) => [
			value <=> "operando1"
		]
		
		new Label(mainPanel).text = "Operando 2"
		new NumericField(mainPanel) => [
			value <=> "operando2"
		]
		
		var panelH = new Panel(mainPanel)
		panelH.layout = new HorizontalLayout
		
		new Button(panelH) => [
			caption = "+"
      		onClick[ | modelObject.resultado  ]
      		enabled <=> "signo"
		]
		
		new Button(panelH) => [
			caption = "-"
      		onClick[ | modelObject.resultado  ]
      		enabled <=> "signo"
		]
		
		new Button(panelH) => [
			caption = "*"
      		onClick[ | modelObject.resultado  ]
      		enabled <=> "signo"
		]
		
		new Button(panelH) => [
			caption = "/"
      		onClick[ | modelObject.resultado  ]
      		enabled <=> "signo"
		]
				
		new Label(mainPanel).text = "Resultado"
		new Label(mainPanel) => [
			value <=> "resultado"
		]
	}

	def static main(String[] args) {
		new CalculadoraWindow().startApplication
	}

}
