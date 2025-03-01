Extension { #name : #OrderedDictionary }

{ #category : #'*NewTools-Inspector-Extensions' }
OrderedDictionary >> inspectionItems: aBuilder [
	<inspectorPresentationOrder: 0 title: 'Items'> 
	
	^ aBuilder newTable 
		addColumn: (SpStringTableColumn 
			title: 'Key'
			evaluated: [ :each | StObjectPrinter asTruncatedTextFrom: each key ])
			beSortable;
		addColumn: (SpStringTableColumn 
			title: 'Value' 
			evaluated: [ :each | StObjectPrinter asTruncatedTextFrom: each value ])
			beSortable;
		items: (self associations collect: [:e | StInspectorAssociationNode hostObject: e ]);
		yourself
]
