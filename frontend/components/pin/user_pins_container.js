import { connect } from 'react-redux';
import { fetchUserPins, updatePin, deletePin } from '../../actions/pin_actions';
import UserPins from './user_pins';

const mapStateToProps = (state, ownProps) => {
  return (
    { currentUser: state.session.currentUser,
    user: state.session.user,
    pins: state.pins.pins,
    pin: state.pins.pin
  });
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return ({
    fetchUserPins: (userId) => dispatch(fetchUserPins(userId)),
    updatePin: (pin) => dispatch(updatePin(pin)),
    deletePin: (id) => dispatch(deletePin(id))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UserPins);
