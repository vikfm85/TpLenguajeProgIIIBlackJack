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

estadoJugando
	estadoJugador view text: 'Jugando...'!

imagenJugador: unaImagen 
	imagenJugador view image: unaImagen!

nombreJugador: unTexto 
	nombreJugador view text: unTexto! !
!PlayerPresenter categoriesFor: #createComponents!public! !
!PlayerPresenter categoriesFor: #estadoEsperando!public! !
!PlayerPresenter categoriesFor: #estadoJugando!public! !
!PlayerPresenter categoriesFor: #imagenJugador:!public! !
!PlayerPresenter categoriesFor: #nombreJugador:!public! !

!PlayerPresenter class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.ContainerView) 98 15 0 0 98 2 8 1417674752 131073 416 0 0 0 5 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 0 410 432 98 15 0 416 98 2 8 1140850688 131073 528 0 0 0 5 0 0 0 528 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 0 32 234 256 640 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 1 247 802 497 251 528 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 123 0 0 0 248 0 0 0 248 0 0 0] 98 2 410 432 98 15 0 528 98 2 8 1140850688 131073 912 0 0 0 5 0 0 0 912 594 234 240 98 8 410 8 ##(Smalltalk.StaticText) 98 16 0 912 98 2 8 1140850945 1 1024 0 0 0 5 0 0 0 1024 0 8 4294901955 852486 ##(Smalltalk.NullConverter) 0 0 0 674 202 208 98 2 738 768 98 2 802 11 195 802 229 47 1024 738 8 #text: 98 1 8 'estado...' 1024 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 97 0 0 0 119 0 0 0 120 0 0 0] 98 0 802 193 193 0 27 327734 ##(Smalltalk.Float) 8 0 0 0 0 0 0 224 63 410 1040 98 16 0 912 98 2 8 1140850945 1 1424 0 0 0 5 0 263174 ##(Smalltalk.Font) 0 16 459014 ##(Smalltalk.LOGFONT) 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 802 193 193 0 1424 0 8 4294901955 1122 0 0 0 674 202 208 98 2 738 768 98 2 802 11 11 802 229 93 1424 738 1280 98 1 8 'XX XX' 1424 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 119 0 0 0 51 0 0 0] 98 0 1376 0 27 3 410 1040 98 16 0 912 98 2 8 1140850945 1 1824 0 0 0 5 0 0 0 1824 0 8 4294901955 1122 0 0 0 674 202 208 98 2 738 768 98 2 802 11 103 802 229 47 1824 738 1280 98 1 8 'Puntos' 1824 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 51 0 0 0 119 0 0 0 74 0 0 0] 98 0 1376 0 27 1394 8 0 0 0 0 0 0 224 63 410 1040 98 16 0 912 98 2 8 1140850945 1 2144 0 0 0 5 0 0 0 2144 0 8 4294901955 1122 0 0 0 674 202 208 98 2 738 768 98 2 802 11 149 802 229 47 2144 738 1280 98 1 8 'Partidas ganadas:' 2144 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 74 0 0 0 119 0 0 0 97 0 0 0] 98 0 1376 0 27 1394 8 0 0 0 0 0 0 224 63 16 234 256 98 8 1024 8 'estadoJugador' 1424 8 'nombreJugador' 1824 8 'puntos' 2144 8 'partidasGanadas' 590342 ##(Smalltalk.Rectangle) 802 11 11 802 11 11 674 202 208 98 1 738 768 98 2 802 1 1 802 249 251 912 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 124 0 0 0 125 0 0 0] 98 4 1424 1824 2144 1024 1376 0 27 410 432 98 15 0 528 98 2 8 1140850688 131073 2784 0 0 0 5 0 0 0 2784 498 1 1 0 0 0 0 410 8 ##(Smalltalk.StaticBitmap) 98 17 0 2784 98 2 8 1149239566 1 2864 721990 2 ##(Smalltalk.ValueHolder) 0 0 1376774 ##(Smalltalk.PluggableSearchPolicy) 459270 ##(Smalltalk.Message) 8 #== 98 0 3010 8 #hash 98 0 0 0 0 5 0 0 0 2864 0 8 4294901955 1122 0 0 32 0 674 202 208 98 1 738 768 98 2 802 11 11 802 229 231 2864 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 119 0 0 0 120 0 0 0] 98 0 1376 0 27 234 256 98 2 2864 8 'imagenJugador' 2562 802 11 11 802 11 11 674 202 208 98 1 738 768 98 2 802 249 1 802 249 251 2784 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 124 0 0 0 0 0 0 0 248 0 0 0 125 0 0 0] 98 1 2864 1376 0 27 1376 0 27 0 0 410 432 98 15 0 416 98 2 8 1140850688 131073 3568 0 0 0 5 0 0 0 3568 0 234 256 640 0 674 202 208 98 1 738 768 98 2 802 1 1 802 497 247 3568 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 248 0 0 0 123 0 0 0] 98 0 1376 0 27 234 256 98 2 3568 8 'cartasJugador' 0 674 202 208 98 1 738 768 98 2 802 2559 21 802 501 501 416 850 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 4 0 0 10 0 0 0 249 5 0 0 4 1 0 0] 98 2 3568 528 1376 0 27 )! !
!PlayerPresenter class categoriesFor: #resource_Default_view!public!resources-views! !

