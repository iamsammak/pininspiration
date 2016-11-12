// signup: should make an AJAX request that creates a new user.
export const login = (user, success, error) => {
  $.ajax({
    method: 'POST',
    url: '/api/session',
    data: user,
    success,
    error
  });
};

// login: should make an AJAX request that creates a new session.
export const signup = (user, success, error) => {
  $.ajax({
    method: 'POST',
    url: '/api/users',
    data: user,
    success,
    error
  });
};

// logout: should make an AJAX request that deletes the current session.
export const logout = (success) => {
  $.ajax({
    method: 'DELETE',
    url: '/api/session',
    success,
    error: () => console.log("Logout error in SessionApiUtil#logout")
  });
};

export const fetchUser = function(username, success, error){
  $.ajax({
    method: 'GET',
    url: `/api/users/${username}`,
    success,
    error
  });
};

// will need followUser, unfollowUser
export const followUser = function(userId, success, error){
	$.ajax({
		method: 'POST',
		url: `/api/follow`,
		data: {user_id: userId},
		success,
		error
	});
};

export const unfollowUser = function(userId, success, error){
	$.ajax({
		method: 'DELETE',
		url: `/api/follow`,
		data: {user_id: userId},
		success,
		error
	});
};
