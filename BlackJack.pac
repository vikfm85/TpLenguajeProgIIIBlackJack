| package |
package := Package name: 'BlackJack'.
package paxVersion: 1;
	basicComment: ''.


package classNames
	add: #Carta;
	add: #CpuArriesgado;
	add: #CpuPrudente;
	add: #CrearJugadorShell;
	add: #Estrategia;
	add: #Humano;
	add: #IniciarJuegoShell;
	add: #Jugador;
	add: #MazoFactory;
	add: #NoDisponible;
	add: #NuevaPartidaShell;
	add: #Partida;
	add: #PartidaBuilder;
	add: #PartidaShell;
	yourself.

package binaryGlobalNames: (Set new
	yourself).

package globalAliases: (Set new
	yourself).

package setPrerequisites: (IdentitySet new
	add: 'Core\Object Arts\Dolphin\Base\Dolphin';
	add: 'Core\Object Arts\Dolphin\MVP\Presenters\Choice\Dolphin Choice Presenter';
	add: 'Core\Object Arts\Dolphin\MVP\Presenters\Image\Dolphin Image Presenter';
	add: 'Core\Object Arts\Dolphin\MVP\Models\List\Dolphin List Models';
	add: 'Core\Object Arts\Dolphin\MVP\Presenters\List\Dolphin List Presenter';
	add: 'Core\Object Arts\Dolphin\MVP\Base\Dolphin MVP Base';
	add: 'Core\Object Arts\Dolphin\MVP\Presenters\Text\Dolphin Text Presenter';
	add: 'Core\Object Arts\Dolphin\MVP\Type Converters\Dolphin Type Converters';
	add: 'Core\Object Arts\Dolphin\MVP\Models\Value\Dolphin Value Models';
	yourself).

package!

"Class Definitions"!

Model subclass: #Carta
	instanceVariableNames: 'palo valor imagen'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Model subclass: #Estrategia
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Model subclass: #Jugador
	instanceVariableNames: 'nombre estrategia cartas partidasGanadas puntos imagen'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Model subclass: #MazoFactory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Model subclass: #Partida
	instanceVariableNames: 'jugadores banca cartas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Model subclass: #PartidaBuilder
	instanceVariableNames: 'jugadores cartas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Estrategia subclass: #CpuArriesgado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Estrategia subclass: #CpuPrudente
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Estrategia subclass: #Humano
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Estrategia subclass: #NoDisponible
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Shell subclass: #CrearJugadorShell
	instanceVariableNames: 'jugador'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Shell subclass: #IniciarJuegoShell
	instanceVariableNames: 'builder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Shell subclass: #NuevaPartidaShell
	instanceVariableNames: 'cantJugadoresPresenter cantJugadores'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Shell subclass: #PartidaShell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

"Global Aliases"!


"Loose Methods"!

"End of package definition"!

"Source Globals"!

"Classes"!

Carta guid: (GUID fromString: '{5F36A82D-3B3F-4694-A9A6-8C43C5748EBE}')!
Carta comment: ''!
!Carta categoriesForClass!Unclassified! !
!Carta methodsFor!

imagen
	^imagen!

imagen: anObject
	imagen := anObject!

palo
	^palo!

palo: anObject
	palo := anObject!

valor
	^valor!

valor: anObject
	valor := anObject! !
!Carta categoriesFor: #imagen!accessing!private! !
!Carta categoriesFor: #imagen:!accessing!private! !
!Carta categoriesFor: #palo!accessing!private! !
!Carta categoriesFor: #palo:!accessing!private! !
!Carta categoriesFor: #valor!accessing!private! !
!Carta categoriesFor: #valor:!accessing!private! !

Estrategia guid: (GUID fromString: '{13FB2A18-19DF-44CE-A178-EFB2D5EE5455}')!
Estrategia comment: ''!
!Estrategia categoriesForClass!MVP-Models! !
!Estrategia methodsFor!

jugar: unaPartida
! !
!Estrategia categoriesFor: #jugar:!public! !

Jugador guid: (GUID fromString: '{68F6B6BF-D7FB-45A9-97DC-03D618EA576C}')!
Jugador comment: ''!
!Jugador categoriesForClass!MVP-Models! !
!Jugador methodsFor!

calcularPuntaje!

carcularMano!

cartas
	^cartas!

cartas: anObject
	cartas := anObject!

estrategia
	^estrategia!

estrategia: anObject
	estrategia := anObject!

