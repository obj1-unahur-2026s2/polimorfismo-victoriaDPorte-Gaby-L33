import atletas.*

/*
El costo de una raqueta es alto, son $15 por cada año del tenista, 
pero sin superar los $400, 
*/
object raqueta {
    method costo() = 400.min(15 * victoria.edad())
}

/*
El costo de un traje de judo (judogi) es de $1.5 por 
cada cm de altura del deportista, y como mínimo vale 200.
*/
object judogi {
    method costo() = 200.max(1.5 * victoria.altura)
}

/*
El costo de un palo de hockey son de $10 por cada año del tenista, 
pero sin superar los $300, 
*/
object stick {
    method costo() = 300.min(10 * victoria.edad())
}