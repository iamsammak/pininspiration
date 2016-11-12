export const LOGIN = "LOGIN";
export const LOGOUT = "LOGOUT";
export const SIGNUP = "SIGNUP";

export const FETCH_USER = "FETCH_USER";
export const RECEIVE_USER = "RECEIVE_USER";

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const FOLLOW_USER = "FOLLOW_USER";
export const UNFOLLOW_USER = "UNFOLLOW_USER";


export const login = user => ({
  type: LOGIN,
  user
});

export const signup = user => ({
  type: SIGNUP,
  user
});

export const logout = () => ({
  type: LOGOUT
});

export const fetchUser = username => ({
  type: FETCH_USER,
  username
});

export const receiveUser = user => ({
  type: RECEIVE_USER,
  user
});

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

// errors will come in as an array
export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

export const followUser = id => ({
  type: FOLLOW_USER,
  id
});

export const unfollowUser = id => ({
  type: UNFOLLOW_USER,
  id
});
