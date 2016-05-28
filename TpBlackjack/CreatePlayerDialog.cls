"Filed out from Dolphin Smalltalk 7"!

Dialog subclass: #CreatePlayerDialog
	instanceVariableNames: 'nombreJugador imagenJugador rutaImagenJugador estrategia'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CreatePlayerDialog guid: (GUID fromString: '{5F9F525F-7CB0-429D-B854-CB5A47034157}')!
CreatePlayerDialog comment: ''!
!CreatePlayerDialog categoriesForClass!Unclassified! !
!CreatePlayerDialog methodsFor!

cargarImagen
	| dialogo path |
	dialogo := (FileOpenDialog new)
				caption: 'Buscar imagen';
				fileTypes: #(#('Imagen (*.bmp)' '*.bmp') #('JPG (*.jpg)' '*.jpg'));
				defaultExtension: 'bmp';
				initialDirectory: ImageRelativeFileLocator current basePath , '\Recursos';
				yourself.
	path := dialogo showModal.
	^path!

cargarImagenJugador
	| path |
	path := self cargarImagen.
	path isNil ifTrue: [^self].
	imagenJugador view image: (OLEPicture fromFile: path).
	rutaImagenJugador view text: path.
	self view refreshContents!

createComponents
	"Create the presenters contained by the receiver. At this stage
	the receiver has not yet been initialized."

	super createComponents.
	nombreJugador := self add: TextPresenter new name: 'nombreJugador'.
	imagenJugador := self add: ImagePresenter new name: 'imagenJugador'.
	rutaImagenJugador := self add: TextPresenter new name: 'rutaImagen'.
	estrategia := self add: ChoicePresenter new name: 'estrategiaChoice'!

ok
	"Metodo para pasar a la proxima pantalla"

	| jugador |
	jugador := Jugador new.
	jugador nombre: nombreJugador view text.
	jugador imagen: imagenJugador view image.
	jugador estrategia: estrategia view selectionOrNil new.
	self model value addJugador: jugador.
	super ok!

onViewOpened
	| estrategias |
	super onViewOpened.
	estrategias := Estrategia allSubclasses.
	estrategias remove: Banca.
	estrategia view model addAll: estrategias.
	estrategia view selection: estrategia view model first.
	self view refreshContents!

puedeAceptar
	^nombreJugador view text notEmpty and: [rutaImagenJugador view text notEmpty]!

queryCommand: aCommandQuery 
	"Private - Enters details about a potential command for the receiver into the 
	<CommandQuery>,  query."

	| cmd |
	cmd := aCommandQuery commandSymbol.
	cmd == #ok 
		ifTrue: 
			[aCommandQuery isEnabled: self puedeAceptar.
			^true].
	^super queryCommand: aCommandQuery! !
!CreatePlayerDialog categoriesFor: #cargarImagen!private! !
!CreatePlayerDialog categoriesFor: #cargarImagenJugador!public! !
!CreatePlayerDialog categoriesFor: #createComponents!public! !
!CreatePlayerDialog categoriesFor: #ok!public! !
!CreatePlayerDialog categoriesFor: #onViewOpened!public! !
!CreatePlayerDialog categoriesFor: #puedeAceptar!public! !
!CreatePlayerDialog categoriesFor: #queryCommand:!private! !

