import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link,
} from 'react-router-dom';
import BoardIndexContainer from '../board/board_index_container'
import PinIndexContainer from '../pin/pin_index_container'

class UserProfile extends React.Component{

  constructor(props) {
    super(props);
  }

  componentDidMount(){
    this.props.fetchUser(this.props.match.params.id);
  }

  render(){
    if (!this.props.user) return "";
    let url = this.props.user.profileUrl || "https://s3-us-west-1.amazonaws.com/bagquest-pro/profile/profile.png"
    return (
      <div>
        <div className="profile">

          <div className="name-photo">
            <div className="user-displayname">
              {this.props.user.username || this.props.user.email.split("@")[0]}
            </div>
            <div>
              <Link  to={`/users/${this.props.user.id}/boards`}>{<img className="user-photo" src={url} alt="user profile link"/>}</Link>
            </div>
          </div>

          <div className="user-tabs">
            <Link className="user-board-text" to={`/users/${this.props.user.id}/boards`}>Boards</Link>
            <br/>
            <Link className="user-pin-text" to={`/users/${this.props.user.id}/pins`}>Pins</Link>
          </div>

        </div>
        <Switch>
          <Route
            path="/users/:id/boards"
            render={(props) => <BoardIndexContainer {...props} user={this.props.user}/>} />
          <Route
            path="/users/:id/pins"
            render={(props) => <PinIndexContainer {...props} user={this.props.user}/>} />
          <Redirect to="/users/:id/boards"/>
        </Switch>
      </div>
    )
  }
}

export default UserProfile;
