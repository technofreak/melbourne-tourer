class Place extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div className='card col-xs-4'>
                <h4 className='card-header'>:: {this.props.place.name}</h4>
                <p className='card-address'>{this.props.place.address}</p>
                <p className='card-phone_number'>{this.props.place.phone_number}</p>
                <p className='card-website'>{this.props.place.website}</p>
            </div>
        );
    }
}