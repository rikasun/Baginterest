import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router-dom';
import Modal from '../modal/modal';

class BoardIndex extends React.Component{

  constructor(props) {
    super(props);

  }


  componentDidMount(){
    this.props.fetchUserBoards(this.props.match.params.id);
  }

  render(){
      return (
        <div>
          <button onClick={() => this.props.openModal("createBoard")}>Create Board</button>
          <div>{this.props.boards.map(board => board.boardName)}</div>
        </div>
      );
  }
}

export default withRouter(BoardIndex);
