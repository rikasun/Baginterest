import React from 'react';
import { Link } from 'react-router-dom';
import SearchBar from "./search_bar";



const Nav = ({ currentUser, logout, openModal, history, modal }) => {

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
  const personalGreeting = (openModal, closeModal) => <div className="nav-bar">
      <div>
        <Link to="/">
          <i className="fab fa-pinterest fa-nav" />
        </Link>
      </div>

      <div className="search-bar">
        <i className="fas fa-search fa-search-icon" />
        
        <SearchBar openModal={openModal} closeModal={closeModal} />
      
        {/* <input className="search-bar-content" type="search" placeholder="Search" /> */}
      </div>

      <Link className="user-name" to={`/users/${currentUser.id}`}>
        <img className="nav-profile" src={url} alt="user profile link" />
        <div className="nav-displayname">
          {currentUser.username || currentUser.email.split("@")[0]}
        </div>
      </Link>

      <div className="hamburger">
        <button className="logout-button" onClick={() => logout().then(() =>
              history.push("/login")
            )}>
          Log Out
        </button>
      </div>
    </div>;

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Nav;
