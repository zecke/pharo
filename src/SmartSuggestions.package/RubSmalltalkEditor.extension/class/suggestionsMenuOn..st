*SmartSuggestions
suggestionsMenuOn: aBuilder
	<RubSmalltalkCodeMenu>
	aBuilder
		item: 'Suggestions...';
		selector: #value;
		target: [ SugsMenuBuilder showMenuFor: aBuilder model ];
		keyText: 't ';
		order: 0;
		iconName: #smallAuthoringTools;
		with: [ SugsMenuBuilder buildContextMenuOn: aBuilder ]