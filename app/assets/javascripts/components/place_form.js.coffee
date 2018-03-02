# app/assets/javascript/components/place_form.js.coffee

@PlaceForm = React.createClass
	getInitialState: ->
		'name': ''
		'address': ''
		'phone_number': ''
		'website': ''

	valid: ->
		@state.name && @state.address
	
	handleChange: (e) ->
		name = e.target.name
		@setState "#{ name }": e.target.value
	
	handleSubmit: (e) ->
		e.preventDefault()
		$.post '', { place: @state }, (data) =>
			@props.handleNewPlace data
			@setState @getInitialState()
			'JSON'
	
	render: ->
		React.DOM.form
			className: 'form-inline'
			onSubmit: @handleSubmit
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Name'
					name: 'name'
					value: @state.name
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'textarea'
					className: 'form-control'
					placeholder: 'Address'
					name: 'address'
					value: @state.address
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Phone Number'
					name: 'phone_number'
					value: @state.phone_number
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Website'
					name: 'website'
					value: @state.website
					onChange: @handleChange
			React.DOM.button
				type: 'submit'
				className: 'btn btn-primary'
				disabled: !@valid()
				'Add place'