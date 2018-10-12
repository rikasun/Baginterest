import React from 'react';
import { Link } from 'react-router-dom';



const Greeting = ({ currentUser, logout, openModal, history, modal }) => {
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
      <div><i class="fab fa-pinterest fa-nav"></i></div>
      <div className="search-bar">  <input className="search-bar-content" type="text" placeholder="Search"/></div>
      <div className="user-name">link to user-profile:{currentUser.email.split("@")[0]}</div>
      <div className="hamburger">
        <button className="logout-button" onClick={()=>logout("login").then(() => history.push('/login'))}>Log Out</button>
      </div>
    </div>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
