object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesasRebozodas {
	var property precio = 260
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}
object botellaDeSalsaDeTomates {
	var property precio = 90 
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object unKiloDeCebollas {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}
object computadora {	
	
	method precio() { return 500 * precioDolar.precio()}
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object precioDolar {
	var property dolar = 62
	method precio() { return dolar }
	method esComida() { return false }
	method esElectrodomestico() { return false }
}
	}