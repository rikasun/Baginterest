import React from "react";
import { fetchAllPins } from "../../actions/pin_actions";

class PinShow extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchAllPins;
  }
  render() {
    
    return (
     <div className="pin-show">Hello!</div>
     )
   }
}

export default PinShow;
