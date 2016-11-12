import { connect } from 'react-redux';
import { updatePin, deletePin } from '../../actions/pin_actions';
import SearchPins from './search_pins';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  pins: state.pins.pins,
  pin: state.pins.pin
});


const mapDispatchToProps = dispatch => ({
  updatePin: pin => dispatch(updatePin(pin)),
  deletePin: id => dispatch(deletePin(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchPins);
