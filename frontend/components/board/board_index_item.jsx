import React from 'react';
import { withRouter } from 'react-router-dom';
import Masonry from 'react-masonry-css';

class BoardIndexItem extends React.Component{
  constructor(props) {
    super(props);
    this.renderItems = this.renderItems.bind(this);
  }

  componentDidMount(){
    this.props.fetchBoard(this.props.match.params.id);
  }

  render(){   
    if (this.props.board[0] === undefined) return "";
    return (
        <div className="preview-pin-display">
          <Masonry
              breakpointCols={4}
              className={'my-gallery-class-preview'}
              columnClassName={"gallery-column"}
            >
              {this.renderItems()}
          </Masonry>
        </div>
    )
  }

  renderItems() {
    if (this.props.pins === undefined) return '';
    let pins = this.props.pins.map(pin =>
      <div className="gallery-item-preview">
        <img className="pin-photo-preview" src={pin.photoUrl}/>
      </div>
    );

    return pins;
  }

}

export default withRouter(BoardIndexItem);
