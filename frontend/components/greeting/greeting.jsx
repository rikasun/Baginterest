import React from 'react';
import { Link } from 'react-router-dom';



const Greeting = ({ currentUser, logout, openModal, history }) => {
  const sessionLinks = () => (
    <nav className="login-signup">
      <button className="corner-login-button" onClick={() => history.push('/login')}>Log in</button>

    </nav>
  );
  const personalGreeting = () => (
    <hgroup className="header-group">
      <h2 className="header-name">Hi, {currentUser.email.split("@")[0]}!</h2>
      <button className="header-button" onClick={()=>logout("login")}>Log Out</button>
    </hgroup>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
