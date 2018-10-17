import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';
import Dropzone from 'react-dropzone';
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
    let data = new FormData();
    data.append("pin[url]", this.state.url);
    data.append("pin[description]", this.state.description);
    data.append("pin[photo]", this.state.photo);
    this.props.createPin(data).then(this.props.closeModal);
  }

  componentWillUnmount(){
    // this.props.receiveBoardErrors([])
  }

  onDrop(files) {
    let file = files[0];
    let reader = new FileReader();
    reader.onloadend = () => {
      this.setState({
        photo: file,
        photoUrl: reader.result
      });
    }

    reader.readAsDataURL(file);
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

                <Dropzone className="pin-dropzone" onDrop={this.onDrop.bind(this)}>

                  <img className="dropzone-preview" src={this.state.photoUrl} />

                </Dropzone>
                
          <div className="camera"><i className="fas fa-camera"></i></div>

          <div className="dropzone-text">
            <div>Drag and drop or <br/>click to upload</div>
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
