import { connect } from 'react-redux';
import Followers from './followers';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  user: state.session.user
});

// no mapDispatchToProps

export default connect(
  mapStateToProps
)(Followers);
