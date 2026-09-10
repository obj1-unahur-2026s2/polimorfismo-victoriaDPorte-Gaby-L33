import atletas.*

/*
Tenis: tiene un presupuesto de $200 más $3 por cada familiar y 
amigx que lleve victoria. Inicialmente se sabe que lleva 5 invitados, 
pero puede cambiar. Esta disciplina requiere 4 entrenadores pero puede cambiar.
*/
object tenis {
    var cantidadDeEntrenadoresActual = 4

    method cantidadDeEntrenadores() = cantidadDeEntrenadoresActual

    method presupuesto() = 200 + 3 * victoria.cantidadDeInvitados()

    method cambiarCantidadDeEntrenadores(nuevaCantidad){
        cantidadDeEntrenadoresActual = nuevaCantidad
    }
}

/*
Judo: su costo es $120 multiplicado por la cantidad de medallas de oro 
ganadas por el país en la historia del Judo, que arranca en 1 pero el 
Comite Olímpico puede, en el momento que corresponda, sumar de a una 
medalla de judo ganada. El judo requiere 2 entrenadores siempre.
*/
object judo {
    var cantidadDeMedallasActual = 1

    method cantidadDeEntrenadores() = 2

    method presupuesto() = 120 * cantidadDeMedallasActual

    method sumarUnaMedalla(){
        cantidadDeMedallasActual += 1
    }

}

/*
Hockey: tiene un presupuesto de $300 más $5 por cada familiar y 
amigx que lleve victoria. Inicialmente se sabe que lleva 5 invitados, 
pero puede cambiar. Esta disciplina requiere 6 entrenadores y no puede cambiar esa cantidad.
*/
object hockey {
    method cantidadDeEntrenadores() = 6

    method presupuesto() = 300 + 5 * victoria.cantidadDeInvitados()
}