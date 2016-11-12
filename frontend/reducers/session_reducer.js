import {merge} from 'lodash';

import { RECEIVE_CURRENT_USER,
         RECEIVE_USER,
         RECEIVE_ERRORS,
         LOGOUT} from '../actions/session_actions';

const _nullUser = {
  currentUser: null,
  user: {},
  errors: []
};

const SessionReducer = (state = _nullUser, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return merge({}, state, {currentUser});

    case RECEIVE_USER:
      const newState = merge({}, {currentUser: state.currentUser}, {user: action.user});
      return newState;

    case LOGOUT:
      return merge({}, _nullUser);

    case RECEIVE_ERRORS:
      const errors = action.errors;
      return merge({}, _nullUser, {errors});

    default:
      return state;
  }
};

export default SessionReducer;
