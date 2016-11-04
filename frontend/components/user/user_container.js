import { connect } from 'react-redux';
import { logout, fetchUser } from '../../actions/session_actions';
import User from './user';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  user: state.session.user,
  boards: state.boards.boards,
  pins: state.pins
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  fetchUser: username => dispatch(fetchUser(username))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(User);
