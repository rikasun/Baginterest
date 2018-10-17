import React from 'react';
import { Link } from 'react-router-dom';



const Nav = ({ currentUser, logout, openModal, history, modal }) => {
  // let url = currentUser.profileUrl || "https://s3-us-west-1.amazonaws.com/bagquest-dev/VTcR7xgf9bmBUBogucw5Kt7L";
  let url = "https://s3-us-west-1.amazonaws.com/bagquest-pro/profile/profile.png";
  const sessionLinks = () => {
    if (modal === 'signup') {
      return (
        <nav className="login-signup">
          <button className="corner-login-button" onClick={() => history.push('/login')}>Log in</button>
        </nav>
      );
    } else {
      return (
        <div></div>
      )
    }
  };
  const personalGreeting = () => (
    <div className="nav-bar">

      <div><Link to="/"><i className="fab fa-pinterest fa-nav"></i></Link></div>

      <div className="search-bar">
        <i className="fas fa-search fa-search-icon"></i>
        <input className="search-bar-content" type="search" placeholder="Search"/>
      </div>

      <div className="user-name">
        <Link to={`/users/${currentUser.id}`}>{<img className="nav-profile" src={url} alt="user profile link"/>}</Link>
        <div className="nav-displayname">
          {currentUser.username||currentUser.email.split("@")[0]}
        </div>
      </div>

      <div className="hamburger">
        <button className="logout-button" onClick={()=>logout().then(() => history.push('/login'))}>Log Out</button>
      </div>

    </div>

  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Nav;
