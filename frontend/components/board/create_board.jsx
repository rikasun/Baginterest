import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';
class CreateBoard extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.board;
    this.handleSubmit = this.handleSubmit.bind(this);

  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  componentDidMount(){
    this.props.fetchUserBoards(this.props.match.params.id);
  }

  handleSubmit(e) {
    e.preventDefault();
    let board = {};
    board.board_name = this.state.boardName;
    this.props.createBoard(board).then(this.props.closeModal);
  }

  componentWillUnmount(){
    // this.props.receiveBoardErrors([])
  }

  renderErrors() {
    return(
     <ul className="errors">
       {this.props.errors.map((error, i) => (
         <li key={`error-${i}`}>
           {error}
         </li>
       ))}
     </ul>
    );
  }

    render() {
      return (
        <div>
          <form onSubmit={this.handleSubmit}>
            <div className="create-board">Create Board</div>
            <div onClick={this.props.closeModal} className="close-x"><i className="fas fa-times"></i></div>
            <div className="create-board-content" >
              <label className="create-board-label">Name
                <input type="text"
                  placeholder="Like 'handbags to buy'"
                  onChange={this.update('boardName')}
                  className="create-board-input" / >
              </label>
            </div>
            <input type="submit" value="Create" className="create-button"/>
            <button className="cancel-button" onClick={this.props.closeModal}>Cancel</button>
          </form>
        </div>
      )

    }
}

export default withRouter(CreateBoard);
