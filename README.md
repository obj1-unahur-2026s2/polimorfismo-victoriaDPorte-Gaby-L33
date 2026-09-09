# Victoria D Porte

## Pautas para la resolución del ejercicio
Desarrollar la solución en los archivos:
- atletas.wlk
- disciplinas.wlk
- elementos.wlk
- testVictoriaDPorte.wtest

No realizar cambios en los nombres de archivo, ya que las correcciones solo tienen en cuenta los objetos modelados en los mismos. 
Respecto a los nombres de objetos y nombres de mensajes a utilizar en el modelado, remitirse al **glosario** de "nombres obligatorios" que está al pie de este documento (respetar mayúsculas y minúsculas). En caso que utilicen  nombres distintos, los test de las correcciones no funcionarán y restan puntos de la calificación. Tener en cuenta que pueden y algunas veces deben definir métodos y objetos auxiliares, pero los que figuran como obligatorios si o si tienen que existir para que corran los test, y deben cumplir la funcionalidad correcta.

---

## Enunciado

Necesitamos un software para gestionar las necesidades del deporte nacional de cara a Los Ángeles 2028.
Para ello tenemos a una tal Victoria D. Porte, que es nuestra carta secreta.


Se requiere saber el presupuesto total que esta atleta necesita para encarar los juegos olímpicos.  
De victoria se sabe su edad que al día de hoy es 23, su altura (al inicio, 170 cm), la disciplina que practica (arranca con tenis) y un elemento indispensable para su realización (de movida, la raqueta).

Su presupuesto sale de la suma entre el presupuesto propio de victoria (se describe más abajo), más el presupuesto que demanda la disciplina que practica.

Las disciplinas existentes son:

- **Tenis**: tiene un presupuesto de $200 más $3 por cada familiar y amigx que lleve victoria. Inicialmente se sabe que lleva 5 invitados, pero puede cambiar. Esta disciplina requiere 4 entrenadores pero puede cambiar. 

- **Judo**: su costo es $120 multiplicado por la cantidad de medallas de oro ganadas por el país en la historia del Judo, que arranca en 1 pero el Comite Olímpico puede, en el momento que corresponda, sumar de a una medalla de judo ganada. El judo requiere 2 entrenadores siempre.

El presupuesto propio del atleta depende de la cantidad de entrenadores que tiene la disciplina que practica, multiplicada por el valor que hay que pagarle a cada entrenador; ese valor lo establece el Comite Olímpico (que lo puede cambiar según lo considere), y arranca en $10. A eso, se le suma el precio del elemento que tiene.

Costos de los elementos:
- El costo de una raqueta es alto, son $15 por cada año del tenista, pero sin superar los $400,
- El costo de un traje de judo (judogi) es de $1.5 por cada cm de altura del deportista, y como mínimo vale 200. 

Casos de prueba:	
- Victoria se quiere parecer a Pareto (que mide 150 cms), se hace pequeña, practica judo y por lo tanto necesita un judogi.
- Victoria ahora se quiere parecer a Delpo y empieza a practicar tenis. Elonga con intensidad hasta llegar a los dos metros diez, necesita una raqueta y tiene dos entrenadores.

Se pide: 
1. Modelar en objetos los requerimientos planteados.
2. Polimorfismo: Indicar dónde, qué objetos intervienen y por qué se utiliza. 
3. Probar los casos planteados.
4. Agregar un nuevo deporte, el hockey y definir todo lo que sea necesario para que funcione.
5. ¿Que pasaria si victoria agarra la raqueta para practicar judo? Probar otras posibles combinaciones


## Glosario de objetos y métodos

**Objetos**

- comiteOlimpico
- judo
- judogi
- raqueta
- tenis
- victoria

**Métodos**

- altura
- cambiarAltura
- cambiarCantidadDeInvitados
- cambiarDisciplina
- cambiarElemento
- cambiarEntrenadores
- cantidadDeInvitados
- costoElemento
- cumplirAnios
- edad
- entrenadores
- medallasDeJudoGanadas
- presupuesto
- presupuestoDisciplina
- sumarUnaMedallaDeJudoGanada
- valorPorEntrenador
