"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #NuevaPartidaShell
	instanceVariableNames: 'cantJugadoresPresenter cantJugadores'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NuevaPartidaShell guid: (GUID fromString: '{0EE4771F-5D11-464F-AA7D-B5CCCE5E45CE}')!
NuevaPartidaShell comment: ''!
!NuevaPartidaShell categoriesForClass!MVP-Presenters! !
!NuevaPartidaShell methodsFor!

cantJugadores
	^cantJugadores!

cantJugadores: anObject
	cantJugadores := anObject!

createComponents
"Create the presenters contained by the receiver"

	super createComponents.
	cantJugadoresPresenter := self add: ChoicePresenter new name: 'cantJugadoresChoice'.!

ok
	cantJugadores:= cantJugadoresPresenter selection! !
!NuevaPartidaShell categoriesFor: #cantJugadores!accessing!private! !
!NuevaPartidaShell categoriesFor: #cantJugadores:!accessing!private! !
!NuevaPartidaShell categoriesFor: #createComponents!public! !
!NuevaPartidaShell categoriesFor: #ok!public! !

!NuevaPartidaShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 0 234 256 98 2 410 8 ##(Smalltalk.ComboBox)  98 17 0 416 98 2 8 1412498947 1025 560 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  482 8 4278190080 0 7 0 0 0 560 0 8 4294902915 459270 ##(Smalltalk.Message)  8 #displayString 98 0 688 401 983302 ##(Smalltalk.MessageSequence)  202 208 98 1 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  431 311 978 251 53 560 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 215 0 0 0 155 0 0 0 84 1 0 0 181 0 0 0] 98 0 978 193 193 0 27 8 'cantJugadoresChoice' 0 0 0 0 0 11195 0 0 0 0 1 0 0 850 202 208 98 2 914 944 98 2 978 2879 21 978 1201 801 416 914 8 #updateMenuBar 688 416 1026 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 154 1 0 0] 98 5 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 1312 0 0 0 7 0 0 0 1312 0 8 4294902903 1180998 4 ##(Smalltalk.CommandDescription)  8 #cancel 8 '&Cancel' 1 1 0 0 32 0 0 0 850 202 208 98 3 914 944 98 2 978 351 481 978 141 51 1312 914 8 #isEnabled: 98 1 32 1312 914 8 #text: 98 1 8 '&Cancel' 1312 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 175 0 0 0 240 0 0 0 245 0 0 0 9 1 0 0] 98 0 1088 0 29 410 1328 98 20 0 416 98 2 8 1140924416 1 1744 0 0 0 7 0 0 0 1744 0 8 4294902903 1410 8 #ok 8 '&OK' 1 1 0 0 16 0 0 0 850 202 208 98 3 914 944 98 2 978 651 481 978 141 51 1744 914 1600 98 1 32 1744 914 1648 98 1 8 '&OK' 1744 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 69 1 0 0 240 0 0 0 139 1 0 0 9 1 0 0] 98 0 1088 0 29 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 65 2112 0 0 0 7 0 0 0 2112 0 8 4294902733 852486 ##(Smalltalk.NullConverter)  0 0 0 850 202 208 98 2 914 944 98 2 978 471 141 978 241 39 2112 914 1648 98 1 8 'Bienvenidos
' 2112 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 70 0 0 0 99 1 0 0 89 0 0 0] 98 0 1088 0 27 410 2128 98 16 0 416 98 2 8 1140850944 65 2448 0 0 0 7 0 0 0 2448 0 8 4294902733 2210 0 0 0 850 202 208 98 2 914 944 98 2 978 291 231 978 571 41 2448 914 1648 98 1 8 'Por favor elija la cantidad de jugadores!!!!!!' 2448 1026 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 145 0 0 0 115 0 0 0 174 1 0 0 135 0 0 0] 98 0 1088 0 27 560 1088 0 27 )! !
!NuevaPartidaShell class categoriesFor: #resource_Default_view!public!resources-views! !

