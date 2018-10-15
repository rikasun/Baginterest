import React from 'react';
import { Link } from 'react-router-dom';


class PinIndex extends React.Component{

  constructor(props) {
    super(props);

  }


  componentDidMount(){
    this.props.fetchUserPins();
  }

  render(){
      return (
        <h4>Pins go here!</h4>
      )
  }
}

export default PinIndex;
