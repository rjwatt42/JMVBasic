
// This file is an automatically generated and should not be edited

'use strict';

const options = [{"name":"group1sz","title":"n","type":"Number","default":0},{"name":"group2sz","title":"n","type":"Number","default":0},{"name":"chisqr","title":"chisqr","type":"Number","default":0}];

const view = function() {
    
    this.handlers = { }

    View.extend({
        jus: "3.0",

        events: [

	]

    }).call(this);
}

view.layout = ui.extend({

    label: "chisquare to r",
    jus: "3.0",
    type: "root",
    stage: 0, //0 - release, 1 - development, 2 - proposed
    controls: [
		{
			type: DefaultControls.LayoutBox,
			typeName: 'LayoutBox',
			margin: "large",
			controls: [
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "chisqr",
					format: FormatDef.number
				}
			]
		},
		{
			type: DefaultControls.Label,
			typeName: 'Label',
			label: "DV-Group 1",
			margin: "none",
			controls: [
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "group1sz",
					format: FormatDef.number
				}
			]
		},
		{
			type: DefaultControls.Label,
			typeName: 'Label',
			label: "DV-Group 2",
			margin: "none",
			controls: [
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "group2sz",
					format: FormatDef.number
				}
			]
		}
	]
});

module.exports = { view : view, options: options };
