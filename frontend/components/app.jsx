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
import GreetingContainer from './greeting/greeting_container';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import UserProfileContainer from './profile/user_profile_container';
import { AuthRoute, ProtectedRoute, RedirectIfLoggedOut } from '../util/route_util';

const Empty = () => <div />
const App = ({store}) => (
  <div>
    <Modal />
    <nav>
      <GreetingContainer />
    </nav>
    <Switch>
      <AuthRoute exact path="/login" component={Modal}/>
      <AuthRoute exact path="/signup" component={Modal}/>
      <Route path="/users/:userId" component={UserProfileContainer} />
      <ProtectedRoute exact path="/" component={Empty} />

      <Redirect to="/" />
    </Switch>
  </div>
);

export default App;
