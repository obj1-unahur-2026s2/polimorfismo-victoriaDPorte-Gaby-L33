import disciplinas.*
import elementos.*

/*
Se requiere saber el presupuesto total que esta 
atleta necesita para encarar los juegos olímpicos.
De victoria se sabe su edad que al día de hoy es 23, 
su altura (al inicio, 170 cm), la disciplina que practica 
(arranca con tenis) y un elemento indispensable para su 
realización (de movida, la raqueta).

Su presupuesto sale de la suma entre el presupuesto 
propio de victoria (se describe más abajo), más el 
presupuesto que demanda la disciplina que practica.
*/
object victoria {
    var altura = 170
    var disciplinaActual = tenis
    var elementoActual = raqueta
    var invitadosQueLleva = 5

    method edad() = 23

    method cantidadDeInvitados() = invitadosQueLleva

    method cambiarAltura(nuevaAltura){
        altura = nuevaAltura
    }

    method cambiarDisciplina(nuevaDisciplina){
        disciplinaActual = nuevaDisciplina
    }

    method cambiarElemento(nuevoElemento){
        elementoActual = nuevoElemento
    }

    method cambiarCantidadDeInvitados(nuevaCantidad){
        invitadosQueLleva = nuevaCantidad
    }

    method presupuesto() = disciplinaActual.entrenadores() * comiteOlimpico.pagoALosEntrenadores + 
    disciplinaActual.presupuesto()

}

/*
El presupuesto propio del atleta depende de la 
cantidad de entrenadores que tiene la disciplina 
que practica, multiplicada por el valor que hay 
que pagarle a cada entrenador; ese valor lo 
establece el Comite Olímpico (que lo puede cambiar 
según lo considere), y arranca en $10.
la cantidad de medallas de oro ganadas por el país en la historia
del Judo, que arranca en 1 pero el Comite Olímpico puede, 
en el momento que corresponda, sumar de a una medalla de judo ganada.
*/
object comiteOlimpico {
    var pagoALosEntrenadores = 10

    method cambiarPagoALosEntrenadores(nuevoValor){
        pagoALosEntrenadores = nuevoValor
    }

    method sumarUnaMedallaDeJudo(){
        judo.sumarUnaMedalla()
    }
}