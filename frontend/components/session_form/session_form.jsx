import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';
class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.user;
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state).then(this.props.closeModal);
  }

  renderErrors() {
    return(
      <ul>
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
              Welcome to Bagquest
              <br/>
              Find new ideas for bags
              <br/>

              {this.renderErrors()}
              <div className="login-form">
                <br/>

                  <input type="text"
                    placeholder="Email"
                    value={this.state.email}
                    onChange={this.update('email')}
                    className="session-submit"
                    />

                <br/>


                  <input placeholder="Create a password"
                    type="password"
                    value={this.state.password}
                    onChange={this.update('password')}
                    className="session-submit"
                    />

                <br/>


                  <input placeholder="Age"
                    type="number"
                    value={this.state.age}
                    onChange={this.update('age')}
                    className="session-submit"
                    />

                <br/>
                <input className="session-submit" type="submit" value="continue" />
              </div>
              <Link to="/login">Already a member? Log in</Link>
            </form>
          </div>
        )
      } else {
        return (
          <div className="login-form-container">
            <form onSubmit={this.handleSubmit} className="login-form-box">
              Welcome Back
              <br/>

              {this.renderErrors()}
              <div className="login-form">
                <br/>

                  <input type="text"
                    placeholder="Email"
                    value={this.state.email}
                    onChange={this.update('email')}
                    className="session-submit"
                    />

                <br/>


                  <input placeholder="Password"
                    type="password"
                    value={this.state.password}
                    onChange={this.update('password')}
                    className="session-submit"
                    />

                <br/>
                <input className="session-submit" type="submit" value="continue" />
              </div>
              <Link to="/signup">Need an account? Sign up now</Link>
            </form>
          </div>
        )

      }
    }
}

export default withRouter(SessionForm);
