import React from 'react';
import {withRouter } from 'react-router-dom';
import Masonry from 'react-masonry-css';
import BounceLoading from '../spinner';
import { SSL_OP_EPHEMERAL_RSA } from 'constants';

class Home extends React.Component {
  constructor(props) {
    super(props);
    this.state = { 
      boardName:'',
      boardId: 1, 
      loading: true, 
    };
      setTimeout(() => this.setState({ loading: false }), 1000);
    this.handleBoardSubmit = this.handleBoardSubmit.bind(this);
    this.handleSelect = this.handleSelect.bind(this);
    this.handleClick = this.handleClick.bind(this)
  }

  componentDidMount() {
    this.props.fetchUserBoards(this.props.currentuserId);
    this.props.fetchAllPins();
  }

  handleSelect(e) {
    if (e.target.value === "Add new board...") {
      this.props.openModal('createBoard');      
    } else {
      this.setState({ ['boardId']: e.currentTarget.value });
    }  
  }

  handleBoardSubmit(){
    // e.preventDefault();
    let board = {};
    board.board_name = this.state.boardName;
    this.props.createBoard(board).then(() => this.props.closeModal());
    
  }
  
  handleClick(id1, id2, e){
    e.preventDefault();
    this.props.addPinToBoard(id1, id2);
    console.log(e.currentTarget.textContent)
    // debugger
    if (e.currentTarget.textContent === 'Save') {
      e.currentTarget.textContent = 'Saved';
      // setTimeout((e) => e.currentTarget.textContent = 'Save', 1000)
      // e.currentTarget.textContent = 'Save';
    
    }
  }
  update(field) {
    return e =>
      this.setState({
        [field]: e.currentTarget.value
      });
  }

  renderItems() {


    let pins = this.props.pins.map(pin => <div className="gallery-item">
  
        <div className="save-selector">
          <select className="dropdown-selector" 
          onChange={this.handleSelect}>
            <option value="" selected={this.state.boardId ? "selected" : ""} disabled>
              Please select
            </option>
            <option selected="" onClick={this.openModal}>
              Add new board...
            </option>

            {this.props.boards.map((board, idx) => (
              <option key={idx} value={board.id}>
                {board.boardName}
              </option>
            ))}
          </select>

          <button onClick={(e)=> this.handleClick(this.state.boardId, pin.id, e)} className="save-button">
            Save
          </button>
        </div>

        <img className="pin-photo" src={pin.photoUrl} />
      </div>);

    return pins;
  }

  render() {
    if (this.state.loading) {
      return <BounceLoading state={this.state} />;
    }
    console.log(this.props)
    return (
      <div className="pin-display">
        <Masonry
          breakpointCols={4}
          className={"my-gallery-class-home"}
          columnClassName={"gallery-column"}
        >
          {this.renderItems()}
        </Masonry>
      </div>
    );
  }
}

export default withRouter(Home);
