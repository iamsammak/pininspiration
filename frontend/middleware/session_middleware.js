import { receiveCurrentUser,
         receiveUser,
         receiveErrors,
         LOGIN,
         LOGOUT,
         SIGNUP,
         FETCH_USER,
         FOLLOW_USER,
         UNFOLLOW_USER } from '../actions/session_actions';

import { fetchBoards } from '../actions/board_actions';

import { login,
         signup,
         logout,
         fetchUser,
         followUser,
         unfollowUser } from '../util/session_api_util';

const SessionMiddleware = ({getState, dispatch}) => next => action => {
  const successCallback = user => {
    dispatch(receiveCurrentUser(user));
    dispatch(fetchBoards(user.id));
  };

  const successUserCallback = user => {
    dispatch(receiveUser(user));
    dispatch(fetchBoards(user.id));
  };

  const errorCallback = xhr => dispatch(receiveErrors(xhr.responseJSON));

  switch(action.type) {
    case LOGIN:
      login(action.user, successCallback, errorCallback);
      return next(action);

    case LOGOUT:
      logout(() => next(action));
      break;

    case SIGNUP:
      signup(action.user, successCallback, errorCallback);
      return next(action);

    case FETCH_USER:
      fetchUser(action.username, successUserCallback, errorCallback);
      return next(action);

    case FOLLOW_USER:
      followUser(action.id, successUserCallback, errorCallback);
      return next(action);

    case UNFOLLOW_USER:
      unfollowUser(action.id, successUserCallback, errorCallback);
      return next(action);

    default:
      return next(action);
  }
};

export default SessionMiddleware;
