//Escribir aqui los objetos
object galvan {

	var sueldo = 15000
	var deuda = 0
	var dinero = 0

	// setter
	method sueldo(cantidad) {
		sueldo = cantidad
	}

	// getter
	method sueldo() {
		return sueldo
	}
	
	method cobrar(){
		const saldo = sueldo - deuda
		self.pagarDeudas()
		self.guardarDinero(saldo)
	}
	
	method pagarDeudas(){
		deuda = 0.max(deuda - sueldo.abs())
	}
	
	method guardarDinero(cantidad){
		dinero = 0.max(cantidad)
	}
	
	method gastar(unaCantidad){
		//solucion con if fea
//		if (unaCantidad > dinero){
//			deuda += unaCantidad - dinero
//			dinero = 0
//		}else{
//			dinero -= unaCantidad
//		}
//con logica de "pagos"
		deuda = 0.min(dinero - deuda - unaCantidad).abs()
		dinero = 0.max(dinero - unaCantidad)
	}
	
	method deuda(){
		return deuda
	}
	
	method dinero(){
		return dinero
	}

}

object baigorria {

	var ventas = 0
	var sueldo = 0
	var totalCobrado = 0

	method vender(cantidad) {
		ventas += cantidad
		self.sueldo(ventas)
	}
	
	method reiniciarVentas(){
		ventas = 0
	}

	method sueldo(vendidas) {
		sueldo = vendidas * 15
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

