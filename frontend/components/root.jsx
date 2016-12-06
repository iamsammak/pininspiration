import React from 'react';
import { Provider } from 'react-redux';

import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// components
import App from './app';
import SessionFormContainer from './session_form/session_form_container';
import HomeContainer from './home/home_container';
import UserContainer from './user/user_container';
import PinsContainer from './pin/pins_container';
import UserPinsContainer from './pin/user_pins_container';
import BoardsContainer from './board/boards_container';
import BoardContainer from './board/board_container';
import FollowersContainer from './follow/followers_container';
import FollowingContainer from './follow/following_container';
import SearchPinContainer from './pin/search_pin_container';


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
        <Route path="/" component={ App } >
          <IndexRoute component={ HomeContainer }
                      onEnter={_ensureLoggedIn}/>
          <Route path="/login" component={ SessionFormContainer }
                               onEnter={_redirectIfloggedIn}/>
          <Route path="/signup" component={ SessionFormContainer }
                              onEnter={_redirectIfloggedIn}/>
          <Route path="/" component={ HomeContainer }
                          onEnter={_ensureLoggedIn}>
            <Route path="search" component={ SearchPinContainer } />
            <Route path="pins" component={PinsContainer} />
            <Route path="boards/:boardId" component={ BoardContainer } />
            <Route path=":username" component={ UserContainer }>
              <IndexRoute component={ BoardsContainer } />
              <Route path="boards" component={ BoardsContainer } />
              <Route path="pins" component={ UserPinsContainer } />
              <Route path="followers" component={ FollowersContainer } />
              <Route path="following" component={ FollowingContainer } />
            </Route>
          </Route>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
