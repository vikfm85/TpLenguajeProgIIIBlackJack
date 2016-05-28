"Filed out from Dolphin Smalltalk 7"!

Model subclass: #PartidaBuilder
	instanceVariableNames: 'jugadores cartas random dificultad'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PartidaBuilder guid: (GUID fromString: '{61804444-1619-4758-8859-5BB004682B78}')!
PartidaBuilder comment: ''!
!PartidaBuilder categoriesForClass!MVP-Models! !
!PartidaBuilder methodsFor!

addDificultad: unaDificultad
	dificultad := unaDificultad!

addJugador: unJugador
	jugadores add: unJugador.!

addMazo
	cartas addAll: MazoFactory crearMazo.!

build
	| partida |
	partida := Partida new.
	partida dificultad: dificultad.
	partida jugadores addAll: jugadores.
	partida cartas addAll: self mezclarCartas.
	partida banca: Jugador newBanca.
	^partida!

initialize
	jugadores := OrderedCollection new.
	cartas := OrderedCollection new!

mezclarCartas
	| cartasMezcladas cartasRestantes |
	cartasMezcladas := OrderedCollection new.
	cartasRestantes := OrderedCollection new.
	cartasRestantes addAll: cartas.
	cartas size timesRepeat: [self quitarCartaDe: cartasRestantes yAgregarEn: cartasMezcladas].
	^cartasMezcladas!

quitarCartaDe: cartasRestantes yAgregarEn: cartarMezcladas
	| carta |
	carta := self randomFrom: cartasRestantes.
	cartasRestantes remove: carta.
	cartarMezcladas add: carta!

random
	^random ifNil: [random := Random new]!

randomFrom: anOrderedCollection 
	| index |
	index := (self random next * anOrderedCollection size) truncated + 1.
	^anOrderedCollection at: index! !
!PartidaBuilder categoriesFor: #addDificultad:!public! !
!PartidaBuilder categoriesFor: #addJugador:!public! !
!PartidaBuilder categoriesFor: #addMazo!public! !
!PartidaBuilder categoriesFor: #build!public! !
!PartidaBuilder categoriesFor: #initialize!public! !
!PartidaBuilder categoriesFor: #mezclarCartas!public! !
!PartidaBuilder categoriesFor: #quitarCartaDe:yAgregarEn:!public! !
!PartidaBuilder categoriesFor: #random!public! !
!PartidaBuilder categoriesFor: #randomFrom:!public! !

