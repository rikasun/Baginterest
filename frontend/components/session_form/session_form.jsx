import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';
class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.user;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemoSubmit = this.handleDemoSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  componentWillUnmount(){
    this.props.receiveErrors([])
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state).then(this.props.closeModal);
  }

  handleDemoSubmit(e) {
    e.preventDefault();
    this.props.processForm({ email:'demo@gmail.com', password:'demo25'}).then(this.props.closeModal);
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

      if (this.props.formType === "signup") {

        return (
          <div className="login-form-container">
            <form onSubmit={this.handleSubmit} className="login-form-box">
               <h2 className="session-header1">Welcome to Bagquest</h2>
               <h4 className="session-header2">Find new ideas for bags</h4>

              {this.renderErrors()}
              <div className="login-form">


                  <input type="text"
                    placeholder="Email"
                    value={this.state.email}
                    onChange={this.update('email')}
                    className="session-input"
                    />

                <br/>


                  <input placeholder="Create a password"
                    type="password"
                    value={this.state.password}
                    onChange={this.update('password')}
                    className="session-input"
                    />

                <br/>


                  <input placeholder="Age"
                    type="number"
                    value={this.state.age}
                    onChange={this.update('age')}
                    className="session-input"
                    />

                <br/>
                <input className="session-submit" type="submit" value="Continue" />
              </div>
              <div className="redirect-link"><Link className="link-style" to="/login">Already a member? Log in</Link></div>
            </form>
          </div>
        )
      } else {
        return (
          <div className="login-form-container">
            <form onSubmit={this.handleSubmit} className="login-form-box">
              <h2 className="session-header1">Welcome back</h2>
              <h4 className="session-header2">Login to see more</h4>


              {this.renderErrors()}
              <div className="login-form">

                  <input type="text"
                    placeholder="Email"
                    value={this.state.email}
                    onChange={this.update('email')}
                    className="session-input"
                    />

                <br/>


                  <input placeholder="Password"
                    type="password"
                    value={this.state.password}
                    onChange={this.update('password')}
                    className="session-input"
                    />

                <br/>
                <input className="session-submit" type="submit" value="Log in" />


                <input onClick={this.handleDemoSubmit} className="session-submit" type="submit" value="Demo" />
              </div>

              <div className="redirect-link"><Link className="link-style" to="/signup">Need an account? Sign up now</Link></div>

            </form>
          </div>
        )

      }
    }
}

export default withRouter(SessionForm);
