
// This file is an automatically generated and should not be edited

'use strict';

const options = [{"name":"rvalue","title":"r","type":"Number","default":0},{"name":"DVsd","title":"sd","type":"Number","default":0}];

const view = function() {
    
    this.handlers = { }

    View.extend({
        jus: "3.0",

        events: [

	]

    }).call(this);
}

view.layout = ui.extend({

    label: "correlation to r",
    jus: "3.0",
    type: "root",
    stage: 0, //0 - release, 1 - development, 2 - proposed
    controls: [
		{
			type: DefaultControls.Label,
			typeName: 'Label',
			label: "DV",
			margin: "none"
		},
		{
			type: DefaultControls.LayoutBox,
			typeName: 'LayoutBox',
			style: "inline",
			margin: "large",
			controls: [
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "DVsd",
					format: FormatDef.number
				}
			]
		},
		{
			type: DefaultControls.Label,
			typeName: 'Label',
			label: "rvalue",
			margin: "none"
		},
		{
			type: DefaultControls.LayoutBox,
			typeName: 'LayoutBox',
			margin: "large",
			controls: [
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "rvalue",
					format: FormatDef.number
				}
			]
		}
	]
});

module.exports = { view : view, options: options };
