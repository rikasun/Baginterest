import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
} from 'react-router-dom';

import Modal from './modal/modal';
import NavContainer from './nav/nav_container';
import UserProfileContainer from './profile/user_profile_container';
import BoardShowContainer from './board/board_show_container';
import PinShowContainer from './nav/pin_show_container';
import HomeContainer from './home/home_container';
import { AuthRoute, ProtectedRoute, RedirectIfLoggedOut } from '../util/route_util';


const App = () => (
  <div>
    <Modal />
    <header>
      <NavContainer />
    </header>
    <Switch>
      <AuthRoute exact path="/login" component={Modal}/>
      <AuthRoute exact path="/signup" component={Modal}/>
      <Route path="/users/:id" component={UserProfileContainer} />

      <ProtectedRoute exact path="/" component={HomeContainer} />
      <Route path="/boards/:id" component={BoardShowContainer} />
      <Route path="/pins/:id" component={PinShowContainer}/>
      <Redirect to="/" />
    </Switch>
  </div>
);

export default App;
