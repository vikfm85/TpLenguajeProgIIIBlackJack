"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #GameShell
	instanceVariableNames: 'bancaPresenter jugadoresPresenter turnoJugador estadoBtnContinuar estadoBtnRepartir'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GameShell guid: (GUID fromString: '{EB9CA0E6-9688-40E2-9E17-6FCD50E0D3E0}')!
GameShell comment: ''!
!GameShell categoriesForClass!MVP-Presenters! !
!GameShell methodsFor!

agregarCarta: carta en: cartaPresenter
	^ImagePresenter createIn: cartaPresenter on: carta imagen!

agregarCartaVuelta: carta en: cartaPresenter
	^ImagePresenter createIn: cartaPresenter on: carta imagenVuelta!

cargarBanca: laBanca
	self cargarPlayerPresenter: laBanca en: bancaPresenter.
	"La banca no tiene puntos ni partidas ganadas"
	bancaPresenter subPresenters first puntosPresenter: ''.
	bancaPresenter subPresenters first partidasGanadasPresenter: ''.
	bancaPresenter subPresenters first estadoJugador: ''.
	(self view viewNamed: 'plantarseBtn') hide.
	(self view viewNamed: 'pedirBtn') hide!

cargarJugadores: jugadores
	jugadores do: [:each | self cargarPlayerPresenter: each]!

cargarPlayerPresenter: jugador
	self cargarPlayerPresenter: jugador en: jugadoresPresenter!

cargarPlayerPresenter: jugador en: unPresenter
	| presenter |
	presenter := PlayerPresenter createIn: unPresenter on: jugador.
	presenter imagenJugador: jugador imagen.
	presenter nombreJugador: jugador nombre.
	presenter puntosPresenter: jugador puntos displayString.
	presenter partidasGanadasPresenter: jugador partidasGanadas displayString.
	presenter estadoJugador: jugador estado!

createComponents
	"Create the presenters contained by the receiver"

	super createComponents.
	bancaPresenter := self add: Presenter new name: 'banca'.
	jugadoresPresenter := self add: Presenter new name: 'jugadores'!

esHumano
	| jugador |
	jugador := self model jugadores at: turnoJugador.
	^jugador estrategia class = Humano!

estadoBtnContinuar
	^estadoBtnContinuar!

estadoBtnContinuar: anObject
	estadoBtnContinuar := anObject!

estadoBtnRepartir
	^estadoBtnRepartir!

estadoBtnRepartir: anObject
	estadoBtnRepartir := anObject!

guardarPartida
	"|archivo jugador1 jugador2 jugador3 jugador4 |
	
	jugador1 := self model jugador1.
	jugador2 := self model jugador2.
	jugador3 := self model jugador3.
	jugador4 := self model jugador4.
	
	archivo := FileStream write: ('partida.txt') text: false.
	

	archivo nextPutAll: (self model dificultad).
	archivo cr.
	archivo nextPutAll:( self model cantidadMazos). 
	archivo cr.
	archivo nextPutAll: (self model banca dificultad).
	archivo cr.
	archivo cr.
	
	
	
	

	(jugador1 estoyDisponible ) ifTrue: [ 
	archivo nextPutAll:(jugador1 tipo ).
	archivo cr.
	archivo nextPutAll:(jugador1 nombre ).
	archivo cr.
	archivo nextPutAll: ((jugador1 puntaje ) printString).
	archivo cr.
	archivo nextPutAll: ((jugador1 victorias) printString).
	archivo cr.
	archivo cr.
]ifFalse:[archivo nextPutAll:(jugador1 tipo ).
	archivo cr.
	archivo cr.
	archivo cr.
	archivo cr.
	archivo cr.].


	(jugador2 estoyDisponible ) ifTrue: [ 
	archivo nextPutAll:(jugador2 tipo ).
	archivo cr.
	archivo nextPutAll:(jugador2 nombre ).
	archivo cr.
	archivo nextPutAll: ((jugador2 puntaje ) printString).
	archivo cr.
	archivo nextPutAll: ((jugador2 victorias) printString).
	archivo cr.
	]ifFalse:[archivo nextPutAll:(jugador2 tipo ).
	archivo cr.
	archivo cr.
	archivo cr.
	archivo cr.
	archivo cr.].


