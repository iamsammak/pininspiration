// LOGIN LOGOUT SIGNUP

// actions  - actions objects
import { receiveCurrentUser,
         receiveErrors,
         LOGIN,
         LOGOUT,
         SIGNUP } from '../actions/session_actions';

// from api utils, the ajax requests
import { login, signup, logout } from '../util/session_api_util';

const SessionMiddleware = ({getState, dispatch}) => next => action => {
  const successCallback = user => dispatch(receiveCurrentUser(user));
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
    default:
      return next(action);
  }
};

export default SessionMiddleware;
