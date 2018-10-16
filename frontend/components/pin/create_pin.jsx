import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';
class CreatePin extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.pin;
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createPin(this.state).then(this.props.closeModal);
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
            <div className="create-pin">Create Pin</div>
            <div onClick={this.props.closeModal} className="close-x"><i className="fas fa-times"></i></div>

        <div className="create-pin-content">
          <div className="create-pin-content-left">
            <div className="pin-dropzone">

              <div className="camera"><i className="fas fa-camera"></i></div><br/>
              <div className="dropzone-text">
                Drag and drop or <br/>click to upload</div>
              </div>


          </div>

          <div className="create-pin-content-right">
            <label className="pin-website-label">Website
              <br/>
              <input type="text"
                className="pin-website-input"
                placeholder="Add the URL this Bag links to"
                onChange={this.update('url')}/>
            </label>
              <br/>
              <br/>
            <label className="pin-description-label">Description
              <br/>
              <textarea type="text"
                placeholder="Say more about this bag"
                onChange={this.update('description')}
                className="pin-description-input" ></textarea>
            </label>
          </div>

        </div>


           <input type="submit" className="done-button" value="Done"/>

          </form>

        </div>
      )

    }
}

export default withRouter(CreatePin);