(jugador3 estoyDisponible ) ifTrue: [ 
	archivo nextPutAll:(jugador3 tipo ).
	archivo cr.
	archivo nextPutAll:(jugador3 nombre ).
	archivo cr.
	archivo nextPutAll: ((jugador3 puntaje ) printString).
	archivo cr.
	archivo nextPutAll: ((jugador3 victorias) printString).
	archivo cr.
	archivo cr.
]ifFalse:[archivo nextPutAll:(jugador3 tipo ).
	archivo cr.
	archivo cr.
	archivo cr.
	archivo cr.
	archivo cr.].


(jugador4 estoyDisponible ) ifTrue: [ 
	archivo nextPutAll:(jugador4 tipo ).
	archivo cr.
	archivo nextPutAll:(jugador4 nombre ).
	archivo cr.
	archivo nextPutAll: ((jugador4 puntaje ) printString).
	archivo cr.
	archivo nextPutAll: ((jugador4 victorias) printString).
	archivo cr.
	archivo cr.
]ifFalse:[archivo nextPutAll:(jugador4 tipo ).
	archivo cr.
	archivo cr.
	archivo cr.
	archivo cr.
	archivo cr.].

self exit."!

iniciarJuego
	| ganadores stringGanadores |
	#deprecated.
	self repartir.
	[self seguirJugando] whileTrue: 
			["Juegan los jugadores"
			jugadoresPresenter subPresenters do: 
					[:each |
					each model jugarCon: self model.
					self refrescarDatosPlayerPresenter: each].

			"Juega la banca"
			bancaPresenter subPresenters first model jugarCon: self model.
			self resfrescarCartasDe: bancaPresenter subPresenters first.

			"Resultado"
			self model obtenerGanadorSegun: self model dificultad].
	ganadores := self model jugadores select: [:each | each partidasGanadas == 5].
	stringGanadores := String empty.
	ganadores do: [:each | stringGanadores := stringGanadores , ' ' , each nombre].
	MessageBox notify: stringGanadores caption: 'Felicitaciones'
	"self jugadoresPresenter detect: [:each | each partidasGanadas = 5]			
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
	self banca jugarCon: self."!

iniciarPartida
	self model jugadores do: [:each | each estado: 'jugando'].
	self repartir.
	self estadoBtnContinuar: true.
	self view refreshContents!

iniciarTurno
	"Juegan los jugadores"

	| jugadorPresenter |
	jugadorPresenter := jugadoresPresenter subPresenters at: turnoJugador.
	jugadorPresenter model jugarCon: self model.
	self refrescarDatosPlayerPresenter: jugadorPresenter.
	MessageBox notify: 'Termino de jugar la mano'
		caption: 'El jugador ' , (self model jugadores at: turnoJugador) nombre.
	turnoJugador == self model jugadores size
		ifTrue: 
			[self estadoBtnContinuar: false.
			self terminarTurno.
			^self].
	turnoJugador < self model jugadores size ifTrue: [turnoJugador := turnoJugador + 1]!

jugadorResultado
	| jugador |
	jugador := self model jugadores at: turnoJugador.
	jugador perdio ifTrue: [^false] ifFalse: [jugador gano ifTrue: [^false]].
	^true!

jugar
	| jugadorPresenter |
	jugadorPresenter := jugadoresPresenter subPresenters at: turnoJugador.
	jugadorPresenter model estrategia pedirUnaCartaA: self model para: jugadorPresenter model.
	self refrescarDatosPlayerPresenter: jugadorPresenter!

