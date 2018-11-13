import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import Masonry from 'react-masonry-css';
import BounceLoading from '../spinner';
import CreateBoard from '../board/create_board';

class Home extends React.Component{

  constructor(props) {
    super(props);
    this.state = {
      boardId: 1,
      loading:true
    }

    setTimeout(() => this.setState({loading:false}), 2000);
  }


  componentDidMount(){
    this.props.fetchAllPins();
    this.props.fetchUserBoards(this.props.currentuserId);
  }


  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  renderItems() {
    let pins = this.props.pins.map(pin =>
      <div className="gallery-item">
          <div className="save-selector">
            <select
              className="dropdown-selector"
              onChange={this.update('boardId')}>
              {/* <CreateBoard /> */}
              {this.props.boards.map((board, idx)=>
                (<option
                  key={idx}
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

    return pins;
  }

  render(){
    let masonryOptions = {
      transitionDuration: 0,
      gutter: 20
    };

    if (this.state.loading) {
      return <BounceLoading state={this.state} />
    };
    return (
      <div className="pin-display">
        <Masonry
            breakpointCols={4}
            className={'my-gallery-class-home'}
            columnClassName={"gallery-column"}
          >
            {this.renderItems()}
        </Masonry>
      </div>
    )
  }
}

export default withRouter(Home);
