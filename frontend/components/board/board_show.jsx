import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import Masonry from 'react-masonry-css';
import BounceLoading from '../spinner';

class BoardShow extends React.Component{

  constructor(props) {
    super(props);
    this.state = {loading: true}
    setTimeout(() => this.setState({loading:false}), 2000);
    this.handleDelete = this.handleDelete.bind(this);
  }


  componentDidMount(){
    this.props.fetchBoard(this.props.match.params.id);
  }

  handleDelete(id) {
    setTimeout(() => this.props.deletePinFromBoard(id), 500)
    setTimeout(() => this.props.fetchBoard(this.props.match.params.id), 1000)
    setTimeout(() => this.setState({loading: false}), 1500);
    this.setState({ loading: true });
  }


  render(){

    // let masonryOptions = {
    //   transitionDuration: 0,
    //   gutter: 20
    // };
    if (this.props.pins === undefined) return '';

    let pins = this.props.pins.map(pin => <div className="gallery-item">
        <button onClick={() => 
        {this.handleDelete(pin.id);}}   
         className="delete-button">
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
}

export default withRouter(BoardShow);
