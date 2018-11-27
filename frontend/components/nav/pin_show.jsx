import React from "react";

class PinShow extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount(){
    this.props.fetchAllPins;
  }
  render() {
    
    return (
     <div className="pin-show">This is the search result</div>
     )
   }
}

export default PinShow;
