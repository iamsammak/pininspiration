// LOGIN LOGOUT SIGNUP

// actions  - actions objects
import { receiveCurrentUser,
         receiveUser,
         receiveErrors,
         LOGIN,
         LOGOUT,
         SIGNUP,
         FETCH_USER } from '../actions/session_actions';

// from api utils, the ajax requests
import { login, signup, logout, fetchUser } from '../util/session_api_util';

const SessionMiddleware = ({getState, dispatch}) => next => action => {
  const successCallback = user => dispatch(receiveCurrentUser(user));

  const successUserCallback = user => dispatch(receiveUser(user));
  // will need to add fetchBoards here


  // const errorCallback = error => dispatch(receiveErrors(error.responseJSON));
  // xhr
  const errorCallback = xhr => dispatch(receiveErrors(xhr.responseJSON));
  console.log(action);

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

    default:
      return next(action);
  }
};

export default SessionMiddleware;
