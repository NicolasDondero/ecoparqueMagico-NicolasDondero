object empresa {
    const habitantes = #{}
    const trabajadores = #{}
    
    method esJoven(unHabitante) = unHabitante.esJoven()

    method edadHabitante(unHabitante) = unHabitante.edad()

    method esHabitanteDiurno(unHabitante) = unHabitante.esDiurno()

    method agregarHabitante(unHabitante) {
        habitantes.add(unHabitante)
    }

    method agregarTrabajador(unTrabajador) {
        trabajadores.add(unTrabajador)
    }

    method puedeCuidar(unHabitante, unTrabajador) = 
        unTrabajador.estaEnHorario() && 
        unTrabajador.habilidades().contains(unHabitante.cualidades())
}

//trabajadores
object rodrigo {
    method añosExperiencia() = 0
    const habilidades = #{}

    method habilidades() = habilidades

    var turnoLaboral = "Mañana"
    method turnoLaboral(unTurno){
        turnoLaboral = unTurno
    }
    method turnoLaboral() = turnoLaboral

    method estaEnHorario(unTurno){
        return self.turnoLaboral() == unTurno
    }

    var tutor = null
    method tutor(unTutor) {
        tutor = unTutor
    }
    method tutorActual() = tutor

    method sabeNadar(){
        return true 
    }

    method cuidar(criatura) {
            criatura.alimentar()
            criatura.entrenar()
    }

}

object requisitosEspeciales {

}

//habitantes
object dragon {
    method edad() = 90
    method esHabitanteDiurno() = true
    var temperaturaCorporal = 200

    method temperaturaCorporal() = temperaturaCorporal

    method alimentar() {
        temperaturaCorporal += 20
    }

    method volar() {
        temperaturaCorporal -= 40
    }

    method puedeEntrenarse(){
        return temperaturaCorporal >= 100
    }

    method dormir() {
        temperaturaCorporal = 200
    }

    method esDragonJoven(dragon) = dragon.edad() <= 100
}

object unicornio {
    method edad() = 30
    method esHabitanteDiurno() = true
    var poderMagico = 3

    var estaFeliz = true

    method estaFeliz() = estaFeliz

    method alimentar() {
        poderMagico += 1
    }

    method puedeEntrenarse(){
        return poderMagico >= 5
    }

    method dormir() {
        estaFeliz = not estaFeliz
    }

    method esUnicornioJoven() = self.edad() <= 50
}

object sirena {
    method edad() = 60
    method esHabitanteDiurno() = false
    var habilidadAcuatica = 40

    var estaFeliz = true

    method estaFeliz() = estaFeliz

    method alimentar() {
        habilidadAcuatica *= 0.5
    }

    method nadar(metros) {
        habilidadAcuatica -= metros
    }

    method practicarParaBatalla() {
        habilidadAcuatica -= 20
        self.nadar(habilidadAcuatica / 2)
    }

    method dormir() {
        estaFeliz = not estaFeliz
    }

    method esUnicornioJoven() = self.edad() <= 50
}