import React from 'react';
import { Provider } from 'react-redux';

// react router methods
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// components
import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import HomeContainer from './home/home_container';

const Root = ({ store }) => {

  const _redirectIfloggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (!currentUser) {
      replace('/login');
    }
  };

  return(
    <Provider store={store}>
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>
            <IndexRoute component={ HomeContainer }
              onEnter={_ensureLoggedIn}/>
            <Route path="login"
                   component={ SessionFormContainer }
                   onEnter={_redirectIfloggedIn} />
            <Route path="signup"
                   component={ SessionFormContainer }
                   onEnter={_redirectIfloggedIn} />
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
