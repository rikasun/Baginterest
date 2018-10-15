import React from 'react';
import { Link } from 'react-router-dom';


class BoardIndex extends React.Component{

  constructor(props) {
    super(props);

  }


  componentDidMount(){
    this.props.fetchUserBoards();
  }

  render(){
      return (
        <h4>Boards come here!</h4>
      )
  }
}

export default BoardIndex;
