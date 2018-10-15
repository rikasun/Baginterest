import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';


class BoardIndex extends React.Component{

  constructor(props) {
    super(props);

  }


  componentDidMount(){
    this.props.fetchUserBoards(this.props.match.params.id);
  }

  render(){
      return (
        <div>{this.props.boards.map(board => board.boardName)}</div>
      );
  }
}

export default withRouter(BoardIndex);
