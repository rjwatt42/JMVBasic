
// This file is an automatically generated and should not be edited

'use strict';

const options = [{"name":"rsqr","title":"Cox and Snell R^2","type":"Number","default":0}];

const view = function() {
    
    this.handlers = { }

    View.extend({
        jus: "3.0",

        events: [

	]

    }).call(this);
}

view.layout = ui.extend({

    label: "logistic regression to r",
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
					name: "rsqr",
					format: FormatDef.number
				}
			]
		}
	]
});

module.exports = { view : view, options: options };
