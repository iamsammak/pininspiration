// // If the user is logged in, then the Greeting should contain:
//
// A welcome message including the user's username
// A button to logout
// If the user is not logged in, then the Greeting should contain:
//
// A <Link to> /#/signup
// A <Link to> /#/login


import React from 'react';
import { Link } from 'react-router';

const titleCase = (string) => {
  return string.charAt(0).toUpperCase() + string.slice(1);
};

const personalGreeting = (currentUser, logout) => (
  <section className="header-group">
    <h2 className="header-name"
      >What it be? What it is? What it do? {titleCase(currentUser.username)}!</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
  </section>
);

const sessionLinks = () => (
  <nav>
    <Link to="/login">Login</Link>
    &nbsp;<span>or</span>&nbsp;
    <Link to="/signup">Sign Up</Link>
  </nav>
);

// if currentUser isn't null aka logged in then personal greeting
// if not then links to signup and login
// props, dispatch
const Greeting = ({ currentUser, logout }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
);

export default Greeting;
