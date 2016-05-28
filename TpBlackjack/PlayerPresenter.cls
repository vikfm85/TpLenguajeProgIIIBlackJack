"Filed out from Dolphin Smalltalk 7"!

Presenter subclass: #PlayerPresenter
	instanceVariableNames: 'nombreJugador imagenJugador estadoJugador cartasPresenter puntosPresenter partidasGanadasPresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PlayerPresenter guid: (GUID fromString: '{1F5739D8-7D78-468E-8100-4BF7A460CFF4}')!
PlayerPresenter comment: ''!
!PlayerPresenter categoriesForClass!Unclassified! !
!PlayerPresenter methodsFor!

cartasPresenter
	^cartasPresenter!

createComponents
	"Create the presenters contained by the receiver"

	super createComponents.
	nombreJugador := self add: TextPresenter new name: 'nombreJugador'.
	puntosPresenter := self add: TextPresenter new name: 'puntos'.
	partidasGanadasPresenter := self add: TextPresenter new name: 'partidasGanadas'.
	estadoJugador := self add: TextPresenter new name: 'estadoJugador'.
	imagenJugador := self add: ImagePresenter new name: 'imagenJugador'.
	cartasPresenter := self add: Presenter new name: 'cartasJugador'!

estadoEsperando
	estadoJugador view text: 'Esperando...'!

estadoJugador: unTexto
	estadoJugador view text: unTexto!

estadoJugando
	estadoJugador view text: 'Jugando...'!

imagenJugador: unaImagen 
	imagenJugador view image: unaImagen!

nombreJugador: unTexto 
	nombreJugador view text: unTexto!

partidasGanadasPresenter: unTexto
	partidasGanadasPresenter view text: unTexto!

puntosPresenter: unTexto
	puntosPresenter view text: unTexto! !
!PlayerPresenter categoriesFor: #cartasPresenter!accessing!public! !
!PlayerPresenter categoriesFor: #createComponents!public! !
!PlayerPresenter categoriesFor: #estadoEsperando!public! !
!PlayerPresenter categoriesFor: #estadoJugador:!accessing!public! !
!PlayerPresenter categoriesFor: #estadoJugando!public! !
!PlayerPresenter categoriesFor: #imagenJugador:!public! !
!PlayerPresenter categoriesFor: #nombreJugador:!public! !
!PlayerPresenter categoriesFor: #partidasGanadasPresenter:!accessing!public! !
!PlayerPresenter categoriesFor: #puntosPresenter:!accessing!public! !

