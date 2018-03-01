# app/assets/javascript/components/place.js.coffee

@Place = React.createClass
	render: ->
		React.DOM.tr null,
			React.DOM.td null, @props.place.name
			React.DOM.td null, @props.place.address
			React.DOM.td null, @props.place.phone_number
			React.DOM.td null, @props.place.website