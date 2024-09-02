object galvan {
    var sueldo = 15000
    var saldo = 0

    method dinero() {
        return if (saldo >= 0) saldo else 0 //lo mismo aca
    }

    method deuda() {
        return if (saldo < 0) saldo else 0 //preguntar porque "else 0" 
                                           //y que de lo que tiene que dar, osea funcione
    }
    
    method gastar(cuantoGasta) {
        saldo = saldo - cuantoGasta
    }

    method cobrarSueldo() {
        saldo = saldo + sueldo
    }

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method sueldo() {
      return sueldo
    }
   
}

object baigorria {
    var cantEmpanadasVendidas = 0
    var sueldoCobrado = 0

    method vender(cantidad) {
        cantEmpanadasVendidas = cantEmpanadasVendidas + cantidad
    }

    method sueldo() {
        return cantEmpanadasVendidas * 15
    }

    method cobrarSueldo() {
        sueldoCobrado = sueldoCobrado + self.sueldo()
        cantEmpanadasVendidas = 0
    }

    method totalCobrado() {
        return sueldoCobrado
    } 
}

object gimenez {
    var fondo = 300000

    method fondo() {
        return fondo
    }

    method pagarSueldo(empleado) {
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo()
    }
}