import pasajeros.*

object nave {
    var pasajeros = [neo, morfeo, trini]

    method cantPasajeros() {
      return pasajeros.size()
    }
    method pasajeroMayorVitalidad() {
      return pasajeros.max{p => p.vitalidad()}
    }
    method pasajeroMenorVitalidad() {
      return pasajeros.min{p => p.vitalidad()}
    }
    method vitalidadEquilibrada() {
      return self.pasajeroMenorVitalidad().vitalidad()
       <= self.pasajeroMayorVitalidad().vitalidad() * 2
    }
    method elElegidoEstaABordo() {
      return pasajeros.any{p => p.esElElegido()}
    }
    method chocar() {
      pasajeros.forEach{p => p.saltar()}
      pasajeros.clear()
    }
    method acelerar() {
      pasajeros.filter{p => !p.esElElegido()}.forEach{p => p.saltar()}
    }
    //--------------------------//
    method pasajerosValiosos() {
      return pasajeros.filter{p => p.vitalidad() > 5}
    }
    method hayAlgunPasajeroAlHorno() {
      return pasajeros.any{p => p.vitalidad() == 0}
    }
    method pasajerosPuedenEnfrentarAgente() {
      return pasajeros.all{p => p.vitalidad() > 2}
    }
    method vitalidadPromedio() {
      return pasajeros.sum{p => p.vitalidad()} / pasajeros.size()
    }
    method cantPasajerosConVitalidadPar() {
      return pasajeros.count{p => p.vitalidad() % 2 == 0}
    }
    method simuclacroCombate() {
      pasajeros.forEach{p => p.saltar()}
      pasajeros.forEach{p => p.saltar()}
      pasajeros.forEach{p => p.saltar()}
    }
    method vitalidadPasajeros() {
      return pasajeros.map{p => p.vitalidad()}
    }
    method ordenarPasajerossegunVitalidad() {
      pasajeros = pasajeros.sortBy{p => p.vitalidad()}
    }
    method aQuienLeTocaLimpiarElBaño() {
      pasajeros.anyOne()
    }
    method cantElegidos() {
      return pasajeros.count{p => p.esElElegido()}
    }
    method potenciaVital() {
    return pasajeros.fold(1){aux, p => aux * p.vitalidad()}
    }
}