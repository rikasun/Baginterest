import React from 'react';
import { Link } from 'react-router-dom';
import Search from "./search";
import lifecycle from 'react-pure-lifecycle';



const Nav = ({
  currentUser,
  logout,
  history,
  modal,
  pins,
  fetchAllPins,
}) => {
  let url =
    "https://s3-us-west-1.amazonaws.com/bagquest-pro/profile/profile.png";
  const sessionLinks = () => {
    if (modal === "signup") {
      return (
        <nav className="login-signup">
          <button
            className="corner-login-button"
            onClick={() => history.push("/login")}
          >
            Log in
          </button>
        </nav>
      );
    } else {
      return <div />;
    }
  };

  
  

 
  const personalGreeting = () => (
    <nav>
      <ul className="nav-bar">
        <li>
          <Link to="/">
            <i className="fab fa-pinterest fa-nav" />
          </Link>
        </li>

        {/* <div className="search-bar">
        <i className="fas fa-search fa-search-icon" /> */}

        <li>
          <Search pins={pins} />
        </li>

        {/* <input className="search-bar-content" type="search" placeholder="Search" /> */}
        {/* </div> */}

        <li>
          <Link className="user-name" to={`/users/${currentUser.id}`}>
            <img className="nav-profile" src={url} alt="user profile link" />
            <div className="nav-displayname">
              {currentUser.username || currentUser.email.split("@")[0]}
            </div>
          </Link>
        </li>

        <li>
          <button
            className="logout-button"
            onClick={() => logout().then(() => history.push("/login"))}
          >
            Log Out
          </button>
        </li>
      </ul>
    </nav>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};

const methods = {
  componentDidMount(props) {
    props.fetchAllPins;
  }
};


export default lifecycle(methods)(Nav);
