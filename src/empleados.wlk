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
	
	method cobrar(){
		//no hace nada
	}

}

object baigorria {

	var ventas = 0
	var sueldo = 0
	var totalCobrado = 0

	method vender(cantidad) {
		ventas += cantidad
		self.sueldo(ventas * 15)
	}
	
	method reiniciarVentas(){
		ventas = 0
	}

	method sueldo(cantidad) {
		sueldo = cantidad
	}

	// getter
	method sueldo() {
		return sueldo
	}
	
	method totalCobrado(){
		return totalCobrado
	}
	
	method cobrar(){
		totalCobrado += self.sueldo()
		self.sueldo(0)
		self.reiniciarVentas()
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
		empleado.cobrar()
	}

}

