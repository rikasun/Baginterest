import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';
class CreateBoard extends React.Component {
  constructor(props) {
    super(props);

  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
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

        <div>New Board</div>
      )

    }
}

export default withRouter(CreateBoard);
