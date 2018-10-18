import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import Masonry from 'react-masonry-css';

class PinIndex extends React.Component{

  constructor(props) {
    super(props);
    this.state = {
      boardId: 1,
    }
  }


  componentDidMount(){
    this.props.fetchUserPins(this.props.match.params.id);
    this.props.fetchUserBoards(this.props.currentuserId);
  }


  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  renderItems() {
    let createPin = [
      <div className="gallery-item">
        <div className="create-pin-box"onClick={() => this.props.openModal("createPin")}>
          <div className="plus-sign-box"><i className="fas fa-plus-circle plus-sign"></i></div>
          <div className="create-board-text">Create Pin</div>
        </div>
      </div>
    ];

    let pins = this.props.pins.map(pin =>
      <div className="gallery-item">
          <div className="save-selector">
            <select
              className="dropdown-selector"
              onChange={this.update('boardId')}>
              {this.props.boards.map(board=>
                (<option
                  value={board.id}>
                  {board.boardName}
                </option>))}
              </select>

              <button
                onClick={()=>this.props.addPinToBoard(this.state.boardId, pin.id)}
                className="save-button"
                >Save
              </button>
          </div>

          <img className="pin-photo" src={pin.photoUrl}/>

      </div>
    );

    return createPin.concat(pins);
  }

  render(){

    let masonryOptions = {
      transitionDuration: 0,
      gutter: 20
    };

    return (
      <div className="pin-display">
        <Masonry
            breakpointCols={3}
            className={'my-gallery-class'}
            columnClassName={"gallery-column"}
          >
            {this.renderItems()}
        </Masonry>
      </div>
    )
  }
}

export default withRouter(PinIndex);
