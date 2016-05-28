"Filed out from Dolphin Smalltalk 7"!

Model subclass: #Carta
	instanceVariableNames: 'palo nombre valor imagen imagenVuelta'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Carta guid: (GUID fromString: '{5F36A82D-3B3F-4694-A9A6-8C43C5748EBE}')!
Carta comment: ''!
!Carta categoriesForClass!Unclassified! !
!Carta methodsFor!

imagen
	^imagen!

imagen: anObject
	imagen := anObject!

imagenVuelta
	^imagenVuelta!

imagenVuelta: anObject
	imagenVuelta := anObject!

nombre
	^nombre!

nombre: anObject
	nombre := anObject!

palo
	^palo!

palo: anObject
	palo := anObject!

valor
	^valor!

valor: anObject
	valor := anObject! !
!Carta categoriesFor: #imagen!accessing!public! !
!Carta categoriesFor: #imagen:!accessing!public! !
!Carta categoriesFor: #imagenVuelta!accessing!public! !
!Carta categoriesFor: #imagenVuelta:!accessing!public! !
!Carta categoriesFor: #nombre!accessing!public! !
!Carta categoriesFor: #nombre:!accessing!public! !
!Carta categoriesFor: #palo!accessing!public! !
!Carta categoriesFor: #palo:!accessing!public! !
!Carta categoriesFor: #valor!accessing!public! !
!Carta categoriesFor: #valor:!accessing!public! !

!Carta class methodsFor!

new: unNombre valor: unValor palo: unPalo
	| carta |
	carta := Carta new.
	carta nombre: unNombre.
	carta valor: unValor.
	carta palo: unPalo.
	carta imagen: (OLEPicture
				fromFile: ImageRelativeFileLocator current basePath , 'Recursos\Cartas\' , unPalo , '\'
						, unNombre displayString , '.jpg').
	carta imagenVuelta: (OLEPicture
				fromFile: ImageRelativeFileLocator current basePath , 'Recursos\Cartas\back.jpg').
	^carta! !
!Carta class categoriesFor: #new:valor:palo:!public! !

