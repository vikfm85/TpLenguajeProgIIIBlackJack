"Filed out from Dolphin Smalltalk 7"!

Model subclass: #PartidaBuilder
	instanceVariableNames: 'jugadores cartas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PartidaBuilder guid: (GUID fromString: '{61804444-1619-4758-8859-5BB004682B78}')!
PartidaBuilder comment: ''!
!PartidaBuilder categoriesForClass!MVP-Models! !
!PartidaBuilder methodsFor!

addJugador: unJugador
	jugadores add: unJugador.!

addMazo
	cartas addAll: MazoFactory crearMazo.!

build
	| partida |
	partida := Partida new.
	partida jugadores addAll: jugadores.
	partida cartas addAll: cartas.
	partida banca: Jugador newBanca.
	^partida!

initialize
	jugadores := OrderedCollection new.
	cartas := OrderedCollection new! !
!PartidaBuilder categoriesFor: #addJugador:!public! !
!PartidaBuilder categoriesFor: #addMazo!public! !
!PartidaBuilder categoriesFor: #build!public! !
!PartidaBuilder categoriesFor: #initialize!public! !

