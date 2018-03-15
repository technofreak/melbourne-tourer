/* jshint esversion: 6 */

class PlaceForm extends React.Component {
    constructor(props) {
        super(props);
        this.initial_state =  {
            name: "",
            address: "",
            phone_number: "",
            website: "",
            category: "",
            plus_code: "",
            operating_hour: "",
            best_visiting_time: "",
            how_to_reach_ptv: "",
        };
        this.state = this.initial_state;
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    isValid() {
        return this.state.name && this.state.address;
    }

    handleChange(e) {
        this.setState({
            [e.target.name]: e.target.value
        });
    }
  

    handleSubmit(e) {
        e.preventDefault();
        console.log(this.props.handleNewPlace);
        $.post("", {place: this.state},
            (data) => {
                this.props.handleNewPlace(data);
                this.setState(this.initial_state);
            }, "JSON");
    }

    render() {
        return (
            <form 
                className='form-horizontal'
                onSubmit={this.handleSubmit}>
                <div className='form-group'>
                    <div className='col-sm-10'>
                        <label className='col-sm-2 control-label'>
                Name of the Place 
                        </label>
                        <div className='col-sm-8'>
                            <input type='text' 
                                className='form-control' 
                                placeholder='Name'
                                name='name'
                                value={this.state.name}
                                onChange={this.handleChange}
                            />
                        </div>
                    </div>
                </div>
                <div className='form-group'>
                    <div className='col-sm-10'>
                        <label className='col-sm-2 control-label'>
                Address 
                        </label>
                        <div className='col-sm-8'>
                            <input type='text' 
                                className='form-control' 
                                placeholder='Address'
                                name='address'
                                value={this.state.address}
                                onChange={this.handleChange}
                            />
                        </div>
                    </div>
                </div>
                <div className='form-group'>
                    <div className='col-sm-offset-1 col-sm-1'>
                        <button type='submit' className='btn btn-primary' disabled={!this.isValid}>Add Place</button>
                    </div>
                </div>
            </form>
        );
    }
}