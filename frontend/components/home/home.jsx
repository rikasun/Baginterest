import React from 'react';
import {withRouter } from 'react-router-dom';
import Masonry from 'react-masonry-css';
import BounceLoading from '../spinner';

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

  handleBoardSubmit(e){
    // e.preventDefault();
    let board = {};
    board.board_name = this.state.boardName;
    this.props.createBoard(board).then(() => this.props.closeModal());
    
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

          <button onClick={() => this.props.addPinToBoard(this.state.boardId, pin.id)} className="save-button">
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
