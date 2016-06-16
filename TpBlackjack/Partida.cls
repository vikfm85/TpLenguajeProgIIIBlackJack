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
	#deprecated.
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
	#deprecated.
	[unaColeccionDeCartas size > 0] whileTrue: 
			[| index unaCarta |
			index := Random new.
			unaCarta := unaColeccionDeCartas at: index.
			nuevaColeccion add: unaCarta.
			unaColeccionDeCartas remove: unaCarta].
	^nuevaColeccion!

obtenerGanador
	self obtenerGanadorSegun: self dificultad!

obtenerGanadorSegun: unaDificultad
	unaDificultad = 'Facil'
		ifTrue: 
			[self jugadores do: 
					[:unJugador |
					(unJugador estado = 'gano' or: [unJugador estado = 'perdio']) ifTrue: [^self].
					unJugador calcularPuntaje > self banca calcularPuntaje
						ifTrue: [unJugador ganar]
						ifFalse: 
							[unJugador calcularPuntaje = self banca calcularPuntaje
								ifTrue: [unJugador empatarFacil]
								ifFalse: [unJugador perder]]]].
	unaDificultad = 'Normal'
		ifTrue: 
			[self jugadores do: 
					[:unJugador |
					(unJugador estado = 'gano' or: [unJugador estado = 'perdio']) ifTrue: [^self].
					unJugador calcularPuntaje > self banca calcularPuntaje
						ifTrue: [unJugador ganar]
						ifFalse: 
							[unJugador calcularPuntaje = self banca calcularPuntaje
								ifTrue: [unJugador empatarNormal]
								ifFalse: [unJugador perder]]]]! !
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
!Partida categoriesFor: #obtenerGanador!public! !
!Partida categoriesFor: #obtenerGanadorSegun:!public! !

