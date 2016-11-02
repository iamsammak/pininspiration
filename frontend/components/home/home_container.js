import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';

// probably createBoard action
// create Pin action

import Home from './home';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
  // createBoard: {},
  // createPin: {},
  // fetchBoards: {}
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
