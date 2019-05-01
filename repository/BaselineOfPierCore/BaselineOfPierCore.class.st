"
I am a baseline for loading the minimal Pier code.  I'm based on BaselineOfPillarCore


"
Class {
	#name : #BaselineOfPierCore,
	#superclass : #BaselineOf,
	#category : #BaselineOfPierCore
}

{ #category : #baselines }
BaselineOfPierCore >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				baseline: 'ContainersPropertyEnvironment'
					with: [ spec repository: 'github://Ducasse/Containers-PropertyEnvironment' ];
				baseline: 'Seaside3'
					with: [ spec repository: 'github://SeasideSt/Seaside' ];
				baseline: 'Magritte'
					with: [ spec repository: 'github://jborden23/magritte' ];
				baseline: 'Pillar'
					with: [ spec repository: 'github://pillar-markup/pillar:dev-7' ];
				baseline: 'PillarExporter'
					with: [ spec repository: 'github://pillar-markup/pillar:dev-7' ];
				package: 'Bootstrap-Core-Libraries'
					with: [ spec requires: #('Seaside3' 'Magritte' 'Pillar' 'PillarExporter') ];
				package: 'Bootstrap-Core-Component'
					with: [ spec requires: #('Bootstrap-Core-Libraries') ];
				package: 'Bootstrap-Core-Canvas'
					with: [ spec requires: #('Bootstrap-Core-Component') ];
				package: 'Bootstrap-Jasny-Libraries'
					with: [ spec requires: #('Bootstrap-Core-Canvas') ];
				package: 'Bootstrap-Jasny-Canvas'
					with: [ spec requires: #('Bootstrap-Jasny-Libraries') ];
				package: 'Bootstrap-Widget-Libraries'
					with: [ spec requires: #('Bootstrap-Jasny-Canvas') ];
				package: 'Bootstrap-Widget-Components'
					with: [ spec requires: #('Bootstrap-Widget-Libraries') ];
				package: 'bootstrap-widget'
					with: [ spec requires: #('Bootstrap-Widget-Components') ];
				package: 'Bootstrap-Examples-Core'
					with: [ spec requires: #('bootstrap-widget') ];
				package: 'Bootstrap-Examples-Core'
					with: [ spec requires: #('bootstrap-widget') ];
				package: 'Bootstrap-Examples-Jasny'
					with: [ spec requires: #('Bootstrap-Examples-Core') ];
				package: 'Bootstrap-Examples-Browser'
					with: [ spec requires: #('Bootstrap-Examples-Jasny') ];
				package: 'Bootstrap-Examples-Widgets-Components'
					with: [ spec requires: #('Bootstrap-Examples-Browser') ];
				package: 'Bootstrap-Examples-Widgets-Canvas'
					with: [ spec requires: #('Bootstrap-Examples-Widgets-Components') ];
				package: 'Bootstrap-Examples-Widgets-Table'
					with: [ spec requires: #('Bootstrap-Examples-Widgets-Canvas') ];
				package: 'Bootstrap-Examples-Widgets-VerticalTab'
					with: [ spec requires: #('Bootstrap-Examples-Widgets-Table') ];
				package: 'RSS-Core-Model'
					with: [ spec requires: #('Bootstrap-Examples-Widgets-VerticalTab') ];
				package: 'RSS-Core-Tags'
					with: [ spec requires: #('RSS-Core-Model') ];
				package: 'RSS-Core' with: [ spec requires: #('RSS-Core-Tags') ] ]
]