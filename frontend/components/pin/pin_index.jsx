import React from 'react';
import { Link, withRouter } from 'react-router-dom';


class PinIndex extends React.Component{

  constructor(props) {
    super(props);

  }


  componentDidMount(){
    this.props.fetchUserPins(this.props.match.params.id);
  }

  render(){
      return (
        <div>
          {this.props.pins.map(pin => pin.authorId)}
        </div>
      )
  }
}

export default withRouter(PinIndex);
