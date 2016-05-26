"Filed out from Dolphin Smalltalk 7"!

Presenter subclass: #PlayerPresenter
	instanceVariableNames: 'numeroJugador nombreJugador imagenJugador estadoJugador'
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
	numeroJugador := self add: TextPresenter new name: 'numeroJugador'.
	nombreJugador := self add: TextPresenter new name: 'nombreJugador'.
	imagenJugador := self add: ImagePresenter new name: 'imagenJugador'.
	estadoJugador := self add: TextPresenter new name: 'estadoJugador'!

estadoEsperando
	estadoJugador view text: 'Esperando...'!

estadoJugando
	estadoJugador view text: 'Jugando...'!

imagenJugador: unaImagen 
	imagenJugador view image: unaImagen!

nombreJugador: unTexto 
	nombreJugador view text: unTexto!

numeroJugador: unTexto 
	numeroJugador view text: unTexto!

numeroJugadorColorNegro
	numeroJugador view forecolor: Color black!

numeroJugadorColorRojo
	numeroJugador view forecolor: Color red! !
!PlayerPresenter categoriesFor: #createComponents!public! !
!PlayerPresenter categoriesFor: #estadoEsperando!public! !
!PlayerPresenter categoriesFor: #estadoJugando!public! !
!PlayerPresenter categoriesFor: #imagenJugador:!public! !
!PlayerPresenter categoriesFor: #nombreJugador:!public! !
!PlayerPresenter categoriesFor: #numeroJugador:!public! !
!PlayerPresenter categoriesFor: #numeroJugadorColorNegro!public! !
!PlayerPresenter categoriesFor: #numeroJugadorColorRojo!public! !

!PlayerPresenter class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ContainerView)  98 15 0 0 98 2 8 1417674752 131073 416 0 0 0 5 0 0 0 416 1180166 ##(Smalltalk.ProportionalLayout)  234 240 98 0 32 234 256 544 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  3839 21 706 501 301 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 127 7 0 0 10 0 0 0 121 8 0 0 160 0 0 0] 98 2 410 432 98 15 0 416 98 2 8 1140850688 131073 816 0 0 0 5 0 0 0 816 498 234 240 98 6 410 8 ##(Smalltalk.StaticText)  98 16 0 816 98 2 8 1140850945 1 928 0 0 0 5 0 263174 ##(Smalltalk.Font)  0 16 459014 ##(Smalltalk.LOGFONT)  8 #[241 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 706 193 193 0 928 0 8 4294902221 852486 ##(Smalltalk.NullConverter)  0 0 0 578 202 208 98 2 642 672 98 2 706 11 11 706 229 59 928 642 8 #text: 98 1 8 'Jugardor N' 928 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 119 0 0 0 34 0 0 0] 98 0 706 193 193 0 27 327734 ##(Smalltalk.Float)  8 51 51 51 51 51 51 211 63 410 944 98 16 0 816 98 2 8 1140850945 1 1424 0 0 0 5 0 0 0 1424 0 8 4294902221 1122 0 0 0 578 202 208 98 2 642 672 98 2 706 11 245 706 229 43 1424 642 1280 98 1 8 'estado...' 1424 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 122 0 0 0 119 0 0 0 143 0 0 0] 98 0 1376 0 27 1394 8 154 153 153 153 153 153 201 63 410 944 98 16 0 816 98 2 8 1140850945 1 1744 0 0 0 5 0 1010 0 16 1042 8 #[240 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 188 2 0 0 0 0 0 0 3 2 1 34 84 97 104 111 109 97 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 1088 0 1744 0 8 4294902221 1122 0 0 0 578 202 208 98 2 642 672 98 2 706 11 69 706 229 177 1744 642 1280 98 1 8 'XX XX' 1744 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 34 0 0 0 119 0 0 0 122 0 0 0] 98 0 1376 0 27 1394 8 205 204 204 204 204 204 236 63 16 234 256 98 6 928 8 'numeroJugador' 1424 8 'estadoJugador' 1744 8 'nombreJugador' 590342 ##(Smalltalk.Rectangle)  706 11 11 706 11 11 578 202 208 98 1 642 672 98 2 706 1 1 706 249 297 816 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 124 0 0 0 148 0 0 0] 98 3 928 1744 1424 1376 0 27 410 432 98 15 0 416 98 2 8 1140850688 131073 2416 0 0 0 5 0 0 0 2416 788230 ##(Smalltalk.BorderLayout)  1 1 0 0 0 0 410 8 ##(Smalltalk.StaticBitmap)  98 17 0 2416 98 2 8 1149239566 1 2512 721990 2 ##(Smalltalk.ValueHolder)  0 0 1376774 ##(Smalltalk.PluggableSearchPolicy)  459270 ##(Smalltalk.Message)  8 #== 98 0 2658 8 #hash 98 0 0 0 0 5 0 0 0 2512 0 8 4294902221 1122 0 0 32 0 578 202 208 98 1 642 672 98 2 706 11 11 706 229 277 2512 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 5 0 0 0 5 0 0 0 119 0 0 0 143 0 0 0] 98 0 1376 0 27 234 256 98 2 2512 8 'imagenJugador' 2194 706 11 11 706 11 11 578 202 208 98 1 642 672 98 2 706 249 1 706 249 297 2416 754 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 124 0 0 0 0 0 0 0 248 0 0 0 148 0 0 0] 98 1 2512 1376 0 27 1376 0 27 )! !
!PlayerPresenter class categoriesFor: #resource_Default_view!public!resources-views! !

