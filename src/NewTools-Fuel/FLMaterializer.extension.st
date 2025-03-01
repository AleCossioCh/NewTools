Extension { #name : #FLMaterializer }

{ #category : #'*NewTools-Fuel-FileRegistry' }
FLMaterializer class >> fileReaderServicesForFile: fullName suffix: suffix [
	<fileService>
	suffix = 'fuel'
		ifFalse: [ ^ #() ].
	^ { self serviceFuelMaterialize }
]

{ #category : #'*NewTools-Fuel-FileRegistry' }
FLMaterializer class >> inspectMaterializationFromFileNamed: aString [

	| result |
	result := self materializeFromFileNamed: aString.
	^ result inspect
]

{ #category : #'*NewTools-Fuel-FileRegistry' }
FLMaterializer class >> serviceFuelMaterialize [
	^ SimpleServiceEntry 
		provider: self 
		label: 'Materialize Fuel file'
		selector: #inspectMaterializationFromFileNamed:
		description: 'Materialize objects previously serialized with Fuel'
		buttonLabel: 'materialize'
]
