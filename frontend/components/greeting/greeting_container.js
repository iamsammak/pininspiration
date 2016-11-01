// If the user is logged in, then the Greeting should contain:
//
// A welcome message including the user's username
// A button to logout
// If the user is not logged in, then the Greeting should contain:
//
// A <Link to> /#/signup
// A <Link to> /#/login

import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import Greeting from './greeting';

const mapStateToProps = ({ session }) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
