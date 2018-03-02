# app/assets/javascript/components/place.js.coffee

@Place = React.createClass
	render: ->
		# React.DOM.tr null,
		# 	React.DOM.td null, @props.place.name
		# 	React.DOM.td null, @props.place.address
		# 	React.DOM.td null, @props.place.phone_number
		# 	React.DOM.td null, @props.place.website
		React.DOM.div
			className: 'card col-xs-4'
			React.DOM.h4
				className: 'card-header'
				@props.place.name
			React.DOM.p
				className: 'card-address'
				@props.place.address
			React.DOM.p
				className: 'card-phone_number'
				@props.place.phone_number
			React.DOM.a
				className: 'card-website'
				href: @props.place.website
				@props.place.website
			