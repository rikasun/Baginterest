import React from 'react';
import { Link, withRouter } from 'react-router-dom';
// import Form from './form'

class PinIndex extends React.Component{

  constructor(props) {
    super(props);

  }


  componentDidMount(){
    this.props.fetchUserPins(this.props.match.params.id);
  }

  render(){
      return (
        <div className="pin-display">
          <div className="create-board-box"onClick={() => this.props.openModal("createPin")}>
            <div className="plus-sign-box"><i className="fas fa-plus-circle plus-sign"></i></div>
            <div className="create-board-text">Create Pin</div>
          </div>
          {this.props.pins.map(pin =>
            <div className="single-pin">
              <img className="pin-photo" src={pin.photoUrl}/>
            </div>
          )}
        </div>
      )
  }
}

export default withRouter(PinIndex);
