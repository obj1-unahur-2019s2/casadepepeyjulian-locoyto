import cosas.* 

object casaDePepeYJulian {
	var cosas = [paqueteDeFideos, heladera]
	
	method comprar (cosa) {
		cosas.add { cosa }
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any { a=> a.esComida() }
	}
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() || 
				cosas.last().precio() > 5000
	}
	
	method esDerrochona() {
		return cosas.sum { n => n.precio()} >= 9000
	}
	
	method comprarMasCara() {
		return cosas.max { n => n.precio()}
	}
	
	method electrodomesticosComprados() {
		cosas.filter { n => n.esElectrodomestico()}
	}
	
	method malaEpoca() {
		cosas.all { n => n.esComida()}
		}
		
	method queFaltaComprar(lista) {
		return lista.asSet().difference (cosas.asSet())
	}
	
	method faltaComida() {
		return cosas.count { n => n.esComida()} >= 2
	}
}


	