import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { fetchSearchPins } from '../../actions/pin_actions';

import Nav from './nav';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  fetchSearchPins: keyword => dispatch(fetchSearchPins(keyword))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Nav);