onViewOpened
	super onViewOpened.
	self estadoBtnRepartir: true.
	self estadoBtnContinuar: false.
	self cargarJugadores: self model jugadores.
	self cargarBanca: self model banca.
	"self repartir."
	self view refreshContents.
	turnoJugador := 1!

plantarse
	| jugadorPresenter |
	jugadorPresenter := jugadoresPresenter subPresenters at: turnoJugador.
	jugadorPresenter model plantarse.
	self refrescarDatosPlayerPresenter: jugadorPresenter!

puedeJugar
	| perdedores |
	self model jugadores do: 
			[:each |
			each partidasGanadas == 5
				ifTrue: 
					[self estadoBtnRepartir: false.
					self estadoBtnContinuar: false.
					^false]].
	perdedores := self model jugadores select: [:each | each puntos == 0].
	perdedores size == self model jugadores size
		ifTrue: 
			[self estadoBtnRepartir: false.
			self estadoBtnContinuar: false.
			^false].
	^true!

queryCommand: query
	"Private - Enters details about a potential command for the receiver into the 
	<CommandQuery>,  query."

	| cmd |
	cmd := query commandSymbol.
	cmd == #iniciarTurno
		ifTrue: 
			[query isEnabled: (self puedeJugar and: [self estadoBtnContinuar]).
			^true].
	cmd == #plantarse
		ifTrue: 
			[query isEnabled: (self esHumano and: [self sePuedeJugar]).
			^true].
	cmd == #jugar
		ifTrue: 
			[query isEnabled: (self esHumano and: [self sePuedeJugar]).
			^true].
	cmd == #iniciarPartida
		ifTrue: 
			[query isEnabled: self estadoBtnRepartir.
			^true].
	^super queryCommand: query!

refrescarCartasDe: playerPresenter
	playerPresenter cartasPresenter subPresenters
		do: [:each | playerPresenter cartasPresenter remove: each].
	playerPresenter model cartas
		do: [:each | self agregarCarta: each en: playerPresenter cartasPresenter].
	playerPresenter view refreshContents!

refrescarDatosPlayerPresenter: unPresenter
	unPresenter puntosPresenter: unPresenter model puntos displayString.
	unPresenter partidasGanadasPresenter: unPresenter model partidasGanadas displayString.
	unPresenter estadoJugador: unPresenter model estado.
	self refrescarCartasDe: unPresenter!

repartir
	"Reparte carta a todos los jugadores y a la banca"

	"Le raparte 2 cartas a cada jugador"

	| banca |
	self model jugadores do: [:each | each cartas removeAll].
	self model banca cartas removeAll.
	self model jugadores do: [:each | each estado: 'jugando'].
	jugadoresPresenter subPresenters do: [:each | self refrescarDatosPlayerPresenter: each].
	self refrescarCartasDe: bancaPresenter subPresenters first.
	jugadoresPresenter subPresenters do: 
			[:jugadorPresenter |
			self model entregarCartas: 2 a: jugadorPresenter model.

			"Pregunto si tiene 2 cartas porque No disponible no tiene nada que agregar"
			jugadorPresenter model cartas size > 1
				ifTrue: 
					[self agregarCarta: jugadorPresenter model cartas first en: jugadorPresenter cartasPresenter.
					self agregarCarta: jugadorPresenter model cartas second en: jugadorPresenter cartasPresenter]].

	"Le reparte 2 cartas a la banca"
	banca := bancaPresenter subPresenters first.
	self model entregarCartas: 2 a: banca model.
	self agregarCarta: banca model cartas first en: banca cartasPresenter.
	self agregarCartaVuelta: banca model cartas second en: banca cartasPresenter.
	estadoBtnRepartir := false!

