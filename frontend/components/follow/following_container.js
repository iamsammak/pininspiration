import { connect } from 'react-redux';
import Following from './following';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  user: state.session.user
});

// no mapDispatchToProps

export default connect(
  mapStateToProps
)(Following);
