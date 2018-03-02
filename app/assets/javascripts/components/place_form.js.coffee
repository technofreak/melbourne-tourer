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
			className: 'form-horizontal'
			onSubmit: @handleSubmit
			React.DOM.div
				className: 'form-group'
				React.DOM.div
					className: 'col-sm-10'
					React.DOM.label
						className: 'col-sm-2 control-label'
						'Name of the Place'
					React.DOM.div
						className: 'col-sm-8'
						React.DOM.input
							type: 'text'
							className: 'form-control'
							placeholder: 'Name'
							name: 'name'
							value: @state.name
							onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.div
					className: 'col-sm-10'
					React.DOM.label
						className: 'col-sm-2 control-label'
						'Address'
					React.DOM.div
						className: 'col-sm-8'
						React.DOM.input
							type: 'textarea'
							className: 'form-control'
							placeholder: 'Address'
							name: 'address'
							value: @state.address
							onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.div
					className: 'col-sm-10'
					React.DOM.label
						className: 'col-sm-2 control-label'
						'Phone Number'
					React.DOM.div
						className: 'col-sm-8'
						React.DOM.input
							type: 'text'
							className: 'form-control'
							placeholder: 'Phone Number'
							name: 'phone_number'
							value: @state.phone_number
							onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.div
					className: 'col-sm-10'
					React.DOM.label
						className: 'col-sm-2 control-label'
						'Website'
					React.DOM.div
						className: 'col-sm-8'
						React.DOM.input
							type: 'text'
							className: 'form-control'
							placeholder: 'Website'
							name: 'website'
							value: @state.website
							onChange: @handleChange
			React.DOM.div
					className: 'col-sm-offset-1 col-sm-1'
				React.DOM.button
					type: 'submit'
					className: 'btn btn-primary'
					disabled: !@valid()
					'Add place'