imagen
	^imagen!

imagen: anObject
	imagen := anObject!

nombre
	^nombre!

nombre: anObject
	nombre := anObject!

partidasGanadas
	^partidasGanadas!

partidasGanadas: anObject
	partidasGanadas := anObject!

puntos
	^puntos!

puntos: anObject
	puntos := anObject! !
!Jugador categoriesFor: #calcularPuntaje!public! !
!Jugador categoriesFor: #carcularMano!public! !
!Jugador categoriesFor: #cartas!accessing!public! !
!Jugador categoriesFor: #cartas:!accessing!public! !
!Jugador categoriesFor: #estrategia!accessing!public! !
!Jugador categoriesFor: #estrategia:!accessing!public! !
!Jugador categoriesFor: #imagen!accessing!public! !
!Jugador categoriesFor: #imagen:!accessing!public! !
!Jugador categoriesFor: #nombre!accessing!public! !
!Jugador categoriesFor: #nombre:!accessing!public! !
!Jugador categoriesFor: #partidasGanadas!accessing!public! !
!Jugador categoriesFor: #partidasGanadas:!accessing!public! !
!Jugador categoriesFor: #puntos!accessing!public! !
!Jugador categoriesFor: #puntos:!accessing!public! !

MazoFactory guid: (GUID fromString: '{E57983BC-1DCD-485A-975E-5238F937BCDD}')!
MazoFactory comment: ''!
!MazoFactory categoriesForClass!MVP-Models! !
!MazoFactory class methodsFor!

addMazo
	| mazo |
	mazo := OrderedCollection new.
	10 timesRepeat: [mazo add: Carta new].
	10 timesRepeat: [mazo add: Carta new].
	10 timesRepeat: [mazo add: Carta new].
	10 timesRepeat: [mazo add: Carta new].
	4 timesRepeat: [mazo add: Carta new].
	4 timesRepeat: [mazo add: Carta new].
	4 timesRepeat: [mazo add: Carta new].
	4 timesRepeat: [mazo add: Carta new]!

crearMazo! !
!MazoFactory class categoriesFor: #addMazo!public! !
!MazoFactory class categoriesFor: #crearMazo!public! !

Partida guid: (GUID fromString: '{D0212CD8-AA07-4BB4-92D1-640495C233DA}')!
Partida comment: ''!
!Partida categoriesForClass!MVP-Models! !
!Partida methodsFor!

banca
	^banca!

banca: anObject
	banca := anObject!

cargarPartida!

cartas
	^cartas!

cartas: anObject
	cartas := anObject!

finalizar!

guardarPartida!

jugadores
	^jugadores!

jugadores: anObject
	jugadores := anObject!

mezclar!

repartir! !
!Partida categoriesFor: #banca!accessing!public! !
!Partida categoriesFor: #banca:!accessing!public! !
!Partida categoriesFor: #cargarPartida!public! !
!Partida categoriesFor: #cartas!accessing!public! !
!Partida categoriesFor: #cartas:!accessing!public! !
!Partida categoriesFor: #finalizar!public! !
!Partida categoriesFor: #guardarPartida!public! !
!Partida categoriesFor: #jugadores!accessing!public! !
!Partida categoriesFor: #jugadores:!accessing!public! !
!Partida categoriesFor: #mezclar!public! !
!Partida categoriesFor: #repartir!public! !

PartidaBuilder guid: (GUID fromString: '{61804444-1619-4758-8859-5BB004682B78}')!
PartidaBuilder comment: ''!
!PartidaBuilder categoriesForClass!MVP-Models! !
!PartidaBuilder methodsFor!

addJugador: unJugador
	jugadores add: unJugador.!

addMazo
	cartas addAll: MazoFactory crearMazo.!

build!

cartas
	^cartas!

cartas: anObject
	cartas := anObject!

conEstrategia!

initialize

jugadores:= OrderedCollection new.
cartas:= OrderedCollection new.!

jugador
	^jugador!

jugador: anObject
	jugador := anObject! !
!PartidaBuilder categoriesFor: #addJugador:!public! !
!PartidaBuilder categoriesFor: #addMazo!public! !
!PartidaBuilder categoriesFor: #build!public! !
!PartidaBuilder categoriesFor: #cartas!accessing!public! !
!PartidaBuilder categoriesFor: #cartas:!accessing!public! !
!PartidaBuilder categoriesFor: #conEstrategia!public! !
!PartidaBuilder categoriesFor: #initialize!public! !
!PartidaBuilder categoriesFor: #jugador!accessing!public! !
!PartidaBuilder categoriesFor: #jugador:!accessing!public! !

