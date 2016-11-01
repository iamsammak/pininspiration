import merge from 'lodash/merge';
import { RECEIVE_CURRENT_USER,
         RECEIVE_ERRORS,
         LOGOUT} from '../actions/session_actions';

const _nullUser = Object.freeze({
  currentUser: null,
  errors: []
});

const SessionReducer = (state = _nullUser, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
// _nullUser clears errors then currentUser replaces currentUser: null
      return merge({}, _nullUser, {currentUser});
    case LOGOUT:
// clears both errors and current User
      return merge({}, _nullUser);
    case RECEIVE_ERRORS:
      const errors = action.errors;
// _nullUser clears currentUser setting currentUser to null
// errors are set to action.errors by merging {errors}
      return merge({}, _nullUser, {errors});
    default:
      return state;
  }
};

export default SessionReducer;
