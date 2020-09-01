//Escribir aqui los objetos
object galvan {

	var sueldo = 15000

	// setter
	method sueldo(cantidad) {
		sueldo = cantidad
	}

	// getter
	method sueldo() {
		return sueldo
	}

}

object baigorria {

	var ventas = 0
	var sueldo = 0

	method vender(cantidad) {
		ventas += cantidad
		self.calcularSueldo()
	}

	method calcularSueldo() {
		sueldo = 15 * ventas
	}

	// getter
	method sueldo() {
		return sueldo
	}

}

object gimenez {

	var fondo = 300000

	// getter
	method fondo() {
		return fondo
	}

	method pagarSueldo(empleado) {
		fondo -= empleado.sueldo()
	}

}