!CreatePlayerDialog class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy) 8 ##(Smalltalk.DialogView) 98 30 0 0 98 2 26214401 131073 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 167 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 0 410 8 ##(Smalltalk.ReferenceView) 98 14 0 416 98 2 8 1140850688 131073 560 0 0 0 7 0 0 0 560 1180166 ##(Smalltalk.ResourceIdentifier) 8 ##(Smalltalk.Presenter) 8 #resource_OK_Cancel_button_block 0 983302 ##(Smalltalk.MessageSequence) 202 208 98 1 721670 ##(Smalltalk.MessageSend) 8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point) 21 833 834 729 71 560 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 160 1 0 0 118 1 0 0 195 1 0 0] 98 0 834 193 193 0 27 0 0 410 8 ##(Smalltalk.ContainerView) 98 15 0 416 98 2 8 1140850688 131073 960 0 0 0 7 0 0 0 960 1180166 ##(Smalltalk.ProportionalLayout) 234 240 98 8 410 976 98 15 0 960 98 2 8 1140850688 131073 1104 0 0 0 7 0 0 0 1104 1042 234 240 98 2 410 8 ##(Smalltalk.StaticText) 98 16 0 1104 98 2 8 1140850944 65 1216 0 0 0 7 0 0 0 1216 0 8 4294902751 852486 ##(Smalltalk.NullConverter) 0 0 0 706 202 208 98 2 770 800 98 2 834 1 11 834 689 41 1216 770 8 #text: 98 1 8 'Estretegia' 1216 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 5 0 0 0 88 1 0 0 25 0 0 0] 98 0 944 0 27 327734 ##(Smalltalk.Float) 8 0 0 0 0 0 0 224 63 16 234 256 98 2 410 8 ##(Smalltalk.ComboBox) 98 17 0 1104 98 2 8 1412498947 1025 1632 590662 2 ##(Smalltalk.ListModel) 202 208 928 0 1310726 ##(Smalltalk.IdentitySearchPolicy) 482 8 4278190080 0 7 0 0 0 1632 0 8 4294902957 459270 ##(Smalltalk.Message) 8 #displayString 98 0 928 401 706 202 208 98 1 770 800 98 2 834 1 51 834 689 53 1632 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 88 1 0 0 51 0 0 0] 98 0 944 0 27 8 'estrategiaChoice' 590342 ##(Smalltalk.Rectangle) 834 1 11 834 1 11 706 202 208 98 1 770 800 98 2 834 21 161 834 689 141 1104 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 80 0 0 0 98 1 0 0 150 0 0 0] 98 2 1216 1632 944 0 27 1570 8 154 153 153 153 153 153 217 63 410 976 98 15 0 960 98 2 8 1140850688 131073 2320 0 0 0 7 0 0 0 2320 1042 234 240 98 2 410 1232 98 16 0 2320 98 2 8 1140850944 1 2432 0 0 0 7 0 0 0 2432 0 8 4294902751 1314 0 0 0 706 202 208 98 2 770 800 98 2 834 1 11 834 689 55 2432 770 1472 98 1 8 'Imagen' 2432 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 5 0 0 0 88 1 0 0 32 0 0 0] 98 0 944 0 27 1570 8 154 153 153 153 153 153 201 63 16 234 256 98 2 410 8 ##(Smalltalk.StaticBitmap) 98 17 0 2320 98 2 8 1149239566 1 2784 721990 2 ##(Smalltalk.ValueHolder) 0 0 1376774 ##(Smalltalk.PluggableSearchPolicy) 1842 8 #== 98 0 1842 8 #hash 98 0 0 0 0 7 0 0 0 2784 0 8 4294902751 1314 0 0 32 0 706 202 208 98 1 770 800 98 2 834 1 65 834 689 277 2784 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 32 0 0 0 88 1 0 0 170 0 0 0] 98 0 944 0 27 8 'imagenJugador' 2082 834 1 11 834 1 11 706 202 208 98 1 770 800 98 2 834 21 301 834 689 351 2320 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 150 0 0 0 98 1 0 0 69 1 0 0] 98 2 2432 2784 944 0 27 3 410 976 98 15 0 960 98 2 8 1140850688 131073 3440 0 0 0 7 0 0 0 3440 1042 234 240 98 2 410 976 98 15 0 3440 98 2 8 1140850688 131073 3552 0 0 0 7 0 0 0 3552 0 234 256 928 0 706 202 208 98 1 770 800 98 2 834 1 11 834 689 41 3552 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 5 0 0 0 88 1 0 0 25 0 0 0] 98 1 410 1232 98 16 0 3552 98 2 8 1140850944 1 3792 0 0 0 7 0 0 0 3792 0 8 4294902751 1314 0 0 0 706 202 208 98 2 770 800 98 2 834 1 11 834 61 57 3792 770 1472 98 1 8 'Ruta' 3792 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 5 0 0 0 30 0 0 0 33 0 0 0] 98 0 944 0 27 944 0 27 1570 8 0 0 0 0 0 0 224 63 16 234 256 928 2082 834 1 11 834 1 11 706 202 208 98 1 770 800 98 2 834 21 651 834 689 143 3440 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 69 1 0 0 98 1 0 0 140 1 0 0] 98 2 3552 410 976 98 15 0 3440 98 2 8 1140850688 131073 4336 0 0 0 7 0 0 0 4336 0 234 256 98 2 410 8 ##(Smalltalk.TextEdit) 98 16 0 4336 98 2 8 1140850816 1025 4432 0 482 8 4278190080 0 7 0 0 0 4432 0 8 4294902961 1314 0 0 3 706 202 208 98 3 770 800 98 2 834 1 11 834 549 57 4432 770 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval) 3 1 3 4432 770 8 #isTextModified: 98 1 32 4432 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 5 0 0 0 18 1 0 0 33 0 0 0] 98 0 944 0 27 8 'rutaImagen' 0 706 202 208 98 1 770 800 98 2 834 1 51 834 689 83 4336 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 88 1 0 0 66 0 0 0] 98 2 4432 410 8 ##(Smalltalk.PushButton) 98 20 0 4336 98 2 8 1140924416 1 5040 0 0 0 7 0 0 0 5040 0 8 4294902866 1180998 4 ##(Smalltalk.CommandDescription) 8 #cargarImagenJugador 8 'Cargar' 1 1 0 0 32 0 0 0 706 202 208 98 3 770 800 98 2 834 551 11 834 141 57 5040 770 8 #isEnabled: 98 1 32 5040 770 1472 98 1 8 'Cargar' 5040 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 19 1 0 0 5 0 0 0 89 1 0 0 33 0 0 0] 98 0 944 0 29 944 0 27 944 0 27 1570 8 154 153 153 153 153 153 217 63 410 976 98 15 0 960 98 2 8 1140850688 131073 5472 0 0 0 7 0 0 0 5472 1042 234 240 98 2 410 1232 98 16 0 5472 98 2 8 1140850944 1 5584 0 0 0 7 0 0 0 5584 0 8 4294902751 1314 0 0 0 706 202 208 98 2 770 800 98 2 834 1 11 834 689 41 5584 770 1472 98 1 8 'Nombre' 5584 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 5 0 0 0 88 1 0 0 25 0 0 0] 98 0 944 0 27 1570 8 0 0 0 0 0 0 224 63 16 234 256 98 2 410 4448 98 16 0 5472 98 2 8 1140916352 1025 5936 0 482 8 4278190080 0 7 0 0 0 5936 0 8 4294902961 1314 0 0 1 706 202 208 98 3 770 800 98 2 834 1 51 834 689 81 5936 770 4704 98 1 4738 3 1 3 5936 770 4784 98 1 32 5936 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 25 0 0 0 88 1 0 0 65 0 0 0] 98 0 944 0 27 8 'nombreJugador' 2082 834 1 11 834 1 11 706 202 208 98 1 770 800 98 2 834 21 21 834 689 141 5472 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 98 1 0 0 80 0 0 0] 98 2 5584 5936 944 0 27 1570 8 154 153 153 153 153 153 217 63 16 234 256 928 2082 834 21 21 834 21 21 706 202 208 98 1 770 800 98 2 834 21 21 834 729 813 960 882 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 10 0 0 0 10 0 0 0 118 1 0 0 160 1 0 0] 98 4 5472 1104 2320 3440 944 0 27 234 256 928 2082 834 21 21 834 21 21 0 0 0 0 11563 263494 3 ##(Smalltalk.Icon) 0 16 1572870 ##(Smalltalk.ImageRelativeFileLocator) 8 'Recursos\blackjack.ico' 0 0 0 0 1 0 0 590598 ##(Smalltalk.Semaphore) 0 0 1 32 8 2009049872 706 202 208 98 3 770 800 98 2 834 3839 21 834 801 1001 416 770 1472 98 1 8 'Crear jugador' 416 770 8 #updateMenuBar 928 416 882 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 127 7 0 0 10 0 0 0 15 9 0 0 254 1 0 0] 98 2 960 560 944 0 27 )! !
!CreatePlayerDialog class categoriesFor: #resource_Default_view!public!resources-views! !

