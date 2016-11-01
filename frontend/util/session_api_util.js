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

// Testing on chrome console dev tools
// $.ajax({
//     method: 'POST',
//     url: '/api/users',
//     data: {user: {username: "name", password: "password"}},
//     success: () => console.log("success"),
//     error: () => console.log("error")
//   });
