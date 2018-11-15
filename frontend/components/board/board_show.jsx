import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import Masonry from 'react-masonry-css';
import BounceLoading from '../spinner';

class BoardShow extends React.Component{

  constructor(props) {
    super(props);
    // this.renderItems = this.renderItems.bind(this);
    this.state = {loading: true}

    setTimeout(() => this.setState({loading:false}), 2000);
    // this.deleteHandle = this.deleteHandle.bind(this);
  }


  componentDidMount(){
    this.props.fetchBoard(this.props.match.params.id);
    // this.props.fetchPinBoards();
  }

  // deleteHandle(id) {
  //   this.props.deletePinFromBoard(id);
  //   this.setState({loading: true});
  //   // this.setState({loading: false});
  //   setTimeout(() => this.setState({ loading: false }), 1000);
  //   // this.props.fetchPinBoards
  // }
  // componentDidUpdate(prevProps) {
  //   if (this.props.pinBoards !== prevProps.pinBoards) {
  //     this.props.fetchPinBoards();
  //   }r t
  // }


  render(){

    let masonryOptions = {
      transitionDuration: 0,
      gutter: 20
    };
    if (this.props.pins === undefined) return '';

    let pins = this.props.pins.map(pin => <div className="gallery-item">
        <button onClick={() => 
        {this.props.deletePinFromBoard(pin.id);
          this.props.fetchPinBoards();
        }} className="delete-button">
          Delete
        </button>
        <img className="pin-photo" src={pin.photoUrl} />
      </div>);

  // let url = this.props.user.profileUrl || "https://s3-us-west-1.amazonaws.com/bagquest-pro/profile/profile.png";

    if (this.props.board === undefined || this.state.loading) {
      return <BounceLoading state={this.state} />
    };

    return (
      <div>
          <div className="board-name-show">
            {this.props.board.boardName}
          </div>

        <div className="pin-display">
          <Masonry
              breakpointCols={4}
              className={'my-gallery-class-home'}
              columnClassName={"gallery-column"}
            >
              {pins}
          </Masonry>
        </div>
    </div>
    )
  }

  // renderItems() {
  //   if (this.props.pins === undefined) return '';
  //   //  debugger
  //   let pins = this.props.pins.map(pin =>
  //     <div className="gallery-item">
      
  //         <button
  //         onClick={() => this.deleteHandle(pin.id)}
  //           className="delete-button"
  //           >Delete
  //             </button>

  //       <img className="pin-photo" src={pin.photoUrl}/>
  //     </div>
  //   );
    

  //   return pins;
  // }

}

export default withRouter(BoardShow);
