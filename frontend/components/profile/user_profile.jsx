import React from 'react';
import { Link } from 'react-router-dom';


class UserProfile extends React.Component{

  constructor(props) {
    super(props);

  }


  componentDidMount(){
    this.props.fetchUser(this.props.match.params.id)
  }

  render(){

    if (!this.props.user) return "";
    return (
      <div>{this.props.user.email}
      </div>
    )
  }
}

export default UserProfile;
