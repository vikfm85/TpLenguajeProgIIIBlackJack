"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #GameShell
	instanceVariableNames: 'bancaPresenter jugadoresPresenter'
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
	bancaPresenter subPresenters first partidasGanadasPresenter: ''!

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

iniciarJuego
	self repartir.

	"Juegan los jugadores"
	jugadoresPresenter subPresenters do: 
			[:each |
			each model jugarCon: self model.
			self refrescarDatosPlayerPresenter: each].

	"Juega la banca"
	bancaPresenter subPresenters first model jugarCon: self model.
	self resfrescarCartasDe: bancaPresenter subPresenters first.

	"Resultado"
	self model obtenerGanador

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
	self banca jugarCon: self.
	self obtenerGanadorSegun: self dificultad"!

onViewOpened
	super onViewOpened.
	self cargarJugadores: self model jugadores.
	self cargarBanca: self model banca.
	self view refreshContents.
	self iniciarJuego!

refrescarDatosPlayerPresenter: unPresenter
	unPresenter puntosPresenter: unPresenter model puntos displayString.
	unPresenter partidasGanadasPresenter: unPresenter model partidasGanadas displayString.
	unPresenter estadoJugador: unPresenter model estado.
	self resfrescarCartasDe: unPresenter!

repartir
	"Reparte carta a todos los jugadores y a la banca"

	"Le raparte 2 cartas a cada jugador"
	| banca |
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
	self agregarCartaVuelta: banca model cartas second en: banca cartasPresenter!

resfrescarCartasDe: playerPresenter
	playerPresenter cartasPresenter subPresenters
		do: [:each | playerPresenter cartasPresenter remove: each].
	playerPresenter model cartas
		do: [:each | self agregarCarta: each en: playerPresenter cartasPresenter].
	playerPresenter view refreshContents! !
!GameShell categoriesFor: #agregarCarta:en:!public! !
!GameShell categoriesFor: #agregarCartaVuelta:en:!public! !
!GameShell categoriesFor: #cargarBanca:!public! !
!GameShell categoriesFor: #cargarJugadores:!public! !
!GameShell categoriesFor: #cargarPlayerPresenter:!public! !
!GameShell categoriesFor: #cargarPlayerPresenter:en:!public! !
!GameShell categoriesFor: #createComponents!public! !
!GameShell categoriesFor: #iniciarJuego!public! !
!GameShell categoriesFor: #onViewOpened!public! !
!GameShell categoriesFor: #refrescarDatosPlayerPresenter:!public! !
!GameShell categoriesFor: #repartir!public! !
!GameShell categoriesFor: #resfrescarCartasDe:!public! !

!GameShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ShellView) 98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 679 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 2 410 8 ##(Smalltalk.ContainerView) 98 15 0 416 98 2 8 1140850688 131073 592 0 0 0 7 0 0 0 592 530 234 240 98 0 32 234 256 704 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 1 866 1569 561 592 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 16 3 0 0 24 1 0 0] 98 0 866 193 193 0 27 3 16 234 256 98 4 592 8 'banca' 410 608 98 15 0 416 98 2 8 1140850688 131073 1040 0 0 0 7 0 0 0 1040 530 234 240 704 32 234 256 704 0 738 202 208 98 1 802 832 98 2 866 1 561 866 1569 563 1040 914 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 24 1 0 0 16 3 0 0 49 2 0 0] 98 0 976 0 27 8 'jugadores' 0 0 0 0 0 1 263494 3 ##(Smalltalk.Icon) 0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'Recursos\blackjack.ico' 0 0 0 866 1601 1201 1 0 0 738 202 208 98 3 802 832 98 2 866 3839 21 866 1601 1201 416 802 8 #text: 98 1 8 'Blackjack' 416 802 8 #updateMenuBar 704 416 914 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 127 7 0 0 10 0 0 0 159 10 0 0 98 2 0 0] 98 2 592 1040 976 0 27 )! !
!GameShell class categoriesFor: #resource_Default_view!public!resources-views! !

