import cosas.* 

object casaDePepeYJulian {
	const property cosas = []
	
	method comprar (cosa) {
		cosas.add ( cosa )
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any { a => a.esComida() }
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
		return cosas.filter { n => n.esElectrodomestico()}
	}
	
	method malaEpoca() {
		return cosas.all { n => n.esComida()}
		}
		
	method queFaltaComprar(lista) {
		return lista.asSet().difference (cosas.asSet())
	}
	
	method faltaComida() {
		return cosas.count { n => n.esComida()  } >= 2
	}
	
	method gastoEnComida() {
		return  cosas.filter{ n => n.esComida() }.sum { n => n.precio()}
	}
	
	method hayElectrodomesticosBaratos() {
		return self.electrodomesticosComprados().any { n =>  n.precio() < 3000}
	}	
	
	method preciosDeElectrodomesticos() {
		return self.electrodomesticosComprados().map { n => n.precio()}
	}
	
	method nivelEnAumento() {
		return cosas.last().precio() >=  cosas.first().precio() * 2
	}
	
	method primeraComidaComprada() {
		return cosas.find { n => n.esComida() }
	}
}