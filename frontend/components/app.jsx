import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import Modal from './modal/modal';
import NavContainer from './nav/nav_container';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import UserProfileContainer from './profile/user_profile_container';
import BoardIndexContainer from './board/board_index_container';
import BoardShowContainer from './board/board_show_container';
import HomeContainer from './home/home_container';
import { AuthRoute, ProtectedRoute, RedirectIfLoggedOut } from '../util/route_util';


const App = ({store}) => (
  <div>
    <Modal />
    <nav>
      <NavContainer />
    </nav>
    <Switch>
      <AuthRoute exact path="/login" component={Modal}/>
      <AuthRoute exact path="/signup" component={Modal}/>
      <Route path="/users/:id" component={UserProfileContainer} />

      <ProtectedRoute exact path="/" component={HomeContainer} />

      <Route path="/boards/:id" component={BoardShowContainer} />
      <Redirect to="/" />
    </Switch>
  </div>
);

export default App;
