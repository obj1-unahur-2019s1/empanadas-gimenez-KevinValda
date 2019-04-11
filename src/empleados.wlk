object galvan {

	var sueldo = 15000
	var deuda = 0
	var dinero= 0
	
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	
	method cobrarSueldo () {
		
		
		
		if ( deuda == 0) 
		{dinero +=  sueldo}
		else
		{deuda -= sueldo}
	}
 	
	method gastar (cuanto) {
		
		if (dinero <= 0) 
		{deuda += cuanto}
		else
		{dinero-= cuanto}	
		
	}
	
	method totalDeuda () {return deuda}
	
	method totalDinero () {return dinero}	
	
	
}

object baigorria {
	
	var sueldo = 0
	
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo () {sueldo += self.sueldo()}
	method totalCobrado () {return sueldo} 
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}