!PlayerPresenter class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ContainerView) 98 15 0 0 98 2 8 1417674752 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 0 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 0 0 5 0 0 0 528 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 2 410 432 98 15 0 528 98 2 8 1140850688 131073 656 0 0 0 5 0 0 0 656 594 234 240 98 0 16 234 256 98 4 410 8 ##(Smalltalk.PushButton) 98 20 0 656 98 2 8 1140924416 1 800 0 0 0 5 0 0 0 800 0 8 4294902866 1180998 4 ##(Smalltalk.CommandDescription) 8 #plantarse 8 'Plantarse' 1 1 0 0 32 0 0 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 3 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 125 1090 157 127 800 1026 8 #isEnabled: 98 1 32 800 1026 8 #text: 98 1 8 'Plantarse' 800 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 62 0 0 0 78 0 0 0 125 0 0 0] 98 0 1090 193 193 0 29 8 'plantarseBtn' 410 816 98 20 0 656 98 2 8 1140924416 1 1344 0 0 0 5 0 0 0 1344 0 8 4294902866 898 8 #pedirUnaCartaA:para: 8 'Pedir' 1 1 0 0 32 0 0 0 962 202 208 98 3 1026 1056 98 2 1090 1 1 1090 157 125 1344 1026 1152 98 1 32 1344 1026 1200 98 1 8 'Pedir' 1344 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 78 0 0 0 62 0 0 0] 98 0 1312 0 29 8 'pedirBtn' 0 962 202 208 98 1 1026 1056 98 2 1090 441 1 1090 157 251 656 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 220 0 0 0 0 0 0 0 42 1 0 0 125 0 0 0] 98 2 1344 800 1312 0 27 327734 ##(Smalltalk.Float) 8 102 102 102 102 102 102 230 63 32 234 256 752 0 962 202 208 98 1 1026 1056 98 2 1090 1 247 1090 597 251 528 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 123 0 0 0 42 1 0 0 248 0 0 0] 98 3 410 432 98 15 0 528 98 2 8 1140850688 131073 2096 0 0 0 5 0 0 0 2096 594 234 240 98 8 410 8 ##(Smalltalk.StaticText) 98 16 0 2096 98 2 8 1140850945 1 2208 0 0 0 5 0 0 0 2208 0 8 4294902751 852486 ##(Smalltalk.NullConverter) 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 11 195 1090 201 47 2208 1026 1200 98 1 8 'estado...' 2208 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 97 0 0 0 105 0 0 0 120 0 0 0] 98 0 1312 0 27 1890 8 0 0 0 0 0 0 224 63 410 2224 98 16 0 2096 98 2 8 1140850945 1 2560 0 0 0 5 0 0 0 2560 0 8 4294902751 2306 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 11 103 1090 201 47 2560 1026 1200 98 1 8 'Puntos' 2560 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 51 0 0 0 105 0 0 0 74 0 0 0] 98 0 1312 0 27 1890 8 0 0 0 0 0 0 224 63 410 2224 98 16 0 2096 98 2 8 1140850945 1 2880 0 0 0 5 0 0 0 2880 0 8 4294902751 2306 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 11 149 1090 201 47 2880 1026 1200 98 1 8 'Partidas ganadas:' 2880 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 74 0 0 0 105 0 0 0 97 0 0 0] 98 0 1312 0 27 1890 8 0 0 0 0 0 0 224 63 410 2224 98 16 0 2096 98 2 8 1140850945 1 3200 0 0 0 5 0 263174 ##(Smalltalk.Font) 0 16 459014 ##(Smalltalk.LOGFONT) 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1090 193 193 0 3200 0 8 4294902751 2306 0 0 0 962 202 208 98 2 1026 1056 98 2 1090 11 11 1090 201 93 3200 1026 1200 98 1 8 'XX XX' 3200 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 105 0 0 0 51 0 0 0] 98 0 1312 0 27 3 16 234 256 98 8 2208 8 'estadoJugador' 2560 8 'puntos' 2880 8 'partidasGanadas' 3200 8 'nombreJugador' 590342 ##(Smalltalk.Rectangle) 1090 11 11 1090 11 11 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 221 251 2096 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 110 0 0 0 125 0 0 0] 98 4 3200 2560 2880 2208 1312 0 27 410 432 98 15 0 528 98 2 8 1140850688 131073 3920 0 0 0 5 0 0 0 3920 498 1 1 0 0 0 0 410 8 ##(Smalltalk.StaticBitmap) 98 17 0 3920 98 2 8 1149239566 1 4000 721990 2 ##(Smalltalk.ValueHolder) 0 0 1376774 ##(Smalltalk.PluggableSearchPolicy) 459270 ##(Smalltalk.Message) 8 #== 98 0 4146 8 #hash 98 0 0 0 0 5 0 0 0 4000 0 8 4294902751 2306 0 0 32 0 962 202 208 98 1 1026 1056 98 2 1090 11 11 1090 201 231 4000 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 105 0 0 0 120 0 0 0] 98 0 1312 0 27 234 256 98 2 4000 8 'imagenJugador' 3698 1090 11 11 1090 11 11 962 202 208 98 1 1026 1056 98 2 1090 221 1 1090 221 251 3920 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 110 0 0 0 0 0 0 0 220 0 0 0 125 0 0 0] 98 1 4000 1312 0 27 656 1312 0 27 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 4704 0 0 0 5 0 0 0 4704 594 234 240 752 32 234 256 752 0 962 202 208 98 1 1026 1056 98 2 1090 1 1 1090 597 247 4704 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 42 1 0 0 123 0 0 0] 98 0 1312 0 27 234 256 98 2 4704 8 'cartasJugador' 0 962 202 208 98 1 1026 1056 98 2 1090 3839 21 1090 601 501 416 1250 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 127 7 0 0 10 0 0 0 171 8 0 0 4 1 0 0] 98 2 4704 528 1312 0 27 )! !
!PlayerPresenter class categoriesFor: #resource_Default_view!public!resources-views! !

