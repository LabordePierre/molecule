Class {
	#name : #MolBreakOnComponentRemoveCommand,
	#superclass : #MolClassesCmdCommand,
	#category : #'Molecule-IDE-Commands'
}

{ #category : #activation }
MolBreakOnComponentRemoveCommand class >> browserMenuActivation [

	<classAnnotation>
	^ CmdContextMenuActivation
		  byItemOf: MolCmdMenuGroup
		  order: 53
		  for: ClyFullBrowserClassContext
]

{ #category : #accessing }
MolBreakOnComponentRemoveCommand >> defaultMenuIconName [

	^ #halt
]

{ #category : #accessing }
MolBreakOnComponentRemoveCommand >> defaultMenuItemName [

	^ 'Break once when state switch to #remove'
]

{ #category : #accessing }
MolBreakOnComponentRemoveCommand >> description [

	^ 'Add a breakpoint that trigger once when #componentRemove is call for any instances of this specific class.'
]

{ #category : #accessing }
MolBreakOnComponentRemoveCommand >> execute [

	self selectedComponentClasses do: #breakOnceOnComponentRemove
]
