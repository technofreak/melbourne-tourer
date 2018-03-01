# app/assets/javascript/components/places.js.coffee

@Places = React.createClass
	getInitialState: ->
		places: @props.data
	
	getDefaultProps: ->
		places: []
	
	addPlace: (place) ->
		places = @state.places.slice()
		places.push place
		@setState places: places
	
	render: ->
		React.DOM.div
			className: 'places'
			React.DOM.h2
				className: 'title'
				'Places'
			React.createElement PlaceForm, handleNewPlace: @addPlace
			React.DOM.hr null
			React.DOM.table
				className: 'table table-bordered'
				React.DOM.thead null,
				React.DOM.tr null,
					React.DOM.th null, 'Place'
					React.DOM.th null, 'Address'
					React.DOM.th null, 'Phone Number'
					React.DOM.th null, 'Website'
				React.DOM.tbody null,
					for place in @state.places
						React.createElement Place, key: place.id, place: place