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
        <div className="board-display">
          <div className="create-board-box" onClick={() => this.props.openModal("createBoard")}>
            <div className="plus-sign-box"><i className="fas fa-plus-circle plus-sign"></i></div>
            <div className="create-board-text">Create board</div>
          </div>
          {this.props.boards.map(board =>
            <div className="single-board">
              <div className="board-preview"></div>
              <div className="board-name">{board.boardName}</div>
            </div>
          )}
        </div>
      );
  }
}

export default withRouter(BoardIndex);
