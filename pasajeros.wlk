//PASAJEROS

object neo {
    var energia = 100

    method esElElegido() {
      return true
    }
    method saltar() {
      energia += energia / 2
    }
    method vitalidad() {
      return energia * 0.1
    }
}

object morfeo {
    var nivelVitalidad = 8
    var estaDescansado = true
    
    method esElElegido() {
      return true
    }
    method saltar() {
        estaDescansado = not(estaDescansado)
        nivelVitalidad -= 1
    }
    method vitalidad() {
      return nivelVitalidad
    }
}

object trini {
    const nivelVitalidad = 0
    
    method esElElegido() {
      return true
    }
    method vitalidad() {
      return nivelVitalidad
    }
    method saltar() {}
}