seguirJugando
	| perdedores |
	self model jugadores do: 
			[:each |
			each partidasGanadas == 5
				ifTrue: 
					[self estadoBtnRepartir: false.
					self estadoBtnContinuar: false.
					^false]].
	perdedores := self model jugadores select: [:each | each puntos == 0].
	perdedores size == self model jugadores size
		ifTrue: 
			[self estadoBtnRepartir: false.
			self estadoBtnContinuar: false.
			^false].
	^true!

sePuedeJugar
	^(self model jugadores at: turnoJugador) puedeJugar!

terminarTurno
	"Juega la banca"

	| stringGanadores ganadores |
	bancaPresenter subPresenters first cartasPresenter subPresenters second view
		image: self model banca cartas second imagen.
	self view refreshContents.
	bancaPresenter subPresenters first model jugarCon: self model.
	turnoJugador := 1.
	"Resultado"
	self model obtenerGanadorSegun: self model dificultad.
	jugadoresPresenter subPresenters do: [:each | self refrescarDatosPlayerPresenter: each].
	self estadoBtnRepartir: true.
	ganadores := self model jugadores select: [:each | each partidasGanadas == 5].
	stringGanadores := String empty.
	ganadores do: [:each | stringGanadores := stringGanadores , ' ' , each nombre].
	stringGanadores == ''
		ifFalse: 
			[MessageBox notify: stringGanadores caption: 'Felicitaciones'.
			self estadoBtnRepartir: false]! !
!GameShell categoriesFor: #agregarCarta:en:!public! !
!GameShell categoriesFor: #agregarCartaVuelta:en:!public! !
!GameShell categoriesFor: #cargarBanca:!public! !
!GameShell categoriesFor: #cargarJugadores:!public! !
!GameShell categoriesFor: #cargarPlayerPresenter:!public! !
!GameShell categoriesFor: #cargarPlayerPresenter:en:!public! !
!GameShell categoriesFor: #createComponents!public! !
!GameShell categoriesFor: #esHumano!public! !
!GameShell categoriesFor: #estadoBtnContinuar!accessing!public! !
!GameShell categoriesFor: #estadoBtnContinuar:!accessing!public! !
!GameShell categoriesFor: #estadoBtnRepartir!accessing!public! !
!GameShell categoriesFor: #estadoBtnRepartir:!accessing!public! !
!GameShell categoriesFor: #guardarPartida!public! !
!GameShell categoriesFor: #iniciarJuego!public! !
!GameShell categoriesFor: #iniciarPartida!public! !
!GameShell categoriesFor: #iniciarTurno!public! !
!GameShell categoriesFor: #jugadorResultado!public! !
!GameShell categoriesFor: #jugar!public! !
!GameShell categoriesFor: #onViewOpened!public! !
!GameShell categoriesFor: #plantarse!public! !
!GameShell categoriesFor: #puedeJugar!public! !
!GameShell categoriesFor: #queryCommand:!public! !
!GameShell categoriesFor: #refrescarCartasDe:!public! !
!GameShell categoriesFor: #refrescarDatosPlayerPresenter:!public! !
!GameShell categoriesFor: #repartir!public! !
!GameShell categoriesFor: #seguirJugando!public! !
!GameShell categoriesFor: #sePuedeJugar!public! !
!GameShell categoriesFor: #terminarTurno!public! !

!GameShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ShellView) 98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 679 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 4 410 8 ##(Smalltalk.ContainerView) 98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 7 0 0 0 592 530 234 240 98 0 32 234 256 704 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 2 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 535 866 1569 53 592 802 8 #text: 98 1 8 'Continuar ' 592 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 11 1 0 0 16 3 0 0 37 1 0 0] 98 3 410 608 98 15 0 592 98 2 8 1140850688 131073 1040 0 0 0 7 0 0 0 1040 530 234 240 704 32 234 256 98 2 410 8 ##(Smalltalk.PushButton) 98 20 0 1040 98 2 8 1140924416 1 1168 0 0 0 7 0 0 0 1168 0 8 4294902245 1180998 4 ##(Smalltalk.CommandDescription) 8 #iniciarTurno 8 'Continuar' 1 1 0 0 32 0 0 0 738 202 208 98 3 802 832 98 2 866 1 1 866 523 53 1168 802 8 #isEnabled: 98 1 32 1168 802 928 98 1 8 'Continuar' 1168 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 5 1 0 0 26 0 0 0] 98 0 866 193 193 0 29 8 'continuarBtn' 0 738 202 208 98 2 802 832 98 2 866 1 1 866 523 53 1040 802 928 98 1 8 'continuarTurno' 1040 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 5 1 0 0 26 0 0 0] 98 1 1168 1584 0 27 410 608 98 15 0 592 98 2 8 1140850688 131073 1824 0 0 0 7 0 0 0 1824 530 234 240 704 32 234 256 98 2 410 1184 98 20 0 1824 98 2 8 1140924416 1 1952 0 0 0 7 0 0 0 1952 0 8 4294902245 1266 8 #iniciarPartida 8 'Repartir' 1 1 0 0 32 0 0 0 738 202 208 98 3 802 832 98 2 866 1 1 866 523 53 1952 802 1456 98 1 32 1952 802 928 98 1 8 'Repartir' 1952 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 5 1 0 0 26 0 0 0] 98 0 1584 0 29 8 'repartirBtn' 0 738 202 208 98 2 802 832 98 2 866 523 1 866 523 53 1824 802 928 98 1 8 'Iniciar Partida' 1824 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 1 0 0 0 0 0 0 10 2 0 0 26 0 0 0] 98 1 1952 1584 0 27 410 608 98 15 0 592 98 2 8 1140850688 131073 2544 0 0 0 7 0 0 0 2544 530 234 240 704 32 234 256 98 2 410 1184 98 20 0 2544 98 2 8 1140924416 1 2672 0 0 0 7 0 0 0 2672 0 8 4294902245 1266 8 #guardarPartida 8 'Guardar Partida' 1 1 0 0 32 0 0 0 738 202 208 98 3 802 832 98 2 866 1 1 866 525 53 2672 802 1456 98 1 32 2672 802 928 98 1 8 'Guardar Partida' 2672 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 6 1 0 0 26 0 0 0] 98 0 1584 0 29 8 'guardarBtn' 0 738 202 208 98 2 802 832 98 2 866 1045 1 866 525 53 2544 802 928 98 1 8 'Guardar Partida' 2544 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 2 0 0 0 0 0 0 16 3 0 0 26 0 0 0] 98 1 2672 1584 0 27 1584 0 27 327734 ##(Smalltalk.Float) 8 154 153 153 153 153 153 185 63 410 608 98 15 0 416 98 2 8 1140850688 131073 3296 0 0 0 7 0 0 0 3296 530 234 240 704 32 234 256 704 0 738 202 208 98 1 802 832 98 2 866 1 1 866 1569 535 3296 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 16 3 0 0 11 1 0 0] 98 0 1584 0 27 3 16 234 256 98 4 3296 8 'banca' 410 608 98 15 0 416 98 2 8 1140850688 131073 3616 0 0 0 7 0 0 0 3616 530 234 240 704 32 234 256 704 0 738 202 208 98 1 802 832 98 2 866 1 587 866 1569 537 3616 978 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 37 1 0 0 16 3 0 0 49 2 0 0] 98 0 1584 0 27 8 'jugadores' 0 0 0 0 0 1 263494 3 ##(Smalltalk.Icon) 0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'Recursos\blackjack.ico' 0 0 0 866 1601 1201 1 0 0 738 202 208 98 3 802 832 98 2 866 2559 21 866 1601 1201 416 802 928 98 1 8 'Blackjack' 416 802 8 #updateMenuBar 704 416 978 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 10 0 0 0 31 8 0 0 98 2 0 0] 98 3 3296 592 3616 1584 0 27 )! !
!GameShell class categoriesFor: #resource_Default_view!public!resources-views! !

