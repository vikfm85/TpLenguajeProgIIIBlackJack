"Filed out from Dolphin Smalltalk 7"!

Model subclass: #Partida
	instanceVariableNames: 'jugadores banca cartas dificultad'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Partida guid: (GUID fromString: '{D0212CD8-AA07-4BB4-92D1-640495C233DA}')!
Partida comment: ''!
!Partida categoriesForClass!MVP-Models! !
!Partida methodsFor!

banca
	^banca!

banca: anObject
	banca := anObject!

cargarPartida!

cartas
	^cartas!

cartas: anObject
	cartas := anObject!

dificultad
	^dificultad!

dificultad: anObject
	dificultad := anObject!

entregarCartas: unaCantidad a: unJugador
	unJugador tomarCartas: unaCantidad de: self cartas!

finalizar!

guardarPartida!

iniciarPartida
	| jugadoresEnJuego |
	self jugadores do: 
			[:unJugador | 
			unJugador partidasGanadas = 5 
				ifTrue: [MessageBox notify: 'El jugador' , unJugador nombre , 'ha gananado la partida']].
	self jugadores do: 
			[:unJugador | 
			unJugador puntos = 0 
				ifTrue: 
					[unJugador estrategia: NoDisponible new.
					MessageBox notify: 'Perdiste la partida!!!!!!']].
	self randomFrom: self cartas.
	self repartir.
	self jugadores 
		do: [:unJugador | [unJugador estado = 'jugando'] whileTrue: [unJugador jugarCon: self]].
	self banca jugarCon: self.
	self obtenerGanadorSegun: self dificultad!

initialize
	jugadores := OrderedCollection new.
	cartas := OrderedCollection new!

jugadores
	^jugadores!

jugadores: anObject
	jugadores := anObject!

mezclar: unaColeccionDeCartas
	| nuevaColeccion |
	[unaColeccionDeCartas size > 0] whileTrue: 
			[| index unaCarta |
			index := Random new.
			unaCarta := unaColeccionDeCartas at: index.
			nuevaColeccion add: unaCarta.
			unaColeccionDeCartas remove: unaCarta].
	^nuevaColeccion!

obtenerGanadorSegun: unaDificultad 
	unaDificultad = 'facil' 
		ifTrue: 
			[self jugadores do: 
					[:unJugador | 
					unJugador calcularPuntaje >= self banca calcularPuntaje 
						ifTrue: [unJugador ganar]
						ifFalse: [unJugador perder]]].
	unaDificultad = 'normal' 
		ifTrue: 
			[self jugadores do: 
					[:unJugador | 
					unJugador calcularPuntaje > self banca calcularPuntaje 
						ifTrue: [unJugador ganar]
						ifFalse: 
							[unJugador calcularPuntaje = self banca calcularPuntaje 
								ifTrue: [unJugador empatar]
								ifFalse: [unJugador perder]]]]!

randomFrom: anOrderedCollection 
	| index |
	index := (self random next * anOrderedCollection size) truncated + 1.
	^anOrderedCollection at: index!

repartir
	
	"Le raparte 2 cartas a cada jugador"
	(1 to: jugadores size) do: [:jugador | self entregarCartas: 2 a: jugador].
	"Le reparte 2 cartas a la banca"
	self entregarCartas: 2 a: self banca! !
!Partida categoriesFor: #banca!accessing!public! !
!Partida categoriesFor: #banca:!accessing!public! !
!Partida categoriesFor: #cargarPartida!public! !
!Partida categoriesFor: #cartas!accessing!public! !
!Partida categoriesFor: #cartas:!accessing!public! !
!Partida categoriesFor: #dificultad!accessing!public! !
!Partida categoriesFor: #dificultad:!accessing!public! !
!Partida categoriesFor: #entregarCartas:a:!public! !
!Partida categoriesFor: #finalizar!public! !
!Partida categoriesFor: #guardarPartida!public! !
!Partida categoriesFor: #iniciarPartida!public! !
!Partida categoriesFor: #initialize!public! !
!Partida categoriesFor: #jugadores!accessing!public! !
!Partida categoriesFor: #jugadores:!accessing!public! !
!Partida categoriesFor: #mezclar:!public! !
!Partida categoriesFor: #obtenerGanadorSegun:!public! !
!Partida categoriesFor: #randomFrom:!public! !
!Partida categoriesFor: #repartir!public! !

