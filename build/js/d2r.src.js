
// This file is an automatically generated and should not be edited

'use strict';

const options = [{"name":"group1sz","title":"n","type":"Number","default":0},{"name":"group1mn","title":"mean","type":"Number","default":0},{"name":"group1sd","title":"sd","type":"Number","default":0},{"name":"group2sz","title":"n","type":"Number","default":0},{"name":"group2mn","title":"mean","type":"Number","default":0},{"name":"group2sd","title":"sd","type":"Number","default":0}];

const view = function() {
    
    this.handlers = { }

    View.extend({
        jus: "3.0",

        events: [

	]

    }).call(this);
}

view.layout = ui.extend({

    label: "t-test to r",
    jus: "3.0",
    type: "root",
    stage: 0, //0 - release, 1 - development, 2 - proposed
    controls: [
		{
			type: DefaultControls.Label,
			typeName: 'Label',
			label: "Group 1",
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
					name: "group1sz",
					format: FormatDef.number
				},
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "group1mn",
					format: FormatDef.number
				},
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "group1sd",
					format: FormatDef.number
				}
			]
		},
		{
			type: DefaultControls.Label,
			typeName: 'Label',
			label: "Group 2",
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
					name: "group2sz",
					format: FormatDef.number
				},
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "group2mn",
					format: FormatDef.number
				},
				{
					type: DefaultControls.TextBox,
					typeName: 'TextBox',
					name: "group2sd",
					format: FormatDef.number
				}
			]
		}
	]
});

module.exports = { view : view, options: options };