CpuArriesgado guid: (GUID fromString: '{6390F450-3515-4436-B93E-586D112D91A8}')!
CpuArriesgado comment: ''!
!CpuArriesgado categoriesForClass!MVP-Models! !
!CpuArriesgado methodsFor!

jugar: unaPartida!

pedir: unaCarta!

plantarse: unaPartida! !
!CpuArriesgado categoriesFor: #jugar:!public! !
!CpuArriesgado categoriesFor: #pedir:!public! !
!CpuArriesgado categoriesFor: #plantarse:!public! !

CpuPrudente guid: (GUID fromString: '{3C8B817B-547F-4DAE-B576-088C36CE1E5F}')!
CpuPrudente comment: ''!
!CpuPrudente categoriesForClass!MVP-Models! !
!CpuPrudente methodsFor!

jugar: unaPartida!

pedir: unaCarta!

plantarse: unaPartida
! !
!CpuPrudente categoriesFor: #jugar:!public! !
!CpuPrudente categoriesFor: #pedir:!public! !
!CpuPrudente categoriesFor: #plantarse:!public! !

Humano guid: (GUID fromString: '{A1596464-7EA2-4B31-BA8D-52CD76C94AF7}')!
Humano comment: ''!
!Humano categoriesForClass!MVP-Models! !
!Humano methodsFor!

jugar: unaPartida
!

pedir: unaCarta!

plantarse: unaPartida! !
!Humano categoriesFor: #jugar:!public! !
!Humano categoriesFor: #pedir:!public! !
!Humano categoriesFor: #plantarse:!public! !

NoDisponible guid: (GUID fromString: '{895E6D34-BA9B-4B5B-9B28-80BE8ABBDDF5}')!
NoDisponible comment: ''!
!NoDisponible categoriesForClass!MVP-Models! !
!NoDisponible methodsFor!

jugar: unaPartida! !
!NoDisponible categoriesFor: #jugar:!public! !

CrearJugadorShell guid: (GUID fromString: '{6D39CDC0-6AF4-447E-BE21-EEF503919851}')!
CrearJugadorShell comment: ''!
!CrearJugadorShell categoriesForClass!MVP-Presenters! !
!CrearJugadorShell methodsFor!

jugador
	^jugador!

jugador: anObject
	jugador := anObject! !
!CrearJugadorShell categoriesFor: #jugador!accessing!private! !
!CrearJugadorShell categoriesFor: #jugador:!accessing!private! !

!CrearJugadorShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 328198 ##(Smalltalk.Point)  1201 801 551 0 0 0 416 0 234 256 98 10 410 8 ##(Smalltalk.TextEdit)  98 16 0 416 98 2 8 1140916352 1025 592 0 482 8 4278190080 0 7 0 0 0 592 0 8 4294902917 852486 ##(Smalltalk.NullConverter)  0 0 1 983302 ##(Smalltalk.MessageSequence)  202 208 98 3 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 530 331 151 530 251 53 592 818 8 #selectionRange: 98 1 525062 ##(Smalltalk.Interval)  3 1 3 592 818 8 #isTextModified: 98 1 32 592 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 75 0 0 0 34 1 0 0 101 0 0 0] 98 0 530 193 193 0 27 8 'nombreText' 410 8 ##(Smalltalk.ComboBox)  98 17 0 416 98 2 8 1412498947 1025 1136 590662 2 ##(Smalltalk.ListModel)  202 208 98 0 0 1310726 ##(Smalltalk.IdentitySearchPolicy)  482 8 4278190080 0 7 0 0 0 1136 0 8 4294902915 459270 ##(Smalltalk.Message)  8 #displayString 98 0 1264 401 754 202 208 98 1 818 848 98 2 530 331 241 530 251 53 1136 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 120 0 0 0 34 1 0 0 146 0 0 0] 98 0 1104 0 27 8 'estrategiaChoice' 410 8 ##(Smalltalk.StaticBitmap)  98 17 0 416 98 2 8 1149239566 1 1600 721990 2 ##(Smalltalk.ValueHolder)  0 0 1376774 ##(Smalltalk.PluggableSearchPolicy)  1362 8 #== 98 0 1362 8 #hash 98 0 0 0 0 7 0 0 0 1600 0 8 4294902733 722 0 0 32 0 754 202 208 98 1 818 848 98 2 530 651 41 530 441 331 1600 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 69 1 0 0 20 0 0 0 33 2 0 0 185 0 0 0] 98 0 1104 0 27 8 'imagenPerfil' 410 608 98 16 0 416 98 2 8 1140916352 1025 2048 0 482 688 0 7 0 0 0 2048 0 8 4294902917 722 0 0 3 754 202 208 98 3 818 848 98 2 530 331 331 530 251 53 2048 818 928 98 1 962 3 1 3 2048 818 1008 98 1 32 2048 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 165 0 0 0 34 1 0 0 191 0 0 0] 98 0 1104 0 27 8 'PartidasText' 410 608 98 16 0 416 98 2 8 1140916352 1025 2416 0 482 688 0 7 0 0 0 2416 0 8 4294902917 722 0 0 3 754 202 208 98 3 818 848 98 2 530 331 421 530 251 53 2416 818 928 98 1 962 3 1 3 2416 818 1008 98 1 32 2416 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 165 0 0 0 210 0 0 0 34 1 0 0 236 0 0 0] 98 0 1104 0 27 8 'puntajeText' 0 0 0 0 0 10023 0 0 0 0 1 0 0 754 202 208 98 3 818 848 98 2 530 2879 21 530 1201 801 416 818 8 #text: 98 1 8 'puntajeText' 416 818 8 #updateMenuBar 1264 416 1042 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 154 1 0 0] 98 12 410 8 ##(Smalltalk.StaticText)  98 16 0 416 98 2 8 1140850944 65 3040 0 0 0 7 0 0 0 3040 0 8 4294902733 722 0 0 0 754 202 208 98 2 818 848 98 2 530 111 161 530 141 41 3040 818 2912 98 1 8 'Nombre:' 3040 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 55 0 0 0 80 0 0 0 125 0 0 0 100 0 0 0] 98 0 1104 0 27 1600 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 3360 0 0 0 7 0 0 0 3360 0 8 4294902903 1180998 4 ##(Smalltalk.CommandDescription)  0 8 'Cargar Imagen' 1 1 0 0 32 0 0 0 754 202 208 98 2 818 848 98 2 530 771 451 530 201 53 3360 818 2912 98 1 8 'Cargar Imagen' 3360 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 129 1 0 0 225 0 0 0 229 1 0 0 251 0 0 0] 98 0 1104 0 29 410 3376 98 20 0 416 98 2 8 1140924416 1 3712 0 0 0 7 0 0 0 3712 0 8 4294902903 3458 8 #cancel 8 '&Cancel' 1 1 0 0 32 0 0 0 754 202 208 98 3 818 848 98 2 530 661 641 530 141 53 3712 818 8 #isEnabled: 98 1 32 3712 818 2912 98 1 8 '&Cancel' 3712 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 74 1 0 0 64 1 0 0 144 1 0 0 90 1 0 0] 98 0 1104 0 29 410 3376 98 20 0 416 98 2 8 1140924416 1 4096 0 0 0 7 0 0 0 4096 0 8 4294902903 3458 8 #ok 8 '&OK' 1 1 0 0 16 0 0 0 754 202 208 98 3 818 848 98 2 530 981 641 530 141 53 4096 818 3968 98 1 32 4096 818 2912 98 1 8 '&OK' 4096 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 234 1 0 0 64 1 0 0 48 2 0 0 90 1 0 0] 98 0 1104 0 29 592 1136 410 3056 98 16 0 416 98 2 8 1140850944 65 4464 0 0 0 7 0 0 0 4464 0 8 4294902733 722 0 0 0 754 202 208 98 2 818 848 98 2 530 111 249 530 141 41 4464 818 2912 98 1 8 'Estretegia:' 4464 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 55 0 0 0 124 0 0 0 125 0 0 0 144 0 0 0] 98 0 1104 0 27 410 3056 98 16 0 416 98 2 8 1140850944 65 4768 0 0 0 7 0 0 0 4768 0 8 4294902733 722 0 0 0 754 202 208 98 2 818 848 98 2 530 105 337 530 221 41 4768 818 2912 98 1 8 'Partidas Ganadas:' 4768 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 52 0 0 0 168 0 0 0 162 0 0 0 188 0 0 0] 98 0 1104 0 27 410 3056 98 16 0 416 98 2 8 1140850944 65 5072 0 0 0 7 0 0 0 5072 0 8 4294902733 722 0 0 0 754 202 208 98 2 818 848 98 2 530 105 431 530 201 41 5072 818 2912 98 1 8 'Puntaje:' 5072 1042 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 52 0 0 0 215 0 0 0 152 0 0 0 235 0 0 0] 98 0 1104 0 27 2048 2416 1104 0 27 )! !
!CrearJugadorShell class categoriesFor: #resource_Default_view!public!resources-views! !

