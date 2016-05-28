"Filed out from Dolphin Smalltalk 7"!

Model subclass: #Estrategia
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Estrategia guid: (GUID fromString: '{13FB2A18-19DF-44CE-A178-EFB2D5EE5455}')!
Estrategia comment: ''!
!Estrategia categoriesForClass!MVP-Models! !
!Estrategia methodsFor!

jugar: unJugador con: unaPartida
	#subclassResponsibility!

pedirUnaCartaA: unaPartida para: unJugador
	unaPartida entregarCartas: 1 a: unJugador.
	self jugar: unJugador con: unaPartida!

tomarCartas: unaCantidad de: unaColeccionDeCartas paraUnJugador: unJugador
	unaCantidad timesRepeat: 
			[unJugador agregarCarta: unaColeccionDeCartas first.
			unaColeccionDeCartas removeFirst]! !
!Estrategia categoriesFor: #jugar:con:!public! !
!Estrategia categoriesFor: #pedirUnaCartaA:para:!public! !
!Estrategia categoriesFor: #tomarCartas:de:paraUnJugador:!public! !

