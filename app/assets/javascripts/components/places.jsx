/* jshint esversion: 6 */

class Places extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      places: props.data
    };
    this.addPlace = this.addPlace.bind(this);

    this.listPlaces = this.listPlaces.bind(this)
  }

  addPlace(place) {
    console.log("called addPlace")
    //let new_places = this.state.places.slice();
    //new_places.push(place);
    this.setState((prevState, props) => {
      let copy_state = prevState.places.slice();
      copy_state.push(place);
      return {places: copy_state}
    });
    console.log("after...")
    console.log(this.state.places)
  }

  listPlaces() {
    return this.state.places.map((place) =>
      <Place key={place.id} place={place} />
    );
  }

  render() {
    return (
      <div className='places'>
        <h2 className="title">Places</h2>
        <PlaceForm 
          handleNewPlace={this.addPlace}
        />
        <hr/>
        <div className='container-fluid'>
          <div className='row'>
            {this.listPlaces()}
          </div>
        </div>
      </div>
    );
  }
}
Places.defaultProps = {places: []};