IniciarJuegoShell guid: (GUID fromString: '{253FE656-54CD-402D-9F91-43013A9DAE0A}')!
IniciarJuegoShell comment: ''!
!IniciarJuegoShell categoriesForClass!MVP-Presenters! !
!IniciarJuegoShell methodsFor!

initialize
	builder:= PartidaBuilder new.!

nuevaPartida
	| ventana cantJugadores jugadorShell |
	ventana := NuevaPartidaShell show.
	ventana cantJugadores.
	cantJugadores timesRepeat: 
			[jugadorShell := CrearJugadorShell show.
			builder addJugador: jugadorShell jugador]! !
!IniciarJuegoShell categoriesFor: #initialize!public! !
!IniciarJuegoShell categoriesFor: #nuevaPartida!public! !

!IniciarJuegoShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 0 234 256 98 0 0 0 0 0 0 1 0 0 0 0 1 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 690 1201 801 416 626 8 #updateMenuBar 544 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 154 1 0 0] 98 3 410 8 ##(Smalltalk.PushButton)  98 20 0 416 98 2 8 1140924416 1 832 0 0 0 7 0 0 0 832 0 8 4294902231 1180998 4 ##(Smalltalk.CommandDescription)  8 #nuevaPartida 8 'Nueva Partida' 1 1 0 0 32 0 0 0 562 202 208 98 3 626 656 98 2 690 471 201 690 211 51 832 626 8 #isEnabled: 98 1 32 832 626 8 #text: 98 1 8 'Nueva Partida' 832 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 100 0 0 0 84 1 0 0 125 0 0 0] 98 0 690 193 193 0 29 410 848 98 20 0 416 98 2 8 1140924416 1 1280 0 0 0 7 0 0 0 1280 0 8 4294902231 930 0 8 '#cargarPartida' 1 1 0 0 32 0 0 0 562 202 208 98 3 626 656 98 2 690 471 321 690 211 51 1280 626 1120 98 1 32 1280 626 1168 98 1 8 'Cargar Partida' 1280 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 160 0 0 0 84 1 0 0 185 0 0 0] 98 0 1264 0 29 410 848 98 20 0 416 98 2 8 1140924416 1 1632 0 0 0 7 0 0 0 1632 0 8 4294902231 930 8 #close 8 'Salir' 1 1 0 0 32 0 0 0 562 202 208 98 3 626 656 98 2 690 471 441 690 211 51 1632 626 1120 98 1 32 1632 626 1168 98 1 8 'Salir' 1632 770 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 235 0 0 0 220 0 0 0 84 1 0 0 245 0 0 0] 98 0 1264 0 29 1264 0 27 )! !
!IniciarJuegoShell class categoriesFor: #resource_Default_view!public!resources-views! !

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

PartidaShell guid: (GUID fromString: '{EB9CA0E6-9688-40E2-9E17-6FCD50E0D3E0}')!
PartidaShell comment: ''!
!PartidaShell categoriesForClass!MVP-Presenters! !
!PartidaShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 3 788558 10 ##(Smalltalk.STBViewProxy)  8 ##(Smalltalk.ShellView)  98 27 0 0 98 2 27131905 131073 416 0 524550 ##(Smalltalk.ColorRef)  8 4278190080 0 551 0 0 0 416 0 234 256 98 0 0 0 0 0 0 1 0 0 0 0 1 0 0 983302 ##(Smalltalk.MessageSequence)  202 208 98 2 721670 ##(Smalltalk.MessageSend)  8 #createAt:extent: 98 2 328198 ##(Smalltalk.Point)  2879 21 690 1201 801 416 626 8 #updateMenuBar 544 416 983302 ##(Smalltalk.WINDOWPLACEMENT)  8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 159 5 0 0 10 0 0 0 247 7 0 0 154 1 0 0] 98 0 690 193 193 0 27 )! !
!PartidaShell class categoriesFor: #resource_Default_view!public!resources-views! !

"Binary Globals